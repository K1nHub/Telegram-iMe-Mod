.class public Lorg/telegram/messenger/LocationController;
.super Lorg/telegram/messenger/BaseController;
.source "LocationController.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;
.implements Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/LocationController$LocationFetchCallback;,
        Lorg/telegram/messenger/LocationController$FusedLocationListener;,
        Lorg/telegram/messenger/LocationController$GpsLocationListener;,
        Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    }
.end annotation


# static fields
.field private static final BACKGROUD_UPDATE_TIME:I = 0x7530

.field private static final FASTEST_INTERVAL:J = 0x3e8L

.field private static final FOREGROUND_UPDATE_TIME:I = 0x4e20

.field private static volatile Instance:[Lorg/telegram/messenger/LocationController; = null

.field private static final LOCATION_ACQUIRE_TIME:I = 0x2710

.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field private static final SEND_NEW_LOCATION_TIME:I = 0x7d0

.field private static final UPDATE_INTERVAL:J = 0x3e8L

.field private static final WATCH_LOCATION_TIMEOUT:I = 0xfde8

.field private static callbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/messenger/LocationController$LocationFetchCallback;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apiClient:Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;

.field private cacheRequests:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private cachedNearbyChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_peerLocated;",
            ">;"
        }
    .end annotation
.end field

.field private cachedNearbyUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_peerLocated;",
            ">;"
        }
    .end annotation
.end field

.field private fusedLocationListener:Lorg/telegram/messenger/LocationController$FusedLocationListener;

.field private gpsLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

.field private lastKnownLocation:Landroid/location/Location;

.field private lastLocationByMaps:Z

.field private lastLocationSendTime:J

.field private lastLocationStartTime:J

.field private lastReadLocationTime:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private locationEndWatchTime:J

.field private locationManager:Landroid/location/LocationManager;

.field private locationRequest:Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;

.field private locationSentSinceLastMapUpdate:Z

.field public locationsCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private lookingForPeopleNearby:Z

.field private networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

.field private passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

.field private requests:Landroid/util/SparseIntArray;

.field private servicesAvailable:Ljava/lang/Boolean;

.field private shareMyCurrentLocation:Z

.field private sharingLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocationController$SharingLocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sharingLocationsMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/messenger/LocationController$SharingLocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sharingLocationsMapUI:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/messenger/LocationController$SharingLocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sharingLocationsUI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocationController$SharingLocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z

.field private wasConnectedToPlayServices:Z


# direct methods
.method public static synthetic $r8$lambda$2olREc7xd85KecF_VquUi23FsRo(Lorg/telegram/messenger/LocationController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$loadSharingLocations$15(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3WixQrJ7v1JaK8JivMRatPkE37c(Lorg/telegram/messenger/LocationController;ILorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->lambda$saveSharingLocation$19(ILorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Du5l0zv1ky9xzSBET-zIjMEPcY(Lorg/telegram/messenger/LocationController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->lambda$removeAllLocationSharings$23(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6lpgmYLnP2wV1fgRZswhIcP0kGA(Lorg/telegram/messenger/LocationController;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->lambda$removeSharingLocation$22(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$8aQdiWP_lMi1AOJ92hM_CcJJOGQ(Landroid/location/Location;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$fetchLocationAddress$31(Landroid/location/Location;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AVT9cebwo9F4bBJw_cfwrcdwA4Y(Lorg/telegram/messenger/LocationController;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocationController;->lambda$loadLiveLocations$28(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BmlCbhmBtGL9IcJnRcZ_yqGK3_s(Lorg/telegram/messenger/LocationController;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/LocationController;->lambda$setProximityLocation$13(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$BnISLYwRKSe8VQ_j-0xnvXGbDZc(Lorg/telegram/messenger/LocationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$startFusedLocationRequest$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$CHJpa-qOx-5rJUko8dPubMEMMic(Lorg/telegram/messenger/LocationController;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$onConnected$4(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GNassgYkyLaMxIWwc49jJzr_T8s(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$broadcastLastKnownLocation$6(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NG9iEa42n0exQNb95CRh4yxBOF4(Lorg/telegram/messenger/LocationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$startLocationLookupForPeopleNearby$26(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$OV2u2XG_nEJdCOye7Wzr5GslwAI(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$removeSharingLocation$21(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PZgDCC64iwzCPypP0uXju_SnfsE(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;[ILorg/telegram/tgnet/TLRPC$TL_messages_editMessage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/LocationController;->lambda$broadcastLastKnownLocation$7(Lorg/telegram/messenger/LocationController$SharingLocationInfo;[ILorg/telegram/tgnet/TLRPC$TL_messages_editMessage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0Az989RIVOOCOET5R3sZ5Vijao(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->lambda$loadSharingLocations$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$S9-C9HJjitTDPHItiZm3w_8uiIg(Lorg/telegram/messenger/LocationController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->lambda$removeSharingLocation$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TDPf71ZNiwunni0MGyu8Kqqet3E(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->lambda$addSharingLocation$12(Lorg/telegram/messenger/LocationController$SharingLocationInfo;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W35FivV8PW89033c__HHHDb50JM(Lorg/telegram/messenger/LocationController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->lambda$markLiveLoactionsAsRead$29(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WJor6aINl6pLVUVdl5BNGz8KWME(Lorg/telegram/messenger/LocationController;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$onConnected$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WNdbQWULaJdyjlKwKGdmPVZCNhw(Lorg/telegram/messenger/LocationController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/LocationController;->lambda$loadSharingLocations$17(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XKBtFp2ONmRLT8q3aAE4LNBXHT4(Lorg/telegram/messenger/LocationController;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$onConnected$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YYyhyUtmbK3mvCYnbql0_Ge2j6s(Lorg/telegram/messenger/LocationController;JLorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/LocationController;->lambda$loadLiveLocations$27(JLorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_knCceK4LVC_v5T6UXIVOuP8d1k(Lorg/telegram/messenger/LocationController;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->setLastKnownLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bvyQPppgsDGjtoy6WPEMkoXjp90(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$d-GqDjYlGDrIzURrUgpqaoHaSng(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$broadcastLastKnownLocation$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$daU4m3PUORsGezi-acfPem5N6hk(Lorg/telegram/messenger/LocationController$LocationFetchCallback;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/LocationController;->lambda$fetchLocationAddress$30(Lorg/telegram/messenger/LocationController$LocationFetchCallback;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jOjo2E6X1nuGfG_i7Imfsw4jYSM(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->lambda$setProximityLocation$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$jrVMNy132783ZO_3DA3uDbDrFIU(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->lambda$removeAllLocationSharings$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$p0HepFOrVUr6d8rLYCqQrymIQoU(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$update$9(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sBQ0ISjA9c65nOsUV79F6MakmT0()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/LocationController;->lambda$setLastKnownLocation$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$t2bySfcCfGoARY5REwBYrHf0Nto(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->lambda$onConnected$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$tUHZ8LDh_vq4vPd12EJJ0aVDz_k(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->lambda$removeAllLocationSharings$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$vMjC9UXnowvOTdmA6Sv2MGUPtZc(Lorg/telegram/messenger/LocationController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->lambda$loadSharingLocations$16(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xW2ELj4HmqK2n1NgSd4azB6WEaA(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->lambda$cleanup$10()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/LocationController;

    .line 82
    sput-object v0, Lorg/telegram/messenger/LocationController;->Instance:[Lorg/telegram/messenger/LocationController;

    .line 1003
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/LocationController;->callbacks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 153
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 41
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    .line 43
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    .line 44
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->lastReadLocationTime:Landroidx/collection/LongSparseArray;

    .line 46
    new-instance p1, Lorg/telegram/messenger/LocationController$GpsLocationListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/LocationController$GpsLocationListener;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$1;)V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->gpsLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    .line 47
    new-instance p1, Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/LocationController$GpsLocationListener;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$1;)V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    .line 48
    new-instance p1, Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/LocationController$GpsLocationListener;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$1;)V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    .line 49
    new-instance p1, Lorg/telegram/messenger/LocationController$FusedLocationListener;

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/LocationController$FusedLocationListener;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$1;)V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->fusedLocationListener:Lorg/telegram/messenger/LocationController$FusedLocationListener;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lorg/telegram/messenger/LocationController;->locationSentSinceLastMapUpdate:Z

    .line 56
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    .line 57
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroidx/collection/LongSparseArray;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    .line 64
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->cachedNearbyUsers:Ljava/util/ArrayList;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->cachedNearbyChats:Ljava/util/ArrayList;

    .line 155
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    .line 156
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0, p0}, Lorg/telegram/messenger/ILocationServiceProvider;->onCreateLocationServicesAPI(Landroid/content/Context;Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;)Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->apiClient:Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;

    .line 158
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/messenger/ILocationServiceProvider;->onCreateLocationRequest()Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->locationRequest:Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;

    const/4 v0, 0x0

    .line 159
    invoke-interface {p1, v0}, Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;->setPriority(I)V

    .line 160
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->locationRequest:Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;

    const-wide/16 v0, 0x3e8

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;->setInterval(J)V

    .line 161
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->locationRequest:Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;->setFastestInterval(J)V

    .line 163
    new-instance p1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 169
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->loadSharingLocations()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/LocationController;)Landroid/location/Location;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/LocationController;)Lorg/telegram/messenger/LocationController$GpsLocationListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/messenger/LocationController;->networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/LocationController;)Lorg/telegram/messenger/LocationController$GpsLocationListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/messenger/LocationController;->passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/LocationController;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/LocationController;Landroid/location/Location;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->setLastKnownLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$702(Lorg/telegram/messenger/LocationController;J)J
    .locals 0

    .line 39
    iput-wide p1, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    return-wide p1
.end method

.method private broadcastLastKnownLocation(Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 355
    iget-object v1, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-nez v1, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    move v1, v2

    .line 360
    :goto_0
    iget-object v3, v0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 361
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_1
    iget-object v1, v0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 366
    :cond_2
    iget-object v1, v0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    .line 367
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    new-array v13, v3, [F

    move v14, v2

    .line 369
    :goto_1
    iget-object v4, v0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_7

    .line 370
    iget-object v4, v0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 371
    iget-object v4, v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-eqz v5, :cond_4

    iget v6, v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->lastSentProximityMeters:I

    iget v7, v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    if-ne v6, v7, :cond_4

    .line 372
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    :goto_2
    sub-int v4, v1, v6

    .line 374
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v6, 0xa

    if-ge v4, v6, :cond_4

    .line 375
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iget-object v4, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    iget-object v4, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide/from16 v10, v16

    move-object v12, v13

    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 376
    aget v4, v13, v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    goto/16 :goto_3

    .line 381
    :cond_4
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 383
    iget v5, v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    .line 384
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 385
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 386
    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->stopped:Z

    .line 387
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 388
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v6, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 389
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v6, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 390
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v6, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->accuracy_radius:I

    .line 391
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->accuracy_radius:I

    if-eqz v7, :cond_5

    .line 392
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->flags:I

    or-int/2addr v7, v3

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->flags:I

    .line 394
    :cond_5
    iget v6, v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->lastSentProximityMeters:I

    iget v7, v15, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    if-eq v6, v7, :cond_6

    .line 395
    iput v7, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->proximity_notification_radius:I

    .line 396
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 398
    :cond_6
    iget-object v6, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-static {v6}, Lorg/telegram/messenger/LocationController;->getHeading(Landroid/location/Location;)I

    move-result v6

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->heading:I

    .line 399
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    new-array v5, v3, [I

    .line 401
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda31;

    invoke-direct {v7, v0, v15, v5, v4}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;[ILorg/telegram/tgnet/TLRPC$TL_messages_editMessage;)V

    invoke-virtual {v6, v4, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v4

    aput v4, v5, v2

    .line 439
    iget-object v4, v0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    aget v5, v5, v2

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 442
    :cond_7
    iget-boolean v1, v0, Lorg/telegram/messenger/LocationController;->shareMyCurrentLocation:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-eqz v1, :cond_8

    .line 443
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v1, Lorg/telegram/messenger/UserConfig;->lastMyLocationShareTime:I

    .line 445
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 447
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getLocated;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getLocated;-><init>()V

    .line 448
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getLocated;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 449
    iget-object v5, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 450
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getLocated;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v5, v0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 451
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getLocated;->background:Z

    .line 452
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda32;->INSTANCE:Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda32;

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 456
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 457
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/LocationController;->shouldStopGps()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lorg/telegram/messenger/LocationController;->shareMyCurrentLocation:Z

    if-eqz v1, :cond_a

    .line 458
    :cond_9
    iput-boolean v2, v0, Lorg/telegram/messenger/LocationController;->shareMyCurrentLocation:Z

    .line 459
    invoke-direct {v0, v2}, Lorg/telegram/messenger/LocationController;->stop(Z)V

    :cond_a
    return-void
.end method

.method private checkServices()Z
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->servicesAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 349
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/ILocationServiceProvider;->checkServices()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->servicesAvailable:Ljava/lang/Boolean;

    .line 351
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->servicesAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static fetchLocationAddress(Landroid/location/Location;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1008
    :cond_0
    sget-object v0, Lorg/telegram/messenger/LocationController;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1010
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1011
    sget-object v0, Lorg/telegram/messenger/LocationController;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x0

    .line 1014
    invoke-interface {p1, p0, p0, p0}, Lorg/telegram/messenger/LocationController$LocationFetchCallback;->onLocationAddressAvailable(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V

    return-void

    .line 1018
    :cond_2
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda2;-><init>(Landroid/location/Location;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    .line 1122
    sget-object p0, Lorg/telegram/messenger/LocationController;->callbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getHeading(Landroid/location/Location;)I
    .locals 1

    .line 631
    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/16 p0, 0x168

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    float-to-int p0, p0

    return p0
.end method

.method public static getInstance(I)Lorg/telegram/messenger/LocationController;
    .locals 3

    .line 85
    sget-object v0, Lorg/telegram/messenger/LocationController;->Instance:[Lorg/telegram/messenger/LocationController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 87
    const-class v1, Lorg/telegram/messenger/LocationController;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/LocationController;->Instance:[Lorg/telegram/messenger/LocationController;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lorg/telegram/messenger/LocationController;->Instance:[Lorg/telegram/messenger/LocationController;

    new-instance v2, Lorg/telegram/messenger/LocationController;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/LocationController;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    .line 92
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getLocationsCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 994
    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private synthetic lambda$addSharingLocation$12(Lorg/telegram/messenger/LocationController$SharingLocationInfo;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 590
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 592
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    iget-wide v0, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {p1, v0, v1, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 594
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->startService()V

    .line 595
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$broadcastLastKnownLocation$6(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 3

    .line 409
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 411
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 412
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->stopService()V

    .line 414
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$broadcastLastKnownLocation$7(Lorg/telegram/messenger/LocationController$SharingLocationInfo;[ILorg/telegram/tgnet/TLRPC$TL_messages_editMessage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    .line 403
    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "MESSAGE_ID_INVALID"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 404
    iget-object p3, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 405
    iget-object p3, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    iget-wide p4, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {p3, p4, p5}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 406
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    .line 407
    iget-object p3, p0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    aget p2, p2, v1

    invoke-virtual {p3, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 408
    new-instance p2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda20;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 419
    :cond_1
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_2

    .line 420
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$InputMedia;->proximity_notification_radius:I

    iput p2, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->lastSentProximityMeters:I

    .line 422
    :cond_2
    check-cast p4, Lorg/telegram/tgnet/TLRPC$Updates;

    move p2, v1

    move p3, p2

    .line 424
    :goto_0
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p2, p5, :cond_5

    .line 425
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/tgnet/TLRPC$Update;

    .line 426
    instance-of v2, p5, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    if-eqz v2, :cond_3

    .line 428
    iget-object p3, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p5, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    :goto_1
    move p3, v0

    goto :goto_2

    .line 429
    :cond_3
    instance-of v2, p5, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-eqz v2, :cond_4

    .line 431
    iget-object p3, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p5, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    .line 435
    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    .line 437
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p4, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private static synthetic lambda$broadcastLastKnownLocation$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$cleanup$10()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 539
    iput-wide v0, p0, Lorg/telegram/messenger/LocationController;->locationEndWatchTime:J

    .line 540
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 541
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 542
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 543
    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocationController;->setLastKnownLocation(Landroid/location/Location;)V

    const/4 v0, 0x1

    .line 544
    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocationController;->stop(Z)V

    return-void
.end method

.method private static synthetic lambda$fetchLocationAddress$30(Lorg/telegram/messenger/LocationController$LocationFetchCallback;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    .line 1118
    sget-object v0, Lorg/telegram/messenger/LocationController;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    invoke-interface {p0, p1, p2, p3}, Lorg/telegram/messenger/LocationController$LocationFetchCallback;->onLocationAddressAvailable(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method private static synthetic lambda$fetchLocationAddress$31(Landroid/location/Location;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V
    .locals 11

    const-string v0, "Unknown address (%f,%f)"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1022
    :try_start_0
    new-instance v4, Landroid/location/Geocoder;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/LocaleController;->getSystemDefaultLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 1023
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v4

    .line 1024
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_13

    .line 1025
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;

    .line 1029
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1030
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1032
    invoke-virtual {v4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v7

    .line 1033
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1034
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v3

    .line 1037
    :goto_0
    invoke-virtual {v4}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v8

    .line 1038
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1039
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    const-string v7, " "

    .line 1040
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    :cond_1
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v2

    :cond_2
    const-string v8, ", "

    if-nez v7, :cond_6

    .line 1046
    :try_start_1
    invoke-virtual {v4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v9

    .line 1047
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1048
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 1049
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    :cond_3
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    :cond_4
    invoke-virtual {v4}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v9

    .line 1054
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1055
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 1056
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    :cond_5
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    :cond_6
    invoke-virtual {v4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v9

    .line 1062
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1063
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 1064
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    :cond_7
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    :cond_8
    invoke-virtual {v4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v9

    .line 1069
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1070
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_9

    .line 1071
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    :cond_9
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    :cond_a
    invoke-virtual {v4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v9

    .line 1077
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1078
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_b

    .line 1079
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    :cond_b
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    :cond_c
    invoke-virtual {v4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v9

    .line 1084
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 1085
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_d

    .line 1086
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    :cond_d
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    if-nez v7, :cond_12

    .line 1091
    invoke-virtual {v4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v7

    .line 1092
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 1093
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_f

    .line 1094
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    :cond_f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    :cond_10
    invoke-virtual {v4}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v4

    .line 1099
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 1100
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_11

    .line 1101
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    :cond_11
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    :cond_12
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1108
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1110
    :cond_13
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v4

    goto :goto_1

    .line 1113
    :catch_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 1117
    :goto_1
    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, v4, v0, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/LocationController$LocationFetchCallback;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadLiveLocations$27(JLorg/telegram/tgnet/TLObject;)V
    .locals 5

    .line 937
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->delete(J)V

    .line 938
    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 v0, 0x0

    move v1, v0

    .line 939
    :goto_0
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 940
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-nez v2, :cond_0

    .line 941
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/2addr v1, v3

    goto :goto_0

    .line 945
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v4, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 946
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 947
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 948
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 949
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v0

    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p3, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadLiveLocations$28(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p4, :cond_0

    return-void

    .line 936
    :cond_0
    new-instance p4, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda14;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/LocationController;JLorg/telegram/tgnet/TLObject;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadSharingLocations$15(Ljava/util/ArrayList;)V
    .locals 6

    .line 697
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    move v1, v0

    .line 698
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 699
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 700
    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v3, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->startService()V

    .line 703
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadSharingLocations$16(Ljava/util/ArrayList;)V
    .locals 5

    .line 691
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 692
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 693
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 694
    iget-object v2, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    iget-wide v3, v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v2, v3, v4, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    :cond_0
    new-instance v0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/LocationController;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadSharingLocations$17(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    .line 688
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 689
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 690
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda18;

    invoke-direct {p2, p0, p3}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/LocationController;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$loadSharingLocations$18()V
    .locals 12

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 646
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 648
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 649
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 650
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "SELECT uid, mid, date, period, message, proximity FROM sharing_locations WHERE 1"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    .line 651
    :cond_0
    :goto_0
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 652
    new-instance v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    invoke-direct {v6}, Lorg/telegram/messenger/LocationController$SharingLocationInfo;-><init>()V

    .line 653
    invoke-virtual {v5, v7}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    iput-wide v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    const/4 v8, 0x1

    .line 654
    invoke-virtual {v5, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    const/4 v8, 0x2

    .line 655
    invoke-virtual {v5, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    const/4 v8, 0x3

    .line 656
    invoke-virtual {v5, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    const/4 v8, 0x5

    .line 657
    invoke-virtual {v5, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    .line 658
    iget v8, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    iput v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->account:I

    const/4 v8, 0x4

    .line 659
    invoke-virtual {v5, v8}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 661
    new-instance v9, Lorg/telegram/messenger/MessageObject;

    iget v10, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v8, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v11

    invoke-static {v8, v11, v7}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v11

    invoke-direct {v9, v10, v11, v7, v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v9, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 662
    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    invoke-static {v9, v3, v4, v10}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 663
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 665
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    iget-wide v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 667
    iget-wide v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 668
    iget-wide v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 670
    :cond_2
    iget-wide v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 671
    iget-wide v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 672
    iget-wide v8, v6, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 676
    :cond_3
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 677
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ","

    if-nez v5, :cond_4

    .line 678
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v2}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 680
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 681
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-static {v6, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 684
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 686
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 687
    new-instance v3, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, v1, v2, v0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/LocationController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method private synthetic lambda$markLiveLoactionsAsRead$29(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 984
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    if-eqz p2, :cond_0

    .line 985
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    .line 986
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts:I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts_count:I

    const/4 v1, -0x1

    invoke-virtual {p2, v1, v0, v1, p1}, Lorg/telegram/messenger/MessagesController;->processNewDifferenceParams(IIII)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 164
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 166
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 167
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private synthetic lambda$onConnected$1(Ljava/lang/Integer;)V
    .locals 4

    .line 287
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShowPlayServicesAlert:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onConnected$2(Ljava/lang/Integer;)V
    .locals 1

    .line 286
    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->lookingForPeopleNearby:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    :cond_0
    new-instance v0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/LocationController;Ljava/lang/Integer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onConnected$3()V
    .locals 1

    .line 293
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->servicesAvailable:Ljava/lang/Boolean;

    .line 295
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->apiClient:Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;

    invoke-interface {v0}, Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;->disconnect()V

    .line 296
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private synthetic lambda$onConnected$4(Ljava/lang/Integer;)V
    .locals 2

    .line 280
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 285
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/LocationController;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/LocationController;->startFusedLocationRequest(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$removeAllLocationSharings$23(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p2, :cond_0

    return-void

    .line 814
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$removeAllLocationSharings$24()V
    .locals 3

    .line 822
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 823
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 824
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->stopService()V

    .line 825
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeAllLocationSharings$25()V
    .locals 7

    const/4 v0, 0x0

    .line 801
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 802
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 803
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    .line 804
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 805
    iget v1, v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    .line 806
    iget v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 807
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 808
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->stopped:Z

    .line 809
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPointEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPointEmpty;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 810
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {v1, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 817
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 818
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 819
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    .line 820
    invoke-direct {p0, v2}, Lorg/telegram/messenger/LocationController;->stop(Z)V

    .line 821
    new-instance v0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$removeSharingLocation$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p2, :cond_0

    return-void

    .line 764
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$removeSharingLocation$21(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 3

    .line 769
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 770
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 771
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 772
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->stopService()V

    .line 774
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeSharingLocation$22(J)V
    .locals 3

    .line 750
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 751
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-eqz v0, :cond_0

    .line 753
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    .line 754
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {p2, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 755
    iget p2, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    .line 756
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit16 p2, p2, 0x4000

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 757
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    const/4 v1, 0x1

    .line 758
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$InputMedia;->stopped:Z

    .line 759
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPointEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPointEmpty;-><init>()V

    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 760
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {p2, p1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 766
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 767
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    .line 768
    new-instance p1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 776
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 777
    invoke-direct {p0, v1}, Lorg/telegram/messenger/LocationController;->stop(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$saveSharingLocation$19(ILorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 715
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "DELETE FROM sharing_locations WHERE 1"

    invoke-virtual {p1, p2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    if-nez p2, :cond_1

    return-void

    .line 720
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM sharing_locations WHERE uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    return-void

    .line 725
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "REPLACE INTO sharing_locations VALUES(?, ?, ?, ?, ?, ?)"

    invoke-virtual {p1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    .line 726
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 728
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v3, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 729
    iget-object v3, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v2}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 731
    iget-wide v3, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {p1, v1, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 732
    iget v1, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x3

    .line 733
    iget v1, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x4

    .line 734
    iget v1, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x5

    .line 735
    invoke-virtual {p1, v0, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v0, 0x6

    .line 736
    iget p2, p2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    invoke-virtual {p1, v0, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 738
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 739
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 740
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 743
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$setLastKnownLocation$11()V
    .locals 3

    .line 554
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newLocationAvailable:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setProximityLocation$13(IJ)V
    .locals 2

    .line 614
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE sharing_locations SET proximity = ? WHERE uid = ?"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v1, 0x1

    .line 616
    invoke-virtual {v0, v1, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 p1, 0x2

    .line 617
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 618
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 619
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 621
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setProximityLocation$14()V
    .locals 1

    const/4 v0, 0x1

    .line 625
    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocationController;->broadcastLastKnownLocation(Z)V

    return-void
.end method

.method private synthetic lambda$startFusedLocationRequest$5(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 313
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->servicesAvailable:Ljava/lang/Boolean;

    .line 315
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->shareMyCurrentLocation:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->lookingForPeopleNearby:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    .line 318
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/ILocationServiceProvider;->getLastLocation(Landroidx/core/util/Consumer;)V

    .line 319
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationRequest:Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;

    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->fusedLocationListener:Lorg/telegram/messenger/LocationController$FusedLocationListener;

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/ILocationServiceProvider;->requestLocationUpdates(Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 321
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 324
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$startLocationLookupForPeopleNearby$26(Z)V
    .locals 1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 911
    iput-boolean p1, p0, Lorg/telegram/messenger/LocationController;->lookingForPeopleNearby:Z

    if-eqz p1, :cond_0

    .line 913
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->start()V

    goto :goto_0

    .line 914
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 915
    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocationController;->stop(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$update$9(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 3

    .line 490
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 492
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 493
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->stopService()V

    .line 495
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private loadSharingLocations()V
    .locals 2

    .line 643
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V
    .locals 2

    .line 712
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/LocationController;ILorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setLastKnownLocation(Landroid/location/Location;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 549
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    .line 552
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-eqz p1, :cond_1

    .line 554
    sget-object p1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda26;->INSTANCE:Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda26;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private shouldSendLocationNow()Z
    .locals 6

    .line 520
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->shouldStopGps()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 523
    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private shouldStopGps()Z
    .locals 4

    .line 464
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/LocationController;->locationEndWatchTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private start()V
    .locals 7

    .line 846
    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    if-eqz v0, :cond_0

    return-void

    .line 849
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationStartTime:J

    const/4 v0, 0x1

    .line 850
    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    const/4 v1, 0x0

    .line 852
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->checkServices()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 854
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/LocationController;->apiClient:Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;

    invoke-interface {v2}, Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 857
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 862
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/LocationController;->gpsLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 864
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 867
    :goto_1
    :try_start_2
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/LocationController;->networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 869
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 872
    :goto_2
    :try_start_3
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string v2, "passive"

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/LocationController;->passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 874
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 876
    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_2

    .line 878
    :try_start_4
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocationController;->setLastKnownLocation(Landroid/location/Location;)V

    .line 879
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_2

    .line 880
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocationController;->setLastKnownLocation(Landroid/location/Location;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 883
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    return-void
.end method

.method private startService()V
    .locals 4

    .line 788
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/LocationSharingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 791
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private stop(Z)V
    .locals 3

    .line 890
    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->lookingForPeopleNearby:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->shareMyCurrentLocation:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 893
    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    .line 894
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->checkServices()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 896
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/LocationController;->fusedLocationListener:Lorg/telegram/messenger/LocationController$FusedLocationListener;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/ILocationServiceProvider;->removeLocationUpdates(Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V

    .line 897
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->apiClient:Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;

    invoke-interface {v1}, Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 899
    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 902
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->gpsLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    if-eqz p1, :cond_2

    .line 904
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 905
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private stopService()V
    .locals 4

    .line 796
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/LocationSharingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method protected addSharingLocation(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 6

    .line 572
    new-instance v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    invoke-direct {v0}, Lorg/telegram/messenger/LocationController$SharingLocationInfo;-><init>()V

    .line 573
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iput-wide v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    .line 574
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    .line 575
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    iput v2, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    .line 576
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->proximity_notification_radius:I

    iput v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    iput v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->lastSentProximityMeters:I

    .line 577
    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    iput v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->account:I

    .line 578
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 579
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p1

    iget v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    add-int/2addr p1, v1

    iput p1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    .line 580
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    iget-wide v1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {p1, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 581
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v1, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 583
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 585
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-direct {p0, v0, v3}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    .line 587
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    .line 588
    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 530
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 531
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 532
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 533
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 534
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->cachedNearbyUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 535
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->cachedNearbyChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 536
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->lastReadLocationTime:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 537
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->stopService()V

    .line 538
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 12

    .line 175
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_9

    .line 176
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 180
    :cond_0
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 181
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 184
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_2

    return-void

    .line 188
    :cond_2
    aget-object p3, p3, v1

    check-cast p3, Ljava/util/ArrayList;

    move v4, v2

    move v5, v4

    .line 190
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 191
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 192
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v7

    if-eqz v7, :cond_6

    move v5, v2

    .line 195
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 196
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v7

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 198
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v5, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_2
    if-nez v5, :cond_5

    .line 203
    iget-object v5, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move v5, v1

    goto :goto_3

    .line 205
    :cond_6
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoProximityReached;

    if-eqz v7, :cond_7

    .line 206
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    .line 207
    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 208
    invoke-virtual {p0, v6, v7, v2, v2}, Lorg/telegram/messenger/LocationController;->setProximityLocation(JIZ)Z

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    if-eqz v5, :cond_17

    .line 213
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v3, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p3, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 215
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    if-ne p1, p2, :cond_10

    .line 216
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 220
    :cond_a
    iget-object p1, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_17

    .line 221
    aget-object p1, p3, v2

    check-cast p1, Ljava/util/ArrayList;

    .line 222
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const/4 v0, 0x0

    move v1, v2

    .line 224
    :goto_4
    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_f

    .line 225
    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 226
    iget-object v4, v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getChannelId()J

    move-result-wide v4

    goto :goto_5

    :cond_b
    const-wide/16 v4, 0x0

    :goto_5
    cmp-long v4, p2, v4

    if-eqz v4, :cond_c

    goto :goto_6

    .line 230
    :cond_c
    iget v4, v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v0, :cond_d

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    :cond_d
    iget-wide v3, v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    if-eqz v0, :cond_17

    .line 238
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_17

    .line 239
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->removeSharingLocation(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 243
    :cond_10
    sget p2, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    if-ne p1, p2, :cond_17

    .line 244
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 245
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v3

    if-nez v3, :cond_11

    return-void

    .line 248
    :cond_11
    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_12

    return-void

    .line 253
    :cond_12
    aget-object p3, p3, v1

    check-cast p3, Ljava/util/ArrayList;

    move v4, v2

    move v5, v4

    .line 254
    :goto_8
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_16

    .line 255
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    move v7, v2

    .line 256
    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_15

    .line 257
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v8

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_14

    .line 258
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v5

    if-nez v5, :cond_13

    .line 259
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    .line 261
    :cond_13
    iget-object v5, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v7, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_a
    move v5, v1

    goto :goto_b

    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_15
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_16
    if-eqz v5, :cond_17

    .line 269
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v3, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p3, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_17
    :goto_c
    return-void
.end method

.method public getCachedNearbyChats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_peerLocated;",
            ">;"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->cachedNearbyChats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCachedNearbyUsers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_peerLocated;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->cachedNearbyUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 1

    .line 921
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    .locals 1

    .line 604
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    return-object p1
.end method

.method public isSharingLocation(J)Z
    .locals 1

    .line 600
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadLiveLocations(J)V
    .locals 3

    .line 925
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroidx/collection/LongSparseArray;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 929
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;-><init>()V

    .line 930
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/16 v1, 0x64

    .line 931
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;->limit:I

    .line 932
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/LocationController;J)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public markLiveLoactionsAsRead(J)V
    .locals 6

    .line 955
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 958
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 959
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 962
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->lastReadLocationTime:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 963
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    if-eqz v1, :cond_2

    .line 964
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    if-le v1, v2, :cond_2

    return-void

    .line 967
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->lastReadLocationTime:Landroidx/collection/LongSparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 969
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    neg-long p1, p1

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1, p2, v1}, Lorg/telegram/messenger/ChatObject;->isChannel(JI)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 970
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_readMessageContents;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_readMessageContents;-><init>()V

    .line 971
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    .line 972
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_readMessageContents;->id:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 974
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p1

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_readMessageContents;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    goto :goto_2

    .line 977
    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;-><init>()V

    .line 978
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_5

    .line 979
    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;->id:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 983
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {p1, v1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_6
    :goto_3
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lorg/telegram/messenger/LocationController;->wasConnectedToPlayServices:Z

    .line 278
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 279
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationRequest:Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/ILocationServiceProvider;->checkLocationSettings(Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;Landroidx/core/util/Consumer;)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/LocationController;->startFusedLocationRequest(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 306
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    .line 337
    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->wasConnectedToPlayServices:Z

    if-eqz v0, :cond_0

    return-void

    .line 340
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->servicesAvailable:Ljava/lang/Boolean;

    .line 341
    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    .line 343
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->start()V

    :cond_1
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public removeAllLocationSharings()V
    .locals 2

    .line 800
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeSharingLocation(J)V
    .locals 2

    .line 749
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/LocationController;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCachedNearbyUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_peerLocated;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_peerLocated;",
            ">;)V"
        }
    .end annotation

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->cachedNearbyUsers:Ljava/util/ArrayList;

    .line 560
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->cachedNearbyChats:Ljava/util/ArrayList;

    return-void
.end method

.method public setMapLocation(Landroid/location/Location;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 834
    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationByMaps:Z

    const/4 v0, 0x0

    const-wide/16 v1, 0x7530

    if-nez p2, :cond_2

    .line 835
    iget-object p2, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p2

    const/high16 v3, 0x41a00000    # 20.0f

    cmpl-float p2, p2, v3

    if-ltz p2, :cond_1

    goto :goto_0

    .line 838
    :cond_1
    iget-boolean p2, p0, Lorg/telegram/messenger/LocationController;->locationSentSinceLastMapUpdate:Z

    if-eqz p2, :cond_3

    .line 839
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x4e20

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    .line 840
    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->locationSentSinceLastMapUpdate:Z

    goto :goto_1

    .line 836
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    .line 837
    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->locationSentSinceLastMapUpdate:Z

    .line 842
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->setLastKnownLocation(Landroid/location/Location;)V

    return-void
.end method

.method protected setNewLocationEndWatchTime()V
    .locals 4

    .line 468
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 471
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xfde8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/LocationController;->locationEndWatchTime:J

    .line 472
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->start()V

    return-void
.end method

.method public setProximityLocation(JIZ)Z
    .locals 3

    .line 608
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    if-eqz v0, :cond_0

    .line 610
    iput p3, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    .line 612
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p3, p1, p2}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/LocationController;IJ)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    if-eqz p4, :cond_1

    .line 625
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public startFusedLocationRequest(Z)V
    .locals 2

    .line 311
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/LocationController;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startLocationLookupForPeopleNearby(Z)V
    .locals 2

    .line 910
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/LocationController;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected update()V
    .locals 9

    .line 476
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    .line 477
    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/LocationController;->shareMyCurrentLocation:Z

    if-nez v1, :cond_0

    .line 478
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isConfigLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/telegram/messenger/UserConfig;->sharingMyLocationUntil:I

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iget v0, v0, Lorg/telegram/messenger/UserConfig;->lastMyLocationShareTime:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v3, 0xe10

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    .line 479
    iput-boolean v2, p0, Lorg/telegram/messenger/LocationController;->shareMyCurrentLocation:Z

    .line 481
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v0, v1

    .line 482
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 483
    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 484
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    .line 485
    iget v5, v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    if-gt v5, v4, :cond_1

    .line 486
    iget-object v4, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 487
    iget-object v4, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 488
    invoke-direct {p0, v3, v2}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    .line 489
    new-instance v4, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda22;

    invoke-direct {v4, p0, v3}, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/2addr v0, v2

    goto :goto_0

    .line 501
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    if-eqz v0, :cond_5

    .line 502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 503
    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationByMaps:Z

    if-nez v0, :cond_3

    iget-wide v5, p0, Lorg/telegram/messenger/LocationController;->lastLocationStartTime:J

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    cmp-long v0, v5, v7

    if-gtz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->shouldSendLocationNow()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 504
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/messenger/LocationController;->lastLocationByMaps:Z

    .line 505
    iput-boolean v2, p0, Lorg/telegram/messenger/LocationController;->locationSentSinceLastMapUpdate:Z

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7d0

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    .line 507
    :goto_1
    iput-wide v3, p0, Lorg/telegram/messenger/LocationController;->lastLocationStartTime:J

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    .line 509
    invoke-direct {p0, v2}, Lorg/telegram/messenger/LocationController;->broadcastLastKnownLocation(Z)V

    goto :goto_2

    .line 511
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->shareMyCurrentLocation:Z

    if-eqz v0, :cond_8

    .line 512
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->shareMyCurrentLocation:Z

    if-nez v0, :cond_7

    iget-wide v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 513
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationStartTime:J

    .line 514
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->start()V

    :cond_8
    :goto_2
    return-void
.end method
