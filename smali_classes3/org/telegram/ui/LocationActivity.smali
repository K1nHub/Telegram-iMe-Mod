.class public Lorg/telegram/ui/LocationActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "LocationActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;,
        Lorg/telegram/ui/LocationActivity$MapOverlayView;,
        Lorg/telegram/ui/LocationActivity$SearchButton;,
        Lorg/telegram/ui/LocationActivity$LiveLocation;,
        Lorg/telegram/ui/LocationActivity$VenueLocation;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private askWithRadius:I

.field private bitmapCache:[Landroid/graphics/Bitmap;

.field private canUndo:Z

.field private chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

.field private checkBackgroundPermission:Z

.field private checkGpsEnabled:Z

.field private checkPermission:Z

.field private currentMapStyleDark:Z

.field private delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

.field private dialogId:J

.field private emptyImageView:Landroid/widget/ImageView;

.field private emptySubtitleTextView:Landroid/widget/TextView;

.field private emptyTitleTextView:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/LinearLayout;

.field private firstFocus:Z

.field private firstWas:Z

.field private forceUpdate:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

.field private hasScreenshot:Z

.field private hintView:Lorg/telegram/ui/Components/HintView;

.field private initialLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

.field private isFirstLocation:Z

.field private lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

.field private lastPressedMarkerView:Landroid/widget/FrameLayout;

.field private lastPressedVenue:Lorg/telegram/ui/LocationActivity$VenueLocation;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private locationButton:Landroid/widget/ImageView;

.field private locationDenied:Z

.field private locationType:I

.field private map:Lorg/telegram/messenger/IMapsProvider$IMap;

.field private mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

.field private mapViewClip:Landroid/widget/FrameLayout;

.field private mapsInitialized:Z

.field private markAsReadRunnable:Ljava/lang/Runnable;

.field private markerImageView:Landroid/view/View;

.field private markerTop:I

.field private markers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/LocationActivity$LiveLocation;",
            ">;"
        }
    .end annotation
.end field

.field private markersMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/ui/LocationActivity$LiveLocation;",
            ">;"
        }
    .end annotation
.end field

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private moveToBounds:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

.field private myLocation:Landroid/location/Location;

.field private onResumeCalled:Z

.field private otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private overScrollHeight:I

.field private overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private placeMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/LocationActivity$VenueLocation;",
            ">;"
        }
    .end annotation
.end field

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private previousRadius:D

.field private proximityAnimationInProgress:Z

.field private proximityButton:Landroid/widget/ImageView;

.field private proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

.field private proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

.field private scrolling:Z

.field private searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

.field private searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

.field private searchInProgress:Z

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private searchWas:Z

.field private searchedForCustomLocations:Z

.field private searching:Z

.field private shadow:Landroid/view/View;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private undoView:[Lorg/telegram/ui/Components/UndoView;

.field private updateRunnable:Ljava/lang/Runnable;

.field private userLocation:Landroid/location/Location;

.field private userLocationMoved:Z

.field private yOffset:F


# direct methods
.method public static synthetic $r8$lambda$-5SRwHbM1UqT2da8EjAYx6i_Z7Q(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLObject;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LocationActivity;->lambda$getRecentLocations$41(Lorg/telegram/tgnet/TLObject;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$-ixQtjXnWcLB_xp0ZihvJIu6Yls(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$createView$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$01YuyDRYiPsNNDmerzrkirdGR3w(Lorg/telegram/ui/LocationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0hhr_b6GFWxd6etXF_EvSj5SGSo(Lorg/telegram/ui/LocationActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$createView$11([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1KWAP_TRghcSV-vuwB6dABY5OBo(Lorg/telegram/ui/LocationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$checkGpsEnabled$37(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1iFFDu9dMGxqIsau-O8ucWrGmJA(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$openProximityAlert$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$33InRnPuvS54MqoQUGfkI825LuI(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$openShareLiveLocation$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$4jcnNarknTEh3XlW3bT7OBrhXeo(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$createView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$5Ih3ZKuUMOh8yy9Cs9VNOL0sNp4(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$IMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$21(Lorg/telegram/messenger/IMapsProvider$IMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5d0-eStuvQHulOa058Loo-Mc1HE(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$getThemeDescriptions$46()V

    return-void
.end method

.method public static synthetic $r8$lambda$7UlKUZVinBQhgcA3gWkTPxk-kk0(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$User;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LocationActivity;->lambda$openShareLiveLocation$32(Lorg/telegram/tgnet/TLRPC$User;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$96DFv9Yl0GAhxsq9HO63DkRhN28(Lorg/telegram/ui/LocationActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LocationActivity;->lambda$createView$12([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Ar39MB4c8XyXwbPiiVEmiAkd4Y(Lorg/telegram/ui/LocationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$showPermissionAlert$38(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9XXP_RpuOdTelZWbAZkJ9Yjmpbg(Lorg/telegram/ui/LocationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9gqA2kb3XKmPY1zV3w4Nvr1eZww(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$IMapView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$22(Lorg/telegram/messenger/IMapsProvider$IMapView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A60C02xNpOQUXJcKIdFDSZ_ZBck(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$onMapInit$36()V

    return-void
.end method

.method public static synthetic $r8$lambda$AdKpN2Gq18lWu2hkTiPM8YOdQ2w(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$5(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BXGMS0fQfXIGUoDCdsnNTG_oScw(Lorg/telegram/ui/LocationActivity;Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$createView$17(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BakGPpeKiB3YZy4xRJPbqQiGt14(Lorg/telegram/ui/LocationActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->updatePlacesMarkers(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BhCDfRqt-a_x7aW92H5b-pUQgEs(Lorg/telegram/ui/LocationActivity;Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LocationActivity;->lambda$createView$15(Ljava/lang/Object;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CT_i9mKvf2jTFt0yaGP_ByovdK4(Lorg/telegram/ui/LocationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CcPdoR33PnbENFx7hj6yqO0B8dw(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/LocationActivity$LiveLocation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$createView$9(Lorg/telegram/ui/LocationActivity$LiveLocation;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FujWhg4lOPNhwpZh8EDQWtnxfUQ(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LocationActivity;->lambda$createView$10(Landroid/content/Context;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HvcRklQHFdEuY77hLWcMvP3Jtcg(Lorg/telegram/ui/LocationActivity;Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$createView$18(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ILv8BcKoQsoBdPwPeDtkrfL8hWA(Lorg/telegram/ui/LocationActivity;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$onCheckGlScreenshot$45(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IQJTyZFeIoidWfhw37v2M7aTmo8(Lorg/telegram/ui/LocationActivity;Landroid/view/ViewGroup;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$onCheckGlScreenshot$43(Landroid/view/ViewGroup;Landroid/opengl/GLSurfaceView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JegFHUoqXiI8dC2tffPADSema_g(Lorg/telegram/ui/LocationActivity;ZI)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$openProximityAlert$27(ZI)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LC7yMLfEb87io7Fm9nPkfXrK5cQ(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LocationActivity;->lambda$createView$14(Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NuQ92hy6AliFf9idBN5aNLupuJU(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$getRecentLocations$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q1TixO7JAgi2it7IsWNmWDWeKf0(Lorg/telegram/ui/LocationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$onMapInit$33(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QW4aklssdHZebAcgEl7SjaPTnI8(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$createView$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$RSgit3JI1TY6NfykgHIxy1j-HMc(Lorg/telegram/ui/LocationActivity;Landroid/graphics/Bitmap;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$onCheckGlScreenshot$44(Landroid/graphics/Bitmap;Landroid/opengl/GLSurfaceView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tq4HKMbBmmU5QYekWB_YofqKjSE(Lorg/telegram/ui/LocationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WPWek_Q9cMsHK-jcDlSLSONgc3M(Lorg/telegram/ui/LocationActivity;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LocationActivity;->lambda$getRecentLocations$42(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X5H_DvHg3q8RNgyGgkXOQQqxHA8(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$IMapView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$23(Lorg/telegram/messenger/IMapsProvider$IMapView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XDWCCnufLgVK6lJHVGy3wjG9i2s(Lorg/telegram/ui/LocationActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$createView$16(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$avongBjIesFQ9J9T6jGdIs7_by0(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$IMarker;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$onMapInit$35(Lorg/telegram/messenger/IMapsProvider$IMarker;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$g5dOPBWbbnW2uNmIvs4MUYgXKhw(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$createView$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$g8fQ9gofHEGz-AnLAEm_Y9nxqsU(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$User;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LocationActivity;->lambda$openProximityAlert$28(Lorg/telegram/tgnet/TLRPC$User;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gLlSXhz3c4oQnVwY11Ik1H_t3qc(Lorg/telegram/ui/LocationActivity;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$onMapInit$34(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lQr8njIzqFLcNfmj6VLAYCjn8nQ(Lorg/telegram/ui/LocationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$fixLayoutInternal$39(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$peutnHtfpVUM0_LThfKkch7psuE(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LocationActivity;->lambda$createView$25(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qRCfHWFp21WCQSV1MurP71tQJ8U(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$User;ZI)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LocationActivity;->lambda$openProximityAlert$29(Lorg/telegram/tgnet/TLRPC$User;ZI)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rHqupHk9xbqk96z2Ajy-wrK_8Hw(Lorg/telegram/ui/LocationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u7MvSmMkgdFfduHBmEIeEkTxpcg(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$7(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wamovgzFZElnpL2q2sQhoXrpLp4(Lorg/telegram/ui/LocationActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$createView$26(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xliMudvoo_2jiY0K7rSSyCQize0(Lorg/telegram/ui/LocationActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$createView$13(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y7d1Mjl5fnTI5Edw7-fSj7JPVl8(Lorg/telegram/ui/LocationActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$24(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 423
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/telegram/ui/Components/UndoView;

    .line 136
    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->checkGpsEnabled:Z

    const/4 v1, 0x0

    .line 169
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->locationDenied:Z

    .line 171
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->isFirstLocation:Z

    .line 174
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->firstFocus:Z

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    .line 179
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->markersMap:Landroidx/collection/LongSparseArray;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->placeMarkers:Ljava/util/ArrayList;

    .line 189
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->checkPermission:Z

    .line 190
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->checkBackgroundPermission:Z

    .line 215
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x42

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 1607
    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->bitmapCache:[Landroid/graphics/Bitmap;

    .line 424
    iput p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    .line 425
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->fixGoogleMapsBug()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$VenueLocation;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->lastPressedVenue:Lorg/telegram/ui/LocationActivity$VenueLocation;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/LocationActivity$VenueLocation;)Lorg/telegram/ui/LocationActivity$VenueLocation;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->lastPressedVenue:Lorg/telegram/ui/LocationActivity$VenueLocation;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->showSearchPlacesButton(Z)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/LocationActivity$LiveLocation;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->openDirections(Lorg/telegram/ui/LocationActivity$LiveLocation;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LocationActivity;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/LocationActivity;->searching:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/LocationActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->searching:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/LocationActivity;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/LocationActivity;->searchWas:Z

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/LocationActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/LocationActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/IMapsProvider$IMarker;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/LocationActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->searchInProgress:Z

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$IMarker;)Lorg/telegram/messenger/IMapsProvider$IMarker;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->fixLayoutInternal(Z)V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->updateClipView(Z)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$MapOverlayView;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/LocationActivity;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/LocationActivity;->scrolling:Z

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/LocationActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->scrolling:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/LocationActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarkerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->forceUpdate:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->forceUpdate:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    return-object p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/LocationActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarkerView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$3116(Lorg/telegram/ui/LocationActivity;F)F
    .locals 1

    .line 120
    iget v0, p0, Lorg/telegram/ui/LocationActivity;->yOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/LocationActivity;->yOffset:F

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/LocationActivity;)Landroid/widget/TextView;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->emptySubtitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/LocationActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/LocationActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->proximityAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->maybeShowProximityHint()V

    return-void
.end method

.method static synthetic access$3602(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/IMapsProvider$IMap;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/LocationActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/LocationActivity;I)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->openShareLiveLocation(I)V

    return-void
.end method

.method private addUserMarker(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/ui/LocationActivity$LiveLocation;
    .locals 8

    .line 1658
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 1659
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->markersMap:Landroidx/collection/LongSparseArray;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/LocationActivity$LiveLocation;

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 1660
    new-instance v1, Lorg/telegram/ui/LocationActivity$LiveLocation;

    invoke-direct {v1}, Lorg/telegram/ui/LocationActivity$LiveLocation;-><init>()V

    .line 1661
    iput-object p1, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    .line 1662
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v3, :cond_0

    .line 1663
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1664
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iput-wide v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    goto :goto_1

    .line 1666
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v3

    .line 1667
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1668
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0

    .line 1670
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1672
    :goto_0
    iput-wide v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    .line 1676
    :goto_1
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider;->onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->position(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v3

    .line 1677
    invoke-direct {p0, v1}, Lorg/telegram/ui/LocationActivity;->createUserBitmap(Lorg/telegram/ui/LocationActivity$LiveLocation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1679
    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->icon(Landroid/graphics/Bitmap;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    const v4, 0x3f683127    # 0.907f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 1680
    invoke-interface {v3, v5, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->anchor(FF)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1681
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v4, v3}, Lorg/telegram/messenger/IMapsProvider$IMap;->addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 1683
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1684
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider;->onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->position(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->flat(Z)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v0

    .line 1685
    invoke-interface {v0, v5, v5}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->anchor(FF)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1686
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v3, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 1688
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->heading:I

    if-eqz p1, :cond_2

    .line 1689
    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setRotation(I)V

    .line 1690
    iget-object p1, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    sget v0, Lorg/telegram/messenger/R$drawable;->map_pin_cone2:I

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setIcon(I)V

    .line 1691
    iput-boolean v2, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->hasRotation:Z

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 1693
    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setRotation(I)V

    .line 1694
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    sget v3, Lorg/telegram/messenger/R$drawable;->map_pin_circle:I

    invoke-interface {v0, v3}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setIcon(I)V

    .line 1695
    iput-boolean p1, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->hasRotation:Z

    .line 1699
    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->markersMap:Landroidx/collection/LongSparseArray;

    iget-wide v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    invoke-virtual {p1, v3, v4, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1701
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v3, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object p1

    .line 1702
    iget-wide v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    iget-object v0, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget p1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz p1, :cond_5

    .line 1703
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 1704
    iget-object p1, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1708
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1711
    :cond_4
    iput-object p1, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    .line 1712
    iget-object p1, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V

    .line 1714
    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    if-eqz p1, :cond_6

    .line 1715
    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Components/ProximitySheet;->updateText(ZZ)V

    :cond_6
    return-object v1
.end method

.method private addUserMarker(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)Lorg/telegram/ui/LocationActivity$LiveLocation;
    .locals 5

    .line 1721
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 1722
    new-instance p1, Lorg/telegram/ui/LocationActivity$LiveLocation;

    invoke-direct {p1}, Lorg/telegram/ui/LocationActivity$LiveLocation;-><init>()V

    .line 1723
    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1724
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0

    .line 1726
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1728
    :goto_0
    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    iput-wide v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    .line 1731
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider;->onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->position(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v1

    .line 1732
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->createUserBitmap(Lorg/telegram/ui/LocationActivity$LiveLocation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1734
    invoke-interface {v1, v2}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->icon(Landroid/graphics/Bitmap;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    const v2, 0x3f683127    # 0.907f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 1735
    invoke-interface {v1, v3, v2}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->anchor(FF)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1736
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v2, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 1738
    iget-object v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1739
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider;->onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->position(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->flat(Z)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v0

    .line 1740
    sget v1, Lorg/telegram/messenger/R$drawable;->map_pin_circle:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->icon(I)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1741
    invoke-interface {v0, v3, v3}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->anchor(FF)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1742
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 1745
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1746
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markersMap:Landroidx/collection/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    invoke-virtual {v0, v1, v2, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1749
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object p1
.end method

.method private checkGpsEnabled()Z
    .locals 6

    .line 1864
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1868
    :cond_0
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v2, "gps"

    .line 1869
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1870
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1871
    sget v2, Lorg/telegram/messenger/R$raw;->permission_request_location:I

    const/16 v3, 0x48

    const-string v4, "dialogTopBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v2, "GpsDisabledAlertText"

    .line 1872
    sget v3, Lorg/telegram/messenger/R$string;->GpsDisabledAlertText:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v2, "ConnectingToProxyEnable"

    .line 1873
    sget v3, Lorg/telegram/messenger/R$string;->ConnectingToProxyEnable:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v2, "Cancel"

    .line 1883
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1884
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v0

    .line 1888
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return v1
.end method

.method private createCircle(I)V
    .locals 8

    .line 1894
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Lorg/telegram/messenger/IMapsProvider$PatternItem;

    const/4 v2, 0x0

    .line 1897
    new-instance v3, Lorg/telegram/messenger/IMapsProvider$PatternItem$Gap;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Lorg/telegram/messenger/IMapsProvider$PatternItem$Gap;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/telegram/messenger/IMapsProvider$PatternItem$Dash;

    invoke-direct {v3, v4}, Lorg/telegram/messenger/IMapsProvider$PatternItem$Dash;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1899
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider;->onCreateCircleOptions()Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    move-result-object v2

    .line 1900
    new-instance v3, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    invoke-interface {v2, v3}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->center(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    int-to-double v3, p1

    .line 1901
    invoke-interface {v2, v3, v4}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->radius(D)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    .line 1902
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->isActiveThemeDark()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, -0x69995c29

    .line 1903
    invoke-interface {v2, p1}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->strokeColor(I)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    const p1, 0x1c66a3d7

    .line 1904
    invoke-interface {v2, p1}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->fillColor(I)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    goto :goto_0

    :cond_1
    const p1, -0x69bd790b

    .line 1906
    invoke-interface {v2, p1}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->strokeColor(I)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    const p1, 0x1c4286f5

    .line 1907
    invoke-interface {v2, p1}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->fillColor(I)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    .line 1909
    :goto_0
    invoke-interface {v2, v1}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->strokePattern(Ljava/util/List;)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    .line 1910
    invoke-interface {v2, v0}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->strokeWidth(I)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    .line 1911
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {p1, v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->addCircle(Lorg/telegram/messenger/IMapsProvider$ICircleOptions;)Lorg/telegram/messenger/IMapsProvider$ICircle;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    return-void
.end method

.method private createPlaceBitmap(I)Landroid/graphics/Bitmap;
    .locals 8

    .line 1609
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->bitmapCache:[Landroid/graphics/Bitmap;

    rem-int/lit8 v1, p1, 0x7

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 1610
    aget-object p1, v0, v1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1613
    :try_start_0
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, -0x1

    .line 1614
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0xc

    .line 1615
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1616
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x6

    .line 1617
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v5, v6, v7, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1618
    invoke-static {p1}, Lorg/telegram/ui/Cells/LocationCell;->getColorForIndex(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1619
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v4, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1620
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1621
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->bitmapCache:[Landroid/graphics/Bitmap;

    rem-int/lit8 p1, p1, 0x7

    aput-object v2, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    .line 1623
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private createUserBitmap(Lorg/telegram/ui/LocationActivity$LiveLocation;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    .line 1425
    :try_start_0
    iget-object v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_0

    .line 1426
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    .line 1427
    :cond_0
    iget-object v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_1

    .line 1428
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const/16 v2, 0x3e

    .line 1430
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0x55

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    .line 1431
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1432
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1433
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->map_pin_photo:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1434
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v7, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1435
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1437
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 1438
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 1439
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    const/16 v8, 0x32

    const/4 v9, 0x6

    if-eqz v1, :cond_2

    .line 1441
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p1

    .line 1442
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1444
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1445
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1446
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v5, p1

    .line 1447
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, p1, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1448
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1449
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1450
    invoke-virtual {v1, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1451
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v4, 0x38

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, p1, v1, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 p1, 0x19

    .line 1452
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v6, v7, v1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 1455
    :cond_2
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 1456
    iget-object v2, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3

    .line 1457
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_1

    .line 1458
    :cond_3
    iget-object p1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_4

    .line 1459
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1461
    :cond_4
    :goto_1
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6, p1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1462
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v5, v5, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1463
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1465
    :cond_5
    :goto_2
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1467
    :try_start_2
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 1472
    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v3, v0

    :catch_0
    :goto_4
    return-object v3
.end method

.method private fetchRecentLocations(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    .line 2250
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->firstFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2251
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider;->onCreateLatLngBoundsBuilder()Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2253
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2254
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_3

    .line 2255
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;

    .line 2256
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    add-int/2addr v7, v9

    if-le v7, v2, :cond_2

    if-eqz v0, :cond_1

    .line 2258
    new-instance v7, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v7, v9, v10, v11, v12}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 2259
    invoke-interface {v0, v7}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    .line 2261
    :cond_1
    invoke-direct {p0, v5}, Lorg/telegram/ui/LocationActivity;->addUserMarker(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/ui/LocationActivity$LiveLocation;

    .line 2262
    iget-object v7, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-eqz v5, :cond_2

    .line 2263
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2264
    iput-boolean v6, p0, Lorg/telegram/ui/LocationActivity;->proximityAnimationInProgress:Z

    .line 2265
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0xb4

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/LocationActivity$15;

    invoke-direct {v6, p0}, Lorg/telegram/ui/LocationActivity$15;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 2271
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    .line 2276
    iget-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->firstFocus:Z

    if-eqz v2, :cond_4

    .line 2277
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v4, 0x42c60000    # 99.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 2279
    :cond_4
    iput-boolean v3, p0, Lorg/telegram/ui/LocationActivity;->firstFocus:Z

    .line 2280
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setLiveLocations(Ljava/util/ArrayList;)V

    .line 2281
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2283
    :try_start_0
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->build()Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;

    move-result-object v2

    .line 2284
    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;->getCenter()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 2285
    invoke-static {v2, v3, v4, v3, v4}, Lorg/telegram/ui/LocationActivity;->move(Lorg/telegram/messenger/IMapsProvider$LatLng;DD)Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v3

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    .line 2286
    invoke-static {v2, v4, v5, v4, v5}, Lorg/telegram/ui/LocationActivity;->move(Lorg/telegram/messenger/IMapsProvider$LatLng;DD)Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v2

    .line 2287
    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    .line 2288
    invoke-interface {v0, v3}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    .line 2289
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->build()Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;

    move-result-object v0

    .line 2290
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-le p1, v6, :cond_5

    .line 2292
    :try_start_1
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p1

    const/16 v2, 0x71

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-interface {p1, v0, v2}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngBounds(Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;I)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->moveToBounds:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    .line 2293
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 2294
    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->moveToBounds:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2296
    :try_start_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_5
    :goto_2
    return-void
.end method

.method private fixLayoutInternal(Z)V
    .locals 10

    .line 2085
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_c

    .line 2086
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 2087
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 2091
    :cond_1
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v4, 0x6

    const/16 v5, 0x49

    const/4 v6, 0x2

    const/16 v7, 0x42

    if-ne v3, v4, :cond_2

    .line 2092
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    goto :goto_1

    :cond_2
    if-ne v3, v6, :cond_3

    .line 2094
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    goto :goto_1

    .line 2096
    :cond_3
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    .line 2099
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2100
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2101
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2102
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2103
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2104
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2105
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2106
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_4

    .line 2107
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2108
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2109
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2112
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setOverScrollHeight(I)V

    .line 2113
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0xa

    if-eqz v0, :cond_6

    .line 2115
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2116
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v3, :cond_5

    const/16 v4, 0x46

    .line 2117
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-interface {v3, v8, v1, v4, v9}, Lorg/telegram/messenger/IMapsProvider$IMap;->setPadding(IIII)V

    .line 2119
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2121
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    if-eqz v0, :cond_7

    .line 2122
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_7

    .line 2124
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v3, v2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2125
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2128
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_b

    .line 2132
    iget p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    if-ne p1, v6, :cond_9

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/16 v5, 0x42

    .line 2139
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2140
    invoke-direct {p0, v1}, Lorg/telegram/ui/LocationActivity;->updateClipView(Z)V

    .line 2141
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, v5}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/LocationActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 2146
    :cond_b
    invoke-direct {p0, v1}, Lorg/telegram/ui/LocationActivity;->updateClipView(Z)V

    :cond_c
    :goto_4
    return-void
.end method

.method private getLastLocation()Landroid/location/Location;
    .locals 4

    .line 2153
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const/4 v1, 0x1

    .line 2154
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v2

    .line 2156
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    :goto_0
    if-ltz v3, :cond_1

    .line 2157
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method private getMessageId(Lorg/telegram/tgnet/TLRPC$Message;)J
    .locals 2

    .line 1478
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_0

    .line 1479
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v0

    return-wide v0

    .line 1481
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getRecentLocations()Z
    .locals 7

    .line 2364
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2365
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2366
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->fetchRecentLocations(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2370
    :goto_0
    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2371
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v3, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 2372
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_1

    return v2

    .line 2376
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;-><init>()V

    .line 2377
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    .line 2378
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/16 v5, 0x64

    .line 2379
    iput v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;->limit:I

    .line 2380
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda34;

    invoke-direct {v6, p0, v3, v4}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/LocationActivity;J)V

    invoke-virtual {v5, v1, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private getUndoView()Lorg/telegram/ui/Components/UndoView;
    .locals 5

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v0, v1

    const/4 v3, 0x1

    .line 487
    aget-object v4, v0, v3

    aput-object v4, v0, v1

    .line 488
    aput-object v2, v0, v3

    const/4 v0, 0x2

    .line 489
    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v0, v0, v1

    return-object v0
.end method

.method private isActiveThemeDark()Z
    .locals 3

    .line 1347
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 1348
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "windowBackgroundWhite"

    .line 1351
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 1352
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v2, 0x3f389375    # 0.721f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic lambda$checkGpsEnabled$37(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1874
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1878
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 721
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->showSearchPlacesButton(Z)V

    .line 722
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;ZZ)V

    .line 723
    iput-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->searchedForCustomLocations:Z

    .line 724
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->showResults()V

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    .line 760
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$createView$10(Landroid/content/Context;Landroid/view/View;I)Z
    .locals 6

    .line 1004
    iget v0, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    .line 1006
    instance-of v0, p3, Lorg/telegram/ui/LocationActivity$LiveLocation;

    if-eqz v0, :cond_0

    .line 1008
    check-cast p3, Lorg/telegram/ui/LocationActivity$LiveLocation;

    .line 1010
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    .line 1011
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p1, v3, v5, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v3, 0xc8

    .line 1012
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 1013
    sget v3, Lorg/telegram/messenger/R$string;->GetDirections:I

    const-string v4, "GetDirections"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->navigate:I

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1014
    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p3}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/LocationActivity$LiveLocation;)V

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1020
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1022
    new-instance p1, Lorg/telegram/ui/LocationActivity$11;

    const/4 p3, -0x2

    invoke-direct {p1, p0, v0, p3, p3}, Lorg/telegram/ui/LocationActivity$11;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/view/View;II)V

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1029
    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1030
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1031
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1032
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    new-array p1, v2, [I

    .line 1035
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1036
    iget-object p3, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v0, 0x30

    aget p1, p1, v5

    const/16 v2, 0x34

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p3, p2, v0, v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1037
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    return v5

    :cond_0
    return v1
.end method

.method private synthetic lambda$createView$11([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)V
    .locals 8

    const/4 v0, 0x0

    .line 1064
    :try_start_0
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v1, 0x0

    .line 1068
    aput-object v1, p1, v0

    .line 1069
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 1070
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$12([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1062
    new-instance p3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda28;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/LocationActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$13(ILandroid/content/DialogInterface;)V
    .locals 1

    .line 1072
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$createView$14(Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;ZILjava/lang/String;)V
    .locals 6

    .line 1095
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 1096
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$15(Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 6

    .line 1116
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 1117
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$16(Landroid/view/View;I)V
    .locals 9

    .line 1045
    iget p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    if-ne p2, v2, :cond_14

    .line 1047
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-nez v4, :cond_0

    return-void

    .line 1051
    :cond_0
    iget-wide p1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    const-wide/16 v5, 0x0

    cmp-long v3, p1, v5

    if-nez v3, :cond_1

    .line 1052
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 1053
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_0

    :cond_1
    new-array p1, v2, [Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1055
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p2, v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    aput-object p2, p1, v1

    .line 1056
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_channels_editLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_channels_editLocation;-><init>()V

    .line 1057
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_editLocation;->address:Ljava/lang/String;

    .line 1058
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_editLocation;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1059
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_editLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 1060
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v5, v0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 1061
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 1062
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0, p1, v4}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/LocationActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)V

    invoke-virtual {v0, p2, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p2

    .line 1072
    aget-object v0, p1, v1

    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LocationActivity;I)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1073
    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x5

    const/high16 v4, 0x40800000    # 4.0f

    if-ne p1, v3, :cond_3

    .line 1077
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p1, :cond_14

    .line 1078
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p2

    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v0, v2, v3, v5, v6}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v1

    sub-float/2addr v1, v4

    invoke-interface {p2, v0, v1}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    goto/16 :goto_0

    :cond_3
    if-ne p2, v2, :cond_5

    .line 1080
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v3, 0x6

    if-ne p1, v3, :cond_5

    .line 1081
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p1, :cond_14

    .line 1082
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p2

    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v0, v2, v3, v5, v6}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v1

    sub-float/2addr v1, v4

    invoke-interface {p2, v0, v1}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    goto/16 :goto_0

    :cond_5
    const/4 p1, 0x2

    if-ne p2, v2, :cond_a

    .line 1084
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eq v3, p1, :cond_a

    .line 1085
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    if-eqz p1, :cond_14

    .line 1086
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarkerView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    .line 1087
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->callOnClick()Z

    goto/16 :goto_0

    .line 1089
    :cond_6
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 1090
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object p1, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 1091
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1092
    iget-object p1, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 1093
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1094
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance p2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda41;

    invoke-direct {p2, p0, v4}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;)V

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0, v1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto/16 :goto_0

    .line 1099
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    iget v5, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_0

    :cond_a
    if-ne p2, p1, :cond_b

    .line 1104
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eq v3, v2, :cond_d

    :cond_b
    if-ne p2, v2, :cond_c

    iget v3, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eq v3, p1, :cond_d

    :cond_c
    if-ne p2, v0, :cond_f

    iget p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-ne p1, v0, :cond_f

    .line 1105
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1106
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/LocationController;->removeSharingLocation(J)V

    .line 1107
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 1109
    :cond_e
    invoke-direct {p0, v1}, Lorg/telegram/ui/LocationActivity;->openShareLiveLocation(I)V

    goto :goto_0

    .line 1112
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 1113
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz p2, :cond_13

    .line 1114
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p2

    if-nez p2, :cond_11

    :cond_10
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_12

    invoke-virtual {p2, v2, v2}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 1115
    :cond_11
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda40;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/LocationActivity;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v0, v1, v2, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_0

    .line 1120
    :cond_12
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-object v4, p1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget v5, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 1121
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 1123
    :cond_13
    instance-of p2, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;

    if-eqz p2, :cond_14

    .line 1124
    check-cast p1, Lorg/telegram/ui/LocationActivity$LiveLocation;

    .line 1125
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v1

    sub-float/2addr v1, v4

    invoke-interface {v0, p1, v1}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    :cond_14
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$17(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z
    .locals 3

    .line 1137
    iget v0, p0, Lorg/telegram/ui/LocationActivity;->yOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1138
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1139
    iget v0, p0, Lorg/telegram/ui/LocationActivity;->yOffset:F

    neg-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1141
    :goto_0
    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$ICallableMethod;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz v0, :cond_1

    .line 1143
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    return p1
.end method

.method private synthetic lambda$createView$18(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z
    .locals 9

    .line 1148
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-nez v0, :cond_6

    .line 1149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1151
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1153
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1154
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1155
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v4, [F

    iget v7, p0, Lorg/telegram/ui/LocationActivity;->markerTop:I

    const/16 v8, 0xa

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, v6, v3

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1157
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1158
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 1159
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/4 v0, 0x0

    .line 1161
    iput v0, p0, Lorg/telegram/ui/LocationActivity;->yOffset:F

    .line 1162
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1163
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1164
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v4, [F

    iget v7, p0, Lorg/telegram/ui/LocationActivity;->markerTop:I

    int-to-float v7, v7

    aput v7, v6, v3

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1165
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1166
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchLocationAddress()V

    .line 1168
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1169
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    if-nez v0, :cond_4

    .line 1170
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "location_actionIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1171
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1172
    iput-boolean v4, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    .line 1174
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v0, :cond_5

    .line 1175
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    if-eqz v1, :cond_5

    .line 1176
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->getCameraPosition()Lorg/telegram/messenger/IMapsProvider$CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/IMapsProvider$CameraPosition;->target:Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-wide v2, v0, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 1177
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getCameraPosition()Lorg/telegram/messenger/IMapsProvider$CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/IMapsProvider$CameraPosition;->target:Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-wide v1, v1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 1180
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setCustomLocation(Landroid/location/Location;)V

    .line 1183
    :cond_6
    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$ICallableMethod;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$createView$19()V
    .locals 2

    .line 1186
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->moveToBounds:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    const/4 v0, 0x0

    .line 1188
    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->moveToBounds:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$2(I)V
    .locals 3

    .line 762
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 766
    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapType(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const/4 p1, 0x1

    .line 768
    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapType(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 770
    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapType(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$20()V
    .locals 1

    .line 1185
    new-instance v0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$21(Lorg/telegram/messenger/IMapsProvider$IMap;)V
    .locals 4

    .line 1204
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    .line 1205
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->isActiveThemeDark()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1206
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->currentMapStyleDark:Z

    .line 1207
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$raw;->mapstyle_night:I

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/IMapsProvider;->loadRawResourceStyle(Landroid/content/Context;I)Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;

    move-result-object p1

    .line 1208
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapStyle(Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;)V

    .line 1210
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    const/16 v0, 0x46

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-interface {p1, v1, v2, v0, v3}, Lorg/telegram/messenger/IMapsProvider$IMap;->setPadding(IIII)V

    .line 1211
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->onMapInit()V

    return-void
.end method

.method private synthetic lambda$createView$22(Lorg/telegram/messenger/IMapsProvider$IMapView;)V
    .locals 1

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1201
    :try_start_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onCreate(Landroid/os/Bundle;)V

    .line 1202
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider;->initializeMaps(Landroid/content/Context;)V

    .line 1203
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    new-instance v0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getMapAsync(Landroidx/core/util/Consumer;)V

    const/4 p1, 0x1

    .line 1213
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->mapsInitialized:Z

    .line 1214
    iget-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->onResumeCalled:Z

    if-eqz p1, :cond_0

    .line 1215
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1218
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$23(Lorg/telegram/messenger/IMapsProvider$IMapView;)V
    .locals 1

    const/4 v0, 0x0

    .line 1194
    :try_start_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    :catch_0
    new-instance v0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$IMapView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$24(Ljava/util/ArrayList;)V
    .locals 0

    const/4 p1, 0x0

    .line 1262
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->searchInProgress:Z

    .line 1263
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->updateEmptyView()V

    return-void
.end method

.method private synthetic lambda$createView$25(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;ZILjava/lang/String;)V
    .locals 6

    .line 1279
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 1280
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$26(Landroid/view/View;I)V
    .locals 6

    .line 1275
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1276
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    if-eqz p1, :cond_3

    .line 1277
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1278
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    new-instance p2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda42;

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)V

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v2, v3, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_0

    .line 1283
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 1284
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 8

    .line 805
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    .line 806
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 808
    invoke-virtual {p1, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 809
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->showPermissionAlert(Z)V

    return-void

    .line 814
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->checkGpsEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 817
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 822
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p1, :cond_5

    .line 823
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "location_actionActiveIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 824
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 825
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setCustomLocation(Landroid/location/Location;)V

    .line 826
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    .line 827
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->showSearchPlacesButton(Z)V

    .line 828
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    invoke-interface {v2, v3}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLng(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 829
    iget-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->searchedForCustomLocations:Z

    if-eqz p1, :cond_5

    .line 830
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz p1, :cond_3

    .line 831
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p1, v3, v3}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;ZZ)V

    .line 833
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->searchedForCustomLocations:Z

    .line 834
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->showResults()V

    goto :goto_1

    .line 818
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p1, :cond_5

    .line 819
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 838
    :cond_5
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->removeInfoView()V

    return-void
.end method

.method private synthetic lambda$createView$4()V
    .locals 5

    .line 889
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/LocationController;->setProximityLocation(JIZ)Z

    .line 890
    iput-boolean v3, p0, Lorg/telegram/ui/LocationActivity;->canUndo:Z

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 2

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_location_alert2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 893
    iget p1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->createCircle(I)V

    const/4 p1, 0x0

    .line 894
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->canUndo:Z

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 11

    .line 868
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->checkGpsEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-nez p1, :cond_0

    goto :goto_0

    .line 871
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    if-eqz p1, :cond_1

    .line 872
    invoke-virtual {p1}, Lorg/telegram/ui/Components/HintView;->hide()V

    .line 874
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 875
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x3

    const-string v1, "proximityhint"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 876
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object p1

    .line 877
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->canUndo:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 878
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_2
    if-eqz p1, :cond_4

    .line 880
    iget v0, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    if-lez v0, :cond_4

    .line 881
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_location_alert:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 882
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    if-eqz v0, :cond_3

    .line 883
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ICircle;->remove()V

    const/4 v0, 0x0

    .line 884
    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    .line 886
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->canUndo:Z

    .line 887
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/16 v6, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda15;

    invoke-direct {v9, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LocationActivity;)V

    new-instance v10, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda26;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    .line 898
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->openProximityAlert()V

    :cond_5
    :goto_0
    return-void
.end method

.method private static synthetic lambda$createView$7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$8()V
    .locals 1

    const/4 v0, 0x0

    .line 980
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->updateClipView(Z)V

    return-void
.end method

.method private synthetic lambda$createView$9(Lorg/telegram/ui/LocationActivity$LiveLocation;Landroid/view/View;)V
    .locals 0

    .line 1015
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->openDirections(Lorg/telegram/ui/LocationActivity$LiveLocation;)V

    .line 1016
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    .line 1017
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$fixLayoutInternal$39(I)V
    .locals 2

    .line 2142
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    neg-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2143
    invoke-direct {p0, v1}, Lorg/telegram/ui/LocationActivity;->updateClipView(Z)V

    return-void
.end method

.method private synthetic lambda$getRecentLocations$40()V
    .locals 3

    .line 2402
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/LocationController;->markLiveLoactionsAsRead(J)V

    .line 2403
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markAsReadRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1388

    .line 2406
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$getRecentLocations$41(Lorg/telegram/tgnet/TLObject;J)V
    .locals 5

    .line 2383
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-nez v0, :cond_0

    return-void

    .line 2386
    :cond_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2387
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 2388
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-nez v2, :cond_1

    .line 2389
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/2addr v1, v3

    goto :goto_0

    .line 2393
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v4, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 2394
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2395
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2396
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p3, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2397
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2398
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->fetchRecentLocations(Ljava/util/ArrayList;)V

    .line 2399
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/LocationController;->markLiveLoactionsAsRead(J)V

    .line 2400
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->markAsReadRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 2401
    new-instance p1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LocationActivity;)V

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->markAsReadRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1388

    .line 2408
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$getRecentLocations$42(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 2382
    new-instance p4, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda27;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLObject;J)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$46()V
    .locals 6

    .line 2705
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "location_actionIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 2706
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 2707
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuItemIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 2708
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuItem"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 2710
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "dialogBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2711
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->shadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2713
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v0, :cond_1

    .line 2714
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->isActiveThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2715
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->currentMapStyleDark:Z

    if-nez v0, :cond_1

    .line 2716
    iput-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->currentMapStyleDark:Z

    .line 2717
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v2, Lorg/telegram/messenger/R$raw;->mapstyle_night:I

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/IMapsProvider;->loadRawResourceStyle(Landroid/content/Context;I)Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;

    move-result-object v0

    .line 2718
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapStyle(Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;)V

    .line 2719
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 2720
    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$ICircle;->setStrokeColor(I)V

    .line 2721
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    const v1, 0x20ffffff

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$ICircle;->setFillColor(I)V

    goto :goto_0

    .line 2725
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->currentMapStyleDark:Z

    if-eqz v0, :cond_1

    .line 2726
    iput-boolean v3, p0, Lorg/telegram/ui/LocationActivity;->currentMapStyleDark:Z

    .line 2727
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapStyle(Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;)V

    .line 2728
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    if-eqz v0, :cond_1

    const/high16 v1, -0x1000000

    .line 2729
    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$ICircle;->setStrokeColor(I)V

    .line 2730
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    const/high16 v1, 0x20000000

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$ICircle;->setFillColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCheckGlScreenshot$43(Landroid/view/ViewGroup;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .line 2607
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2609
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    .line 2612
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->hasScreenshot:Z

    .line 2614
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onCheckGlScreenshot$44(Landroid/graphics/Bitmap;Landroid/opengl/GLSurfaceView;)V
    .locals 2

    .line 2595
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2596
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2598
    invoke-virtual {p2}, Landroid/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 2600
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2602
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2605
    :goto_0
    new-instance v0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/view/ViewGroup;Landroid/opengl/GLSurfaceView;)V

    const-wide/16 p1, 0x64

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$onCheckGlScreenshot$45(Landroid/opengl/GLSurfaceView;)V
    .locals 11

    .line 2580
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2583
    :cond_0
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2584
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v4

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 2585
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2586
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 2588
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 2589
    invoke-virtual {v9, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2591
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, v1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2592
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2594
    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/graphics/Bitmap;Landroid/opengl/GLSurfaceView;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onMapInit$33(I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1805
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->showSearchPlacesButton(Z)V

    .line 1806
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->removeInfoView()V

    .line 1808
    iget-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->scrolling:Z

    if-nez p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 1809
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1811
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1812
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_2

    .line 1813
    iget v1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x42

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 1814
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    neg-int v2, v1

    if-ge p1, v2, :cond_2

    .line 1816
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->getCameraPosition()Lorg/telegram/messenger/IMapsProvider$CameraPosition;

    move-result-object v2

    .line 1817
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/messenger/IMapsProvider$CameraPosition;->target:Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget v2, v2, Lorg/telegram/messenger/IMapsProvider$CameraPosition;->zoom:F

    invoke-interface {v3, v4, v2}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/LocationActivity;->forceUpdate:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    .line 1818
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    add-int/2addr p1, v1

    invoke-virtual {v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onMapInit$34(Landroid/location/Location;)V
    .locals 2

    .line 1826
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->positionMarker(Landroid/location/Location;)V

    .line 1827
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->isFirstLocation:Z

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/LocationController;->setMapLocation(Landroid/location/Location;Z)V

    const/4 p1, 0x0

    .line 1828
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->isFirstLocation:Z

    return-void
.end method

.method private synthetic lambda$onMapInit$35(Lorg/telegram/messenger/IMapsProvider$IMarker;)Z
    .locals 6

    .line 1831
    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LocationActivity$VenueLocation;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1834
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1835
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    if-nez v0, :cond_1

    .line 1836
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "location_actionIcon"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1837
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1838
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    .line 1840
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/LocationActivity$MapOverlayView;->addInfoView(Lorg/telegram/messenger/IMapsProvider$IMarker;)V

    return v1
.end method

.method private synthetic lambda$onMapInit$36()V
    .locals 1

    .line 1844
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    if-eqz v0, :cond_0

    .line 1845
    invoke-virtual {v0}, Lorg/telegram/ui/LocationActivity$MapOverlayView;->updatePositions()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openProximityAlert$27(ZI)Z
    .locals 7

    .line 1499
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    int-to-double v2, p2

    .line 1500
    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/IMapsProvider$ICircle;->setRadius(D)V

    if-eqz p1, :cond_0

    .line 1502
    invoke-direct {p0, p2, v1, v1}, Lorg/telegram/ui/LocationActivity;->moveToBounds(IZZ)V

    .line 1505
    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 1508
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_4

    .line 1509
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/LocationActivity$LiveLocation;

    .line 1510
    iget-object v4, v3, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1513
    :cond_2
    iget-object v3, v3, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 1514
    new-instance v4, Landroid/location/Location;

    const-string v5, "network"

    invoke-direct {v4, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1515
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 1516
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 1517
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v3, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    int-to-float v4, p2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    return v1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private synthetic lambda$openProximityAlert$28(Lorg/telegram/tgnet/TLRPC$User;ILandroid/content/DialogInterface;I)V
    .locals 0

    const/16 p3, 0x384

    .line 1528
    invoke-direct {p0, p1, p3, p2}, Lorg/telegram/ui/LocationActivity;->shareLiveLocation(Lorg/telegram/tgnet/TLRPC$User;II)V

    return-void
.end method

.method private synthetic lambda$openProximityAlert$29(Lorg/telegram/tgnet/TLRPC$User;ZI)Z
    .locals 9

    .line 1523
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1525
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1526
    sget v0, Lorg/telegram/messenger/R$string;->ShareLocationAlertTitle:I

    const-string v1, "ShareLocationAlertTitle"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1527
    sget v0, Lorg/telegram/messenger/R$string;->ShareLocationAlertText:I

    const-string v1, "ShareLocationAlertText"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1528
    sget v0, Lorg/telegram/messenger/R$string;->ShareLocationAlertButton:I

    const-string v1, "ShareLocationAlertButton"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p3}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$User;I)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1529
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p3, "Cancel"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1530
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p1, 0x0

    return p1

    .line 1533
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ProximitySheet;->setRadiusSet()V

    .line 1534
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_location_alert2:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1535
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/16 v4, 0x18

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1536
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    const/4 p2, 0x1

    invoke-virtual {p1, v0, v1, p3, p2}, Lorg/telegram/messenger/LocationController;->setProximityLocation(JIZ)Z

    return p2
.end method

.method private synthetic lambda$openProximityAlert$30()V
    .locals 6

    .line 1539
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v0, :cond_0

    const/16 v1, 0x46

    .line 1540
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-interface {v0, v2, v3, v1, v4}, Lorg/telegram/messenger/IMapsProvider$IMap;->setPadding(IIII)V

    .line 1542
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProximitySheet;->getRadiusSet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1543
    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->previousRadius:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 1544
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/IMapsProvider$ICircle;->setRadius(D)V

    goto :goto_0

    .line 1545
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    if-eqz v0, :cond_2

    .line 1546
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ICircle;->remove()V

    .line 1547
    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    .line 1550
    :cond_2
    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    return-void
.end method

.method private synthetic lambda$openShareLiveLocation$31()V
    .locals 1

    .line 1570
    iget v0, p0, Lorg/telegram/ui/LocationActivity;->askWithRadius:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->openShareLiveLocation(I)V

    return-void
.end method

.method private synthetic lambda$openShareLiveLocation$32(Lorg/telegram/tgnet/TLRPC$User;II)V
    .locals 0

    .line 1581
    invoke-direct {p0, p1, p3, p2}, Lorg/telegram/ui/LocationActivity;->shareLiveLocation(Lorg/telegram/tgnet/TLRPC$User;II)V

    return-void
.end method

.method private synthetic lambda$showPermissionAlert$38(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1936
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1940
    :cond_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1941
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1942
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1944
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private maybeShowProximityHint()V
    .locals 7

    .line 1984
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->proximityAnimationInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1987
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "proximityhint"

    const/4 v2, 0x0

    .line 1988
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 1990
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1991
    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1992
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v5, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1993
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    sget v3, Lorg/telegram/messenger/R$string;->ProximityTooltioUser:I

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "ProximityTooltioUser"

    invoke-static {v0, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/HintView;->setOverrideText(Ljava/lang/String;)V

    goto :goto_0

    .line 1995
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    sget v1, Lorg/telegram/messenger/R$string;->ProximityTooltioGroup:I

    const-string v2, "ProximityTooltioGroup"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setOverrideText(Ljava/lang/String;)V

    .line 1997
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private static meterToLatitude(D)D
    .locals 2

    const-wide v0, 0x415848fd80000000L    # 6366198.0

    div-double/2addr p0, v0

    .line 2245
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static meterToLongitude(DD)D
    .locals 2

    .line 2236
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    .line 2237
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide v0, 0x415848fd80000000L    # 6366198.0

    mul-double p2, p2, v0

    div-double/2addr p0, p2

    .line 2239
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static move(Lorg/telegram/messenger/IMapsProvider$LatLng;DD)Lorg/telegram/messenger/IMapsProvider$LatLng;
    .locals 3

    .line 2230
    iget-wide v0, p0, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    invoke-static {p3, p4, v0, v1}, Lorg/telegram/ui/LocationActivity;->meterToLongitude(DD)D

    move-result-wide p3

    .line 2231
    invoke-static {p1, p2}, Lorg/telegram/ui/LocationActivity;->meterToLatitude(D)D

    move-result-wide p1

    .line 2232
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-wide v1, p0, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    add-double/2addr v1, p1

    iget-wide p0, p0, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    add-double/2addr p0, p3

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    return-object v0
.end method

.method private moveToBounds(IZZ)V
    .locals 9

    .line 2307
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider;->onCreateLatLngBoundsBuilder()Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    move-result-object v0

    .line 2308
    new-instance v1, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    const/16 v1, 0x46

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/16 p2, 0xfa

    .line 2311
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2312
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->build()Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;

    move-result-object p2

    .line 2313
    invoke-interface {p2}, Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;->getCenter()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object p2

    int-to-double v3, p1

    .line 2314
    invoke-static {p2, v3, v4, v3, v4}, Lorg/telegram/ui/LocationActivity;->move(Lorg/telegram/messenger/IMapsProvider$LatLng;DD)Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v3

    neg-int p1, p1

    int-to-double v4, p1

    .line 2315
    invoke-static {p2, v4, v5, v4, v5}, Lorg/telegram/ui/LocationActivity;->move(Lorg/telegram/messenger/IMapsProvider$LatLng;DD)Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object p1

    .line 2316
    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    .line 2317
    invoke-interface {v0, v3}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    .line 2318
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->build()Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2320
    :try_start_1
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ProximitySheet;->getCustomView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/16 v0, 0x28

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 2321
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-interface {v0, v3, v2, v1, p2}, Lorg/telegram/messenger/IMapsProvider$IMap;->setPadding(IIII)V

    if-eqz p3, :cond_0

    .line 2323
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p3

    invoke-interface {p3, p1, v2}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngBounds(Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;I)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    const/16 p3, 0x1f4

    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;ILorg/telegram/messenger/IMapsProvider$ICancelableCallback;)V

    goto/16 :goto_1

    .line 2325
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p3

    invoke-interface {p3, p1, v2}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngBounds(Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;I)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 2328
    :try_start_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 2334
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p1

    .line 2335
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_3

    .line 2336
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/LocationActivity$LiveLocation;

    iget-object v3, v3, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    .line 2337
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    add-int/2addr v4, v5

    if-le v4, p1, :cond_2

    .line 2338
    new-instance v4, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 2339
    invoke-interface {v0, v4}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2343
    :cond_3
    :try_start_3
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->build()Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;

    move-result-object p1

    .line 2344
    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;->getCenter()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object p1

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    .line 2345
    invoke-static {p1, p2, p3, p2, p3}, Lorg/telegram/ui/LocationActivity;->move(Lorg/telegram/messenger/IMapsProvider$LatLng;DD)Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object p2

    const-wide/high16 v3, -0x3fa7000000000000L    # -100.0

    .line 2346
    invoke-static {p1, v3, v4, v3, v4}, Lorg/telegram/ui/LocationActivity;->move(Lorg/telegram/messenger/IMapsProvider$LatLng;DD)Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object p1

    .line 2347
    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    .line 2348
    invoke-interface {v0, p2}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    .line 2349
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->build()Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2351
    :try_start_4
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ProximitySheet;->getCustomView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/16 p3, 0x64

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    sub-int/2addr p2, p3

    .line 2352
    iget-object p3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-interface {p3, v0, v2, v1, p2}, Lorg/telegram/messenger/IMapsProvider$IMap;->setPadding(IIII)V

    .line 2353
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p3

    invoke-interface {p3, p1, v2}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngBounds(Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;I)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2355
    :try_start_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :goto_1
    return-void
.end method

.method private onCheckGlScreenshot()Z
    .locals 2

    .line 2577
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getGlSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->hasScreenshot:Z

    if-nez v0, :cond_0

    .line 2578
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getGlSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v0

    .line 2579
    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/opengl/GLSurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onMapInit()V
    .locals 8

    .line 1756
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-nez v0, :cond_0

    return-void

    .line 1760
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1761
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->addUserMarker(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)Lorg/telegram/ui/LocationActivity$LiveLocation;

    move-result-object v0

    .line 1762
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v4

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v5}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v5

    sub-float/2addr v5, v1

    invoke-interface {v4, v0, v5}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    goto/16 :goto_1

    .line 1763
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    .line 1764
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1765
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->addUserMarker(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/ui/LocationActivity$LiveLocation;

    move-result-object v0

    .line 1766
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getRecentLocations()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1767
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v4

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v5}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v5

    sub-float/2addr v5, v1

    invoke-interface {v4, v0, v5}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    goto/16 :goto_1

    .line 1770
    :cond_2
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 1772
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/messenger/IMapsProvider;->onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->position(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->map_pin2:I

    invoke-interface {v4, v5}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->icon(I)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMap;->addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1774
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1776
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v4}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-interface {v3, v0, v4}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v0

    .line 1777
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 1778
    iput-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->firstFocus:Z

    .line 1779
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getRecentLocations()Z

    goto :goto_1

    .line 1782
    :cond_3
    new-instance v0, Landroid/location/Location;

    const-string v3, "network"

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    .line 1783
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->initialLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v3, :cond_4

    .line 1784
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 1785
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v5}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v5

    sub-float/2addr v5, v1

    invoke-interface {v4, v0, v5}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 1786
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->initialLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 1787
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->initialLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 1788
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setCustomLocation(Landroid/location/Location;)V

    goto :goto_1

    :cond_4
    const-wide v3, 0x4034a8c9539b8887L    # 20.659322

    .line 1790
    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 1791
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    const-wide v3, -0x3fd9300000000000L    # -11.40625

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 1796
    :cond_5
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMyLocationEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1798
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 1800
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->getUiSettings()Lorg/telegram/messenger/IMapsProvider$IUISettings;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$IUISettings;->setMyLocationButtonEnabled(Z)V

    .line 1801
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->getUiSettings()Lorg/telegram/messenger/IMapsProvider$IUISettings;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$IUISettings;->setZoomControlsEnabled(Z)V

    .line 1802
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->getUiSettings()Lorg/telegram/messenger/IMapsProvider$IUISettings;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$IUISettings;->setCompassEnabled(Z)V

    .line 1803
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setOnCameraMoveStartedListener(Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;)V

    .line 1825
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setOnMyLocationChangeListener(Landroidx/core/util/Consumer;)V

    .line 1830
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setOnMarkerClickListener(Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;)V

    .line 1843
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setOnCameraMoveListener(Ljava/lang/Runnable;)V

    .line 1848
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->positionMarker(Landroid/location/Location;)V

    .line 1850
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->checkGpsEnabled:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1851
    iput-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->checkGpsEnabled:Z

    .line 1852
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->checkGpsEnabled()Z

    .line 1855
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 1856
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1857
    iget v0, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    if-lez v0, :cond_7

    .line 1858
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->createCircle(I)V

    :cond_7
    return-void
.end method

.method private openDirections(Lorg/telegram/ui/LocationActivity$LiveLocation;)V
    .locals 13

    if-eqz p1, :cond_0

    .line 1357
    iget-object p1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_0

    .line 1358
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1359
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    goto :goto_0

    .line 1360
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_1

    .line 1361
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1362
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    goto :goto_0

    .line 1364
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1365
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 1368
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isHuaweiStoreApp()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "mapapp://navigation"

    goto :goto_1

    :cond_2
    const-string p1, "http://maps.google.com/maps"

    .line 1373
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "android.intent.action.VIEW"

    if-eqz v4, :cond_3

    .line 1375
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?saddr=%f,%f&daddr=%f,%f"

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v6

    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v10, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v10, v7

    const/4 v0, 0x3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v10, v0

    invoke-static {v9, p1, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v4, v8, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1376
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1378
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1382
    :cond_3
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?saddr=&daddr=%f,%f"

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v7, v5

    invoke-static {v9, p1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v4, v8, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1383
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1385
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private openProximityAlert()V
    .locals 7

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    if-nez v0, :cond_0

    const/16 v0, 0x1f4

    .line 1487
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->createCircle(I)V

    goto :goto_0

    .line 1489
    :cond_0
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ICircle;->getRadius()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/LocationActivity;->previousRadius:D

    .line 1493
    :goto_0
    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1494
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v3, v0

    .line 1498
    new-instance v0, Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda43;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/LocationActivity;)V

    new-instance v5, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda44;

    invoke-direct {v5, p0, v3}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    new-instance v6, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LocationActivity;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ProximitySheet;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/ProximitySheet$onRadiusPickerChange;Lorg/telegram/ui/Components/ProximitySheet$onRadiusPickerChange;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    .line 1552
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    .line 1553
    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1554
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProximitySheet;->show()V

    return-void
.end method

.method private openShareLiveLocation(I)V
    .locals 11

    .line 1558
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->checkGpsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1561
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->checkBackgroundPermission:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 1562
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1564
    iput p1, p0, Lorg/telegram/ui/LocationActivity;->askWithRadius:I

    const/4 v2, 0x0

    .line 1565
    iput-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->checkBackgroundPermission:Z

    .line 1566
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "backgroundloc"

    .line 1567
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    int-to-long v9, v2

    sub-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v9, 0x15180

    cmp-long v2, v5, v9

    if-lez v2, :cond_1

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1569
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v7

    long-to-int v3, v2

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1570
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-static {v0, p1, v2, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createBackgroundLocationPermissionDialog(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 1576
    :cond_1
    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1577
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1581
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda33;

    invoke-direct {v3, p0, v0, p1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$User;I)V

    invoke-static {v2, v0, v3, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createLocationUpdateDialog(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/MessagesStorage$IntCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_3
    :goto_1
    return-void
.end method

.method private positionMarker(Landroid/location/Location;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 2169
    :cond_0
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    .line 2170
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markersMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LocationActivity$LiveLocation;

    .line 2171
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 2172
    iget-object v2, v0, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v1, v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    if-ne v2, v1, :cond_1

    .line 2173
    new-instance v1, Lorg/telegram/messenger/IMapsProvider$LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 2174
    iget-object v2, v0, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v2, v1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V

    .line 2175
    iget-object v0, v0, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    if-eqz v0, :cond_1

    .line 2176
    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V

    .line 2179
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v0, :cond_5

    .line 2180
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 2181
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v2, :cond_3

    .line 2182
    iget-boolean v3, p0, Lorg/telegram/ui/LocationActivity;->searchedForCustomLocations:Z

    if-nez v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/4 v3, 0x0

    .line 2183
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v2, v3, v4, v1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;Z)V

    .line 2185
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setGpsLocation(Landroid/location/Location;)V

    .line 2187
    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    if-nez v2, :cond_6

    .line 2188
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v2, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    .line 2189
    iget-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->firstWas:Z

    if-eqz p1, :cond_4

    .line 2190
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLng(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    .line 2191
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    goto :goto_0

    .line 2193
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->firstWas:Z

    .line 2194
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v3

    invoke-interface {p1, v0, v2}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    .line 2195
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    goto :goto_0

    .line 2199
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setGpsLocation(Landroid/location/Location;)V

    .line 2201
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    if-eqz p1, :cond_7

    .line 2202
    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/ProximitySheet;->updateText(ZZ)V

    .line 2204
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    if-eqz p1, :cond_8

    .line 2205
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$ICircle;->setCenter(Lorg/telegram/messenger/IMapsProvider$LatLng;)V

    :cond_8
    return-void
.end method

.method private removeInfoView()V
    .locals 2

    .line 1915
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1917
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LocationActivity$MapOverlayView;->removeInfoView(Lorg/telegram/messenger/IMapsProvider$IMarker;)V

    const/4 v0, 0x0

    .line 1918
    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 1919
    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->lastPressedVenue:Lorg/telegram/ui/LocationActivity$VenueLocation;

    .line 1920
    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarkerView:Landroid/widget/FrameLayout;

    :cond_0
    return-void
.end method

.method private shareLiveLocation(Lorg/telegram/tgnet/TLRPC$User;II)V
    .locals 8

    .line 1585
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;-><init>()V

    .line 1586
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 1587
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1588
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 1589
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getHeading(Landroid/location/Location;)I

    move-result v0

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->heading:I

    .line 1590
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 1591
    iput p2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    .line 1592
    iput p3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->proximity_notification_radius:I

    or-int/lit8 p2, v0, 0x8

    .line 1593
    iput p2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 1594
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    if-lez p3, :cond_1

    .line 1596
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ProximitySheet;->setRadiusSet()V

    .line 1597
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_location_alert2:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1598
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    if-eqz p2, :cond_0

    .line 1599
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ProximitySheet;->dismiss()V

    .line 1601
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/16 v3, 0x18

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1603
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :goto_0
    return-void
.end method

.method private showPermissionAlert(Z)V
    .locals 5

    .line 1925
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1928
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1929
    sget v1, Lorg/telegram/messenger/R$raw;->permission_request_location:I

    const/16 v2, 0x48

    const/4 v3, 0x0

    const-string v4, "dialogTopBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-eqz p1, :cond_1

    .line 1931
    sget p1, Lorg/telegram/messenger/R$string;->PermissionNoLocationNavigation:I

    const-string v1, "PermissionNoLocationNavigation"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1933
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->PermissionNoLocationFriends:I

    const-string v1, "PermissionNoLocationFriends"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1935
    :goto_0
    sget p1, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    const-string v1, "PermissionOpenSettings"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1947
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1948
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showResults()V
    .locals 4

    .line 2002
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2005
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2009
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x102

    .line 2010
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v3, v0

    if-ltz v3, :cond_3

    .line 2011
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-le v3, v0, :cond_2

    goto :goto_0

    .line 2014
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private showSearchPlacesButton(Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1405
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1406
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    const/high16 v2, 0x43960000    # 300.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 1410
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 1413
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1414
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v2, [Landroid/animation/Animator;

    .line 1415
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v2, [F

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    const/16 p1, 0x50

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    :goto_1
    aput p1, v2, v0

    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xb4

    .line 1416
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1417
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1418
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    :goto_2
    return-void
.end method

.method private updateClipView(Z)V
    .locals 8

    .line 2020
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2022
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 2023
    iget v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2025
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    const/4 v2, 0x0

    .line 2027
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_c

    const/4 v3, 0x4

    if-gtz v2, :cond_1

    .line 2030
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v4}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2031
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v4}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2032
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2033
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    if-eqz v4, :cond_2

    .line 2034
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 2038
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v4}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 2039
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2040
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2041
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    if-eqz v3, :cond_2

    .line 2042
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2047
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2048
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v3

    neg-int v0, v0

    div-int/lit8 v4, v0, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 2049
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    if-eqz v3, :cond_3

    .line 2050
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2052
    :cond_3
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x40

    iget v5, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/16 v6, 0xa

    if-eqz v5, :cond_5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    goto :goto_2

    :cond_4
    const/16 v5, 0xa

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v5, 0x1e

    :goto_3
    add-int/2addr v4, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    .line 2053
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2054
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 2055
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    if-eqz v4, :cond_6

    .line 2056
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    .line 2058
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    if-eqz v4, :cond_7

    .line 2059
    invoke-virtual {v4, v3}, Lorg/telegram/ui/LocationActivity$SearchButton;->setTranslation(F)V

    .line 2061
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 2062
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    const/16 v4, 0x30

    goto :goto_4

    :cond_8
    const/16 v4, 0x45

    :goto_4
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/LocationActivity;->markerTop:I

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_9
    if-nez p1, :cond_c

    .line 2065
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_b

    .line 2066
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    if-eq v0, v2, :cond_b

    .line 2067
    iget v0, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2068
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v0, :cond_a

    const/16 v2, 0x46

    .line 2069
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-interface {v0, v3, v1, v2, v4}, Lorg/telegram/messenger/IMapsProvider$IMap;->setPadding(IIII)V

    .line 2071
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2073
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    if-eqz p1, :cond_c

    .line 2074
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_c

    .line 2075
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_c

    .line 2076
    iget v0, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2077
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    return-void
.end method

.method private updateEmptyView()V
    .locals 3

    .line 1391
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->searching:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 1392
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->searchInProgress:Z

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1395
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_0

    .line 1397
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 1400
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updatePlacesMarkers(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1632
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->placeMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1633
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->placeMarkers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/LocationActivity$VenueLocation;

    iget-object v3, v3, Lorg/telegram/ui/LocationActivity$VenueLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider$IMarker;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1635
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->placeMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1636
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1637
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .line 1639
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider;->onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->position(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v3

    .line 1640
    invoke-direct {p0, v1}, Lorg/telegram/ui/LocationActivity;->createPlaceBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->icon(Landroid/graphics/Bitmap;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1641
    invoke-interface {v3, v4, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->anchor(FF)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1642
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->title(Ljava/lang/String;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1643
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->snippet(Ljava/lang/String;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1644
    new-instance v4, Lorg/telegram/ui/LocationActivity$VenueLocation;

    invoke-direct {v4}, Lorg/telegram/ui/LocationActivity$VenueLocation;-><init>()V

    .line 1645
    iput v1, v4, Lorg/telegram/ui/LocationActivity$VenueLocation;->num:I

    .line 1646
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v5, v3}, Lorg/telegram/messenger/IMapsProvider$IMap;->addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/ui/LocationActivity$VenueLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 1647
    iput-object v2, v4, Lorg/telegram/ui/LocationActivity$VenueLocation;->venue:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .line 1648
    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setTag(Ljava/lang/Object;)V

    .line 1649
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->placeMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 1651
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 37

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v10, 0x0

    .line 503
    iput-boolean v10, v8, Lorg/telegram/ui/LocationActivity;->searchWas:Z

    .line 504
    iput-boolean v10, v8, Lorg/telegram/ui/LocationActivity;->searching:Z

    .line 505
    iput-boolean v10, v8, Lorg/telegram/ui/LocationActivity;->searchInProgress:Z

    .line 506
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->destroy()V

    .line 509
    :cond_0
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    if-eqz v0, :cond_1

    .line 510
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->destroy()V

    .line 512
    :cond_1
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v0, :cond_2

    .line 513
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    .line 514
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 515
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_0

    .line 516
    :cond_2
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    .line 517
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    .line 518
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 519
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 521
    :cond_3
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v11, 0x1

    if-lt v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v8, Lorg/telegram/ui/LocationActivity;->locationDenied:Z

    .line 523
    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "dialogBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 524
    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "dialogTextBlack"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 525
    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 526
    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "dialogButtonSelector"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 527
    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 528
    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 529
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 530
    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 532
    :cond_5
    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 534
    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/LocationActivity$1;

    invoke-direct {v4, v8}, Lorg/telegram/ui/LocationActivity$1;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 555
    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 556
    iget-object v4, v8, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    const/4 v12, 0x6

    const/4 v13, 0x4

    if-eqz v4, :cond_6

    .line 557
    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->ChatLocation:I

    const-string v4, "ChatLocation"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 558
    :cond_6
    iget-object v4, v8, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_a

    .line 559
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 560
    iget-object v3, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I

    const-string v5, "AttachLiveLocation"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 561
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v10, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v8, Lorg/telegram/ui/LocationActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 562
    sget v3, Lorg/telegram/messenger/R$drawable;->navigate:I

    sget v4, Lorg/telegram/messenger/R$string;->GetDirections:I

    const-string v5, "GetDirections"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v12, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto/16 :goto_3

    .line 564
    :cond_7
    iget-object v3, v8, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 565
    iget-object v3, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->SharedPlace:I

    const-string v5, "SharedPlace"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 567
    :cond_8
    iget-object v3, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->ChatLocation:I

    const-string v5, "ChatLocation"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 569
    :goto_2
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v10, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v8, Lorg/telegram/ui/LocationActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 570
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_openin:I

    sget v4, Lorg/telegram/messenger/R$string;->OpenInExternalApp:I

    const-string v5, "OpenInExternalApp"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v11, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 571
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v1

    iget-wide v3, v8, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v1

    if-nez v1, :cond_9

    .line 572
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x5

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_location:I

    sget v5, Lorg/telegram/messenger/R$string;->SendLiveLocationMenu:I

    const-string v6, "SendLiveLocationMenu"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 574
    :cond_9
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v4, "AccDescrMoreOptions"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 577
    :cond_a
    iget-object v4, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ShareLocation:I

    const-string v6, "ShareLocation"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 579
    iget v4, v8, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eq v4, v13, :cond_b

    .line 580
    new-instance v4, Lorg/telegram/ui/LocationActivity$MapOverlayView;

    invoke-direct {v4, v8, v9}, Lorg/telegram/ui/LocationActivity$MapOverlayView;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V

    iput-object v4, v8, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    .line 582
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v1, v10, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/LocationActivity$2;

    invoke-direct {v4, v8}, Lorg/telegram/ui/LocationActivity$2;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v8, Lorg/telegram/ui/LocationActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 629
    sget v4, Lorg/telegram/messenger/R$string;->Search:I

    const-string v5, "Search"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v5, "Search"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    .line 632
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 633
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const-string v3, "chat_messagePanelHint"

    .line 634
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 638
    :cond_b
    :goto_3
    new-instance v1, Lorg/telegram/ui/LocationActivity$3;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/LocationActivity$3;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 662
    move-object v14, v1

    check-cast v14, Landroid/widget/FrameLayout;

    .line 663
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 665
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v8, Lorg/telegram/ui/LocationActivity;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 666
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 667
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 668
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 671
    iget v1, v8, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v7, -0x1

    const/16 v6, 0x15

    if-eqz v1, :cond_d

    if-ne v1, v11, :cond_c

    goto :goto_4

    .line 674
    :cond_c
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget v3, v15, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    invoke-direct {v1, v7, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_5

    .line 672
    :cond_d
    :goto_4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget v3, v15, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    invoke-direct {v1, v7, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_5
    move-object v4, v1

    const/16 v1, 0x53

    .line 676
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 678
    new-instance v1, Lorg/telegram/ui/LocationActivity$4;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/LocationActivity$4;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    .line 687
    new-instance v2, Lorg/telegram/ui/Components/MapPlaceholderDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/MapPlaceholderDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 689
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    const-string v3, "location_actionActiveIcon"

    const/high16 v5, -0x1000000

    const v16, 0x10100a7

    const-string v17, "location_actionPressedBackground"

    const-string v18, "location_actionBackground"

    const/16 v19, 0x2c

    move-object/from16 v21, v3

    const/16 v22, 0x28

    const/4 v7, 0x2

    if-nez v1, :cond_11

    iget v1, v8, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eqz v1, :cond_e

    if-ne v1, v11, :cond_11

    .line 690
    :cond_e
    new-instance v1, Lorg/telegram/ui/LocationActivity$SearchButton;

    invoke-direct {v1, v9}, Lorg/telegram/ui/LocationActivity$SearchButton;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    const/16 v24, 0x50

    .line 691
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v1, v12}, Lorg/telegram/ui/LocationActivity$SearchButton;->setTranslationX(F)V

    .line 692
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v12, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ge v0, v6, :cond_f

    .line 694
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->places_btn:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 695
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 696
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-direct {v3, v2, v1, v12, v5}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 697
    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    move-object v1, v3

    move-object/from16 v26, v14

    goto :goto_6

    .line 700
    :cond_f
    new-instance v2, Landroid/animation/StateListAnimator;

    invoke-direct {v2}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v3, v11, [I

    aput v16, v3, v10

    .line 701
    iget-object v5, v8, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    sget-object v12, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v6, v7, [F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    aput v11, v6, v10

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    const/16 v25, 0x1

    aput v11, v6, v25

    invoke-static {v5, v12, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object/from16 v26, v14

    const-wide/16 v13, 0xc8

    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v3, v10, [I

    .line 702
    iget-object v5, v8, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    new-array v6, v7, [F

    const/4 v11, 0x4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v6, v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    const/4 v14, 0x1

    aput v13, v6, v14

    invoke-static {v5, v12, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v12, 0xc8

    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 703
    iget-object v3, v8, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 704
    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    new-instance v3, Lorg/telegram/ui/LocationActivity$5;

    invoke-direct {v3, v8}, Lorg/telegram/ui/LocationActivity$5;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 712
    :goto_6
    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 713
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 714
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 715
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 716
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    sget v2, Lorg/telegram/messenger/R$string;->PlacesInThisArea:I

    const-string v3, "PlacesInThisArea"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 718
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v2, v10, v3, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 719
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    const/16 v27, -0x2

    const/16 v3, 0x15

    if-lt v0, v3, :cond_10

    const/16 v28, 0x28

    goto :goto_7

    :cond_10
    const/16 v28, 0x2c

    :goto_7
    const/16 v29, 0x31

    const/16 v30, 0x50

    const/16 v31, 0xc

    const/16 v32, 0x50

    const/16 v33, 0x0

    invoke-static/range {v27 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v8}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    :cond_11
    move-object/from16 v26, v14

    .line 728
    :goto_8
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x0

    const-string v12, "location_actionIcon"

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v9, v2, v10, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x1

    .line 729
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 730
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 731
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v13, 0xa

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalXOffset(I)V

    .line 732
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 733
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_map:I

    sget v3, Lorg/telegram/messenger/R$string;->Map:I

    const-string v5, "Map"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v7, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 734
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x3

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_satellite:I

    sget v5, Lorg/telegram/messenger/R$string;->Satellite:I

    const-string v6, "Satellite"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 735
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_hybrid:I

    sget v3, Lorg/telegram/messenger/R$string;->Hybrid:I

    const-string v5, "Hybrid"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 736
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v3, "AccDescrMoreOptions"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 737
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x15

    if-ge v0, v2, :cond_12

    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_shadow_profile:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 740
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/high16 v6, -0x1000000

    invoke-direct {v3, v6, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 741
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v3, v2, v1, v10, v10}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 742
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v1, v3

    goto :goto_9

    .line 745
    :cond_12
    new-instance v2, Landroid/animation/StateListAnimator;

    invoke-direct {v2}, Landroid/animation/StateListAnimator;-><init>()V

    const/4 v3, 0x1

    new-array v5, v3, [I

    aput v16, v5, v10

    .line 746
    iget-object v6, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v14, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v11, v7, [F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v11, v10

    const/4 v13, 0x4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v11, v3

    invoke-static {v6, v14, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v3, v10, [I

    .line 747
    iget-object v5, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v6, 0x2

    new-array v7, v6, [F

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    move v13, v11

    int-to-float v13, v13

    aput v13, v7, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v6, v13

    const/4 v13, 0x1

    aput v6, v7, v13

    invoke-static {v5, v14, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 748
    iget-object v3, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 749
    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/LocationActivity$6;

    invoke-direct {v3, v8}, Lorg/telegram/ui/LocationActivity$6;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 757
    :goto_9
    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 758
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_map_type:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 759
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x15

    if-lt v0, v3, :cond_13

    const/16 v29, 0x28

    goto :goto_a

    :cond_13
    const/16 v29, 0x2c

    :goto_a
    if-lt v0, v3, :cond_14

    const/16 v30, 0x28

    goto :goto_b

    :cond_14
    const/16 v30, 0x2c

    :goto_b
    const/16 v31, 0x35

    const/16 v32, 0x0

    const/16 v33, 0xc

    const/16 v34, 0xc

    const/16 v35, 0x0

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, v8}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda36;

    invoke-direct {v2, v8}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 774
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    .line 775
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x15

    if-ge v0, v2, :cond_15

    .line 777
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_shadow_profile:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 778
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/high16 v6, -0x1000000

    invoke-direct {v3, v6, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 779
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v3, v2, v1, v10, v10}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 780
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v1, v3

    goto :goto_c

    .line 783
    :cond_15
    new-instance v2, Landroid/animation/StateListAnimator;

    invoke-direct {v2}, Landroid/animation/StateListAnimator;-><init>()V

    const/4 v3, 0x1

    new-array v5, v3, [I

    aput v16, v5, v10

    .line 784
    iget-object v6, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v13, 0x2

    new-array v14, v13, [F

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    aput v11, v14, v10

    const/4 v11, 0x4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v14, v3

    invoke-static {v6, v7, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v13, 0xc8

    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v3, v10, [I

    .line 785
    iget-object v5, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    const/4 v6, 0x2

    new-array v13, v6, [F

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    aput v14, v13, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v6, v14

    const/4 v14, 0x1

    aput v6, v13, v14

    invoke-static {v5, v7, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 786
    iget-object v3, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 787
    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$7;

    invoke-direct {v3, v8}, Lorg/telegram/ui/LocationActivity$7;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 795
    :goto_c
    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 796
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_current_location:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 797
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 798
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 799
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 800
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMyLocation:I

    const-string v3, "AccDescrMyLocation"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v1, 0x15

    if-lt v0, v1, :cond_16

    const/16 v29, 0x28

    goto :goto_d

    :cond_16
    const/16 v29, 0x2c

    :goto_d
    if-lt v0, v1, :cond_17

    const/16 v30, 0x28

    goto :goto_e

    :cond_17
    const/16 v30, 0x2c

    :goto_e
    const/16 v31, 0x55

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0xc

    const/16 v35, 0xc

    .line 801
    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 802
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 803
    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v3, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v8}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    .line 842
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x15

    if-ge v0, v2, :cond_18

    .line 844
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_shadow_profile:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 845
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/high16 v6, -0x1000000

    invoke-direct {v3, v6, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 846
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v3, v2, v1, v10, v10}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 847
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v1, v3

    const/4 v13, 0x2

    goto :goto_f

    .line 850
    :cond_18
    new-instance v2, Landroid/animation/StateListAnimator;

    invoke-direct {v2}, Landroid/animation/StateListAnimator;-><init>()V

    const/4 v3, 0x1

    new-array v5, v3, [I

    aput v16, v5, v10

    .line 851
    iget-object v6, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v13, 0x2

    new-array v14, v13, [F

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    aput v11, v14, v10

    const/4 v11, 0x4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v14, v3

    invoke-static {v6, v7, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v13, 0xc8

    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v3, v10, [I

    .line 852
    iget-object v5, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    const/4 v13, 0x2

    new-array v6, v13, [F

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    aput v14, v6, v10

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    const/16 v16, 0x1

    aput v14, v6, v16

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 853
    iget-object v3, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 854
    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$8;

    invoke-direct {v3, v8}, Lorg/telegram/ui/LocationActivity$8;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 862
    :goto_f
    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 863
    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 864
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 865
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrLocationNotify:I

    const-string v3, "AccDescrLocationNotify"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    const/16 v6, 0x15

    if-lt v0, v6, :cond_19

    const/16 v28, 0x28

    goto :goto_10

    :cond_19
    const/16 v28, 0x2c

    :goto_10
    if-lt v0, v6, :cond_1a

    const/16 v29, 0x28

    goto :goto_11

    :cond_1a
    const/16 v29, 0x2c

    :goto_11
    const/16 v30, 0x35

    const/16 v31, 0x0

    const/16 v32, 0x3e

    const/16 v33, 0xc

    const/16 v34, 0x0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, v8}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 901
    iget-wide v1, v8, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 902
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v8, Lorg/telegram/ui/LocationActivity;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    :cond_1b
    move-object v14, v0

    .line 904
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/16 v7, 0x8

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->isExpiredLiveLocation(I)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {v14}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_1c

    goto :goto_12

    .line 908
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-wide v1, v8, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 909
    iget v0, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    if-lez v0, :cond_1d

    .line 910
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_location_alert2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_13

    .line 912
    :cond_1d
    iget-wide v0, v8, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-nez v5, :cond_1e

    .line 913
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 914
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 915
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 916
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 918
    :cond_1e
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_location_alert:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_13

    .line 905
    :cond_1f
    :goto_12
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 906
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_location_alert:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 922
    :goto_13
    new-instance v0, Lorg/telegram/ui/Components/HintView;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {v0, v9, v1, v2}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, v8, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    const/4 v1, 0x4

    .line 923
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 924
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/HintView;->setShowingDuration(J)V

    .line 925
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    const/16 v28, -0x2

    const/16 v29, -0x2

    const/16 v30, 0x33

    const/16 v31, 0xa

    const/16 v32, 0x0

    const/16 v33, 0xa

    const/16 v34, 0x0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 927
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 928
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 929
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 930
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v1, 0xa0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v10, v1, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 931
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 932
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    invoke-static {v5, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    move-object/from16 v3, v26

    invoke-virtual {v3, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    sget-object v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda9;->INSTANCE:Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda9;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 935
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyImageView:Landroid/widget/ImageView;

    .line 936
    sget v1, Lorg/telegram/messenger/R$drawable;->location_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 937
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "dialogEmptyImage"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 938
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->emptyImageView:Landroid/widget/ImageView;

    const/4 v2, -0x2

    const/4 v5, -0x2

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyTitleTextView:Landroid/widget/TextView;

    const-string v1, "dialogEmptyText"

    .line 941
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 942
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyTitleTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 943
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyTitleTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 944
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyTitleTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41880000    # 17.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 945
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyTitleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->NoPlacesFound:I

    const-string v2, "NoPlacesFound"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->emptyTitleTextView:Landroid/widget/TextView;

    const/16 v30, 0x11

    const/16 v31, 0x0

    const/16 v32, 0xb

    const/16 v33, 0x0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 948
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptySubtitleTextView:Landroid/widget/TextView;

    const-string v1, "dialogEmptyText"

    .line 949
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 950
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptySubtitleTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 951
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptySubtitleTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 952
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptySubtitleTextView:Landroid/widget/TextView;

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v10, v2, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 953
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->emptySubtitleTextView:Landroid/widget/TextView;

    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v18, 0x11

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    new-instance v5, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v5, v9}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v5, v8, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 956
    new-instance v2, Lorg/telegram/ui/LocationActivity$9;

    iget v1, v8, Lorg/telegram/ui/LocationActivity;->locationType:I

    iget-wide v6, v8, Lorg/telegram/ui/LocationActivity;->dialogId:J

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v0, v2

    move/from16 v19, v1

    move-object/from16 v1, p0

    move-object v11, v2

    move-object/from16 v2, p1

    move-object v13, v3

    move/from16 v3, v19

    move-object/from16 v36, v4

    move-object v10, v5

    const/16 v21, -0x1

    move-wide v4, v6

    const/16 v7, 0x15

    move/from16 v6, v17

    move-object/from16 v17, v12

    const/4 v12, -0x1

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LocationActivity$9;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;IJZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v8, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 979
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-boolean v1, v8, Lorg/telegram/ui/LocationActivity;->locationDenied:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setMyLocationDenied(Z)V

    .line 980
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, v8}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setUpdateRunnable(Ljava/lang/Runnable;)V

    .line 981
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 982
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x1

    invoke-direct {v2, v9, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, v8, Lorg/telegram/ui/LocationActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 983
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x33

    invoke-static {v12, v12, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 985
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/LocationActivity$10;

    invoke-direct {v2, v8}, Lorg/telegram/ui/LocationActivity$10;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1002
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1003
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda47;

    invoke-direct {v2, v8, v9}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1044
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda45;

    invoke-direct {v2, v8}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1129
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-wide v2, v8, Lorg/telegram/ui/LocationActivity;->dialogId:J

    new-instance v4, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda38;

    invoke-direct {v4, v8}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->setDelegate(JLorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;)V

    .line 1130
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget v2, v8, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setOverScrollHeight(I)V

    .line 1132
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-static {v12, v12, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    invoke-interface {v0, v9}, Lorg/telegram/messenger/IMapsProvider;->onCreateMapView(Landroid/content/Context;)Lorg/telegram/messenger/IMapsProvider$IMapView;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    .line 1135
    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda29;

    invoke-direct {v2, v8}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->setOnDispatchTouchEventInterceptor(Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;)V

    .line 1147
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda30;

    invoke-direct {v2, v8}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->setOnInterceptTouchEventInterceptor(Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;)V

    .line 1185
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda19;

    invoke-direct {v2, v8}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->setOnLayoutListener(Ljava/lang/Runnable;)V

    .line 1191
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    .line 1192
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda25;

    invoke-direct {v3, v8, v0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$IMapView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1222
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1224
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_22

    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-nez v2, :cond_22

    if-eqz v14, :cond_20

    .line 1225
    iget v0, v8, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_20

    iget-wide v2, v8, Lorg/telegram/ui/LocationActivity;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_20

    .line 1226
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1227
    sget v2, Lorg/telegram/messenger/R$drawable;->livepin:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1228
    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    const/16 v3, 0x3e

    const/16 v4, 0x4c

    const/16 v5, 0x31

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1230
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x1a

    .line 1231
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1232
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3, v14}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v2, v14, v3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/16 v28, 0x34

    const/16 v29, 0x34

    const/16 v30, 0x33

    const/16 v31, 0x5

    const/16 v32, 0x5

    const/16 v33, 0x0

    const/16 v34, 0x0

    .line 1233
    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1235
    iput-object v0, v8, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    const/4 v2, 0x1

    .line 1236
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1239
    :cond_20
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    if-nez v0, :cond_21

    .line 1240
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1241
    sget v2, Lorg/telegram/messenger/R$drawable;->map_pin2:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1242
    iget-object v2, v8, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    const/16 v3, 0x1c

    const/16 v4, 0x30

    const/16 v5, 0x31

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1243
    iput-object v0, v8, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    .line 1246
    :cond_21
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0x8

    .line 1247
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1248
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v9, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1249
    new-instance v0, Lorg/telegram/ui/LocationActivity$12;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/LocationActivity$12;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    const-wide/16 v2, 0x0

    .line 1261
    new-instance v5, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda39;

    invoke-direct {v5, v8}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->setDelegate(JLorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;)V

    .line 1265
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v12, v12, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/LocationActivity$13;

    invoke-direct {v1, v8}, Lorg/telegram/ui/LocationActivity$13;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1274
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda46;

    invoke-direct {v1, v8}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    goto :goto_14

    :cond_22
    const/4 v4, 0x0

    if-eqz v0, :cond_23

    .line 1288
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v0, :cond_26

    .line 1289
    :cond_24
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v0, :cond_25

    .line 1290
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setChatLocation(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)V

    goto :goto_14

    .line 1291
    :cond_25
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_26

    .line 1292
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 1295
    :cond_26
    :goto_14
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_27

    iget v1, v8, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_27

    .line 1296
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    :cond_27
    const/4 v0, 0x2

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v0, :cond_29

    .line 1301
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    new-instance v2, Lorg/telegram/ui/Components/UndoView;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v10

    .line 1302
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v10

    const/16 v2, 0xa

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UndoView;->setAdditionalTranslationY(F)V

    .line 1303
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_28

    .line 1304
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v10

    const/4 v4, 0x5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 1306
    :cond_28
    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v4, v8, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v4, v4, v10

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x53

    const/16 v21, 0x8

    const/16 v22, 0x0

    const/16 v23, 0x8

    const/16 v24, 0x8

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_29
    const/16 v3, 0x15

    .line 1309
    new-instance v0, Lorg/telegram/ui/LocationActivity$14;

    invoke-direct {v0, v8, v9, v15}, Lorg/telegram/ui/LocationActivity$14;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;Landroid/graphics/Rect;)V

    iput-object v0, v8, Lorg/telegram/ui/LocationActivity;->shadow:Landroid/view/View;

    .line 1329
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_2a

    const/4 v1, 0x6

    .line 1330
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 1332
    :cond_2a
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/LocationActivity;->shadow:Landroid/view/View;

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1334
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_2b

    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-nez v0, :cond_2b

    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->initialLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    .line 1335
    iput-boolean v0, v8, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    .line 1336
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1337
    iget-object v0, v8, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1340
    :cond_2b
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1341
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LocationActivity;->updateEmptyView()V

    .line 1343
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 11

    .line 2437
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 2438
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    goto/16 :goto_6

    .line 2439
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    .line 2440
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->locationDenied:Z

    .line 2441
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz p1, :cond_1

    .line 2442
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setMyLocationDenied(Z)V

    .line 2444
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p1, :cond_13

    .line 2446
    :try_start_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    .line 2448
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 2451
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionDenied:I

    if-ne p1, p2, :cond_3

    .line 2452
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->locationDenied:Z

    .line 2453
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz p1, :cond_13

    .line 2454
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setMyLocationDenied(Z)V

    goto/16 :goto_6

    .line 2456
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    if-ne p1, p2, :cond_4

    .line 2457
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz p1, :cond_13

    .line 2458
    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateLiveLocationCell()V

    goto/16 :goto_6

    .line 2460
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    if-ne p1, p2, :cond_b

    const/4 p1, 0x2

    .line 2461
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 2465
    :cond_5
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 2466
    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_6

    goto :goto_2

    .line 2469
    :cond_6
    aget-object p1, p3, v0

    check-cast p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 2471
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v1, p3, :cond_9

    .line 2472
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/MessageObject;

    .line 2473
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2474
    iget-object p2, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p0, p2}, Lorg/telegram/ui/LocationActivity;->addUserMarker(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/ui/LocationActivity$LiveLocation;

    const/4 p2, 0x1

    goto :goto_1

    .line 2476
    :cond_7
    iget-object v2, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoProximityReached;

    if-eqz v2, :cond_8

    .line 2477
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 2478
    iget-object p3, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_location_alert:I

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2479
    iget-object p3, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    if-eqz p3, :cond_8

    .line 2480
    invoke-interface {p3}, Lorg/telegram/messenger/IMapsProvider$ICircle;->remove()V

    const/4 p3, 0x0

    .line 2481
    iput-object p3, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    :cond_8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    if-eqz p2, :cond_13

    .line 2486
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz p1, :cond_13

    .line 2487
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setLiveLocations(Ljava/util/ArrayList;)V

    goto/16 :goto_6

    :cond_a
    :goto_2
    return-void

    .line 2489
    :cond_b
    sget p2, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    if-ne p1, p2, :cond_13

    .line 2490
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 2491
    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_c

    goto/16 :goto_6

    .line 2495
    :cond_c
    aget-object p3, p3, v0

    check-cast p3, Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2496
    :goto_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_12

    .line 2497
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 2498
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_5

    .line 2501
    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->markersMap:Landroidx/collection/LongSparseArray;

    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p0, v6}, Lorg/telegram/ui/LocationActivity;->getMessageId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/LocationActivity$LiveLocation;

    if-eqz v5, :cond_11

    .line 2503
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 2504
    iget v3, v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-eq v3, v6, :cond_10

    .line 2505
    :cond_e
    iget-object v3, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    .line 2506
    new-instance v6, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 2507
    iget-object v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v3, v6}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V

    .line 2508
    iget-object v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    if-eqz v3, :cond_10

    .line 2509
    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    .line 2510
    iget-object v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v3, v6}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V

    .line 2511
    iget-object v3, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->heading:I

    if-eqz v3, :cond_f

    .line 2512
    iget-object v4, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v4, v3}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setRotation(I)V

    .line 2513
    iget-boolean v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->hasRotation:Z

    if-nez v3, :cond_10

    .line 2514
    iget-object v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    sget v4, Lorg/telegram/messenger/R$drawable;->map_pin_cone2:I

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setIcon(I)V

    .line 2515
    iput-boolean v0, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->hasRotation:Z

    goto :goto_4

    .line 2518
    :cond_f
    iget-boolean v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->hasRotation:Z

    if-eqz v3, :cond_10

    .line 2519
    iget-object v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v3, v1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setRotation(I)V

    .line 2520
    iget-object v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    sget v4, Lorg/telegram/messenger/R$drawable;->map_pin_circle:I

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setIcon(I)V

    .line 2521
    iput-boolean v1, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->hasRotation:Z

    :cond_10
    :goto_4
    const/4 v3, 0x1

    :cond_11
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_12
    if-eqz v3, :cond_13

    .line 2529
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz p1, :cond_13

    .line 2530
    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateLiveLocations()V

    .line 2531
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    if-eqz p1, :cond_13

    .line 2532
    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/ProximitySheet;->updateText(ZZ)V

    nop

    :cond_13
    :goto_6
    return-void
.end method

.method public finishFragment(Z)V
    .locals 1

    .line 2569
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->onCheckGlScreenshot()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2573
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2702
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2704
    new-instance v10, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda37;

    invoke-direct {v10, v0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/LocationActivity;)V

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 2737
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    array-length v3, v3

    const/4 v12, 0x1

    if-ge v2, v3, :cond_0

    .line 2738
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v14, v4, v2

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "undo_background"

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2739
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v22, v4, v2

    const/16 v23, 0x0

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v11

    const-string v5, "undoImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, "undo_cancelColor"

    move-object/from16 v21, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2740
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v14, v4, v2

    const/4 v15, 0x0

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v11

    const-string v5, "undoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const-string v21, "undo_cancelColor"

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2741
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v23, v4, v2

    const/16 v24, 0x0

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v11

    const-string v5, "infoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v29, 0x0

    const-string v30, "undo_infoColor"

    move-object/from16 v22, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2742
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v14, v4, v2

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v11

    const-string v5, "subinfoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "undo_infoColor"

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2743
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v23, v4, v2

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v11

    const-string v5, "textPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "undo_infoColor"

    move-object/from16 v22, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2744
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v14, v4, v2

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v11

    const-string v5, "progressPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "undo_infoColor"

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2745
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v23, v4, v2

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v11

    const-string v5, "leftImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v27, "BODY"

    const-string v28, "undo_background"

    move-object/from16 v22, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2746
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v14, v4, v2

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/UndoView;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "Wibe Big"

    const-string v19, "undo_background"

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2747
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v21, v4, v2

    const/16 v22, 0x0

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/UndoView;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const-string v25, "Wibe Big 3"

    const-string v26, "undo_infoColor"

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2748
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v14, v4, v2

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/UndoView;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "Wibe Small"

    const-string v19, "undo_infoColor"

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2749
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v21, v4, v2

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/UndoView;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const-string v25, "Body Main.**"

    const-string v26, "undo_infoColor"

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2750
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v14, v4, v2

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/UndoView;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "Body Top.**"

    const-string v19, "undo_infoColor"

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2751
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v21, v4, v2

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/UndoView;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const-string v25, "Line.**"

    const-string v26, "undo_infoColor"

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2752
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v14, v4, v2

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/UndoView;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "Curve Big.**"

    const-string v19, "undo_infoColor"

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2753
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v21, v4, v2

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/UndoView;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const-string v25, "Curve Small.**"

    const-string v26, "undo_infoColor"

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2756
    :cond_0
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "dialogBackground"

    move-object v2, v13

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2758
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "dialogBackground"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2759
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, "dialogBackground"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2760
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/16 v16, 0x0

    const-string v20, "dialogTextBlack"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2761
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v24, 0x0

    const-string v28, "dialogTextBlack"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2762
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v20, "dialogButtonSelector"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2763
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const-string v28, "dialogTextBlack"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2764
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const-string v20, "chat_messagePanelHint"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2765
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v22, v3

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "dialogTextBlack"

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2766
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "actionBarDefaultSubmenuBackground"

    move-object v2, v13

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2767
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const-string v9, "actionBarDefaultSubmenuItem"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2768
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v4, v2

    const-string v9, "actionBarDefaultSubmenuItemIcon"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2770
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "listSelectorSDK21"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2772
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v24, 0x0

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v11

    sget-object v26, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/16 v28, 0x0

    const-string v29, "divider"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2774
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->emptyImageView:Landroid/widget/ImageView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/16 v16, 0x0

    const-string v20, "dialogEmptyImage"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2775
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->emptyTitleTextView:Landroid/widget/TextView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v28, "dialogEmptyText"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2776
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->emptySubtitleTextView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v20, "dialogEmptyText"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2777
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->shadow:Landroid/view/View;

    const/16 v23, 0x0

    const-string v28, "key_sheet_scrollUp"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2779
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v3, v4

    const-string v20, "location_actionIcon"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2780
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v23, v4, v5

    const-string v28, "location_actionActiveIcon"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2781
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v20, "location_actionBackground"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2782
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v23, v4, v5

    const-string v28, "location_actionPressedBackground"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2784
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v9, "location_actionIcon"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2785
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v20, 0x0

    const-string v21, "location_actionBackground"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2786
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v24, v4, v5

    const/16 v28, 0x0

    const-string v29, "location_actionPressedBackground"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2788
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v9, "location_actionIcon"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2789
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v21, "location_actionBackground"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2790
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v24, v4, v5

    const-string v29, "location_actionPressedBackground"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2792
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v16, 0x0

    const-string v20, "location_actionActiveIcon"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2793
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v24, 0x0

    const-string v28, "location_actionBackground"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2794
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v15, v3, v4

    const-string v20, "location_actionPressedBackground"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2796
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const-string v9, "avatar_text"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2797
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v7, 0x0

    const-string v9, "avatar_backgroundRed"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2798
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundOrange"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2799
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundViolet"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2800
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundGreen"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2801
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundCyan"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2802
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundBlue"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2803
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundPink"

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2805
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const-string v21, "location_liveLocationProgress"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2806
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "location_placeLocationBackground"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2807
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v20, "dialog_liveLocationProgress"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2809
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v23, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/SendLocationCell;

    aput-object v5, v4, v11

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x0

    const-string v29, "location_sendLocationIcon"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2810
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v3, v4

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SendLocationCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const-string v21, "location_sendLiveLocationIcon"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2811
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v4, v6

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v24, v4, v6

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SendLocationCell;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v29, 0x0

    const-string v30, "location_sendLocationBackground"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2812
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v3, v4

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v3, v4

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SendLocationCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "location_sendLiveLocationBackground"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2813
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v24, 0x0

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SendLocationCell;

    aput-object v6, v4, v11

    const-string v6, "accurateTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "windowBackgroundWhiteGrayText3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2814
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SendLocationCell;

    aput-object v4, v3, v11

    const-string v4, "titleTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "location_sendLiveLocationText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2815
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SendLocationCell;

    aput-object v7, v6, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "location_sendLocationText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v6

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2817
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v15, 0x0

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationDirectionCell;

    aput-object v4, v3, v11

    const-string v4, "buttonTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "featuredStickers_buttonText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2818
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/LocationDirectionCell;

    aput-object v6, v4, v11

    const-string v6, "frameLayout"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "featuredStickers_addButton"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2819
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v15, v3, v4

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationDirectionCell;

    aput-object v4, v3, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "featuredStickers_addButtonPressed"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2821
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v6, v4, v11

    const/16 v26, 0x0

    const-string v29, "windowBackgroundGrayShadow"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2822
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v15, v3, v4

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v4, v3, v11

    const/16 v17, 0x0

    const-string v20, "windowBackgroundGray"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2824
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v23, 0x0

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v4, v11

    const-string v6, "textView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v25

    const-string v29, "dialogTextBlue2"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2826
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const-string v21, "windowBackgroundWhiteGrayText3"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2827
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v24, 0x0

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v7, v4, v11

    const-string v7, "nameTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v26

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteBlackText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2828
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v15, 0x0

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v4, v3, v11

    const-string v4, "addressTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteGrayText3"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2830
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v8, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v9, v8, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "windowBackgroundWhiteGrayText3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v8

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2831
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v8, v3, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2832
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v24, 0x0

    new-array v8, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v9, v8, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "windowBackgroundWhiteGrayText3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v8

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2834
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SharingLiveLocationCell;

    aput-object v4, v3, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2835
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharingLiveLocationCell;

    aput-object v7, v4, v11

    const-string v7, "distanceTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "windowBackgroundWhiteGrayText3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2837
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationLoadingCell;

    aput-object v4, v3, v11

    const-string v4, "progressBar"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "progressCircle"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2838
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/LocationLoadingCell;

    aput-object v7, v4, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "windowBackgroundWhiteGrayText3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2839
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationLoadingCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteGrayText3"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2841
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/LocationPoweredCell;

    aput-object v7, v4, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "windowBackgroundWhiteGrayText3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2842
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationPoweredCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "dialogEmptyImage"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2843
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/LocationPoweredCell;

    aput-object v5, v4, v11

    const-string v5, "textView2"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "dialogEmptyText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public hasForceLightStatusBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBackPressed()Z
    .locals 2

    .line 2556
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2557
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProximitySheet;->dismiss()V

    return v1

    .line 2560
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->onCheckGlScreenshot()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2564
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onBecomeFullyHidden()V
    .locals 3

    .line 2625
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 2626
    aget-object v0, v0, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 430
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 431
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 432
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 433
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionDenied:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 434
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 437
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 444
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 445
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 446
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionDenied:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 447
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 448
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 449
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 450
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    .line 452
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v1, :cond_0

    .line 453
    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 456
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 459
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v1, :cond_1

    .line 460
    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 463
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 465
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 466
    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 468
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v0, :cond_3

    .line 469
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->destroy()V

    .line 471
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    if-eqz v0, :cond_4

    .line 472
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->destroy()V

    .line 474
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->updateRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 475
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 476
    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->updateRunnable:Ljava/lang/Runnable;

    .line 478
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markAsReadRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 479
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 480
    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->markAsReadRunnable:Ljava/lang/Runnable;

    :cond_6
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 2680
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onLowMemory()V

    .line 2681
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->mapsInitialized:Z

    if-eqz v1, :cond_0

    .line 2682
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 2540
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2541
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->mapsInitialized:Z

    if-eqz v1, :cond_0

    .line 2543
    :try_start_0
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2545
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2548
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 2549
    aget-object v0, v0, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 2551
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->onResumeCalled:Z

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x1e

    if-ne p1, p2, :cond_0

    .line 2669
    iget p1, p0, Lorg/telegram/ui/LocationActivity;->askWithRadius:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->openShareLiveLocation(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 2632
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2633
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 2634
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 2635
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->mapsInitialized:Z

    if-eqz v1, :cond_0

    .line 2637
    :try_start_0
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2639
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 2642
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->onResumeCalled:Z

    .line 2643
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v1, :cond_1

    .line 2645
    :try_start_1
    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMyLocationEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 2647
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2650
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->fixLayoutInternal(Z)V

    .line 2651
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->checkPermission:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 2652
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2654
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->checkPermission:Z

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2655
    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 2656
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 2660
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markAsReadRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 2661
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2662
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markAsReadRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 1955
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 1956
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 1957
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {p2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1962
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    const/16 p2, 0x33

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_3

    .line 1963
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v1, v3, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1964
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    if-eqz p1, :cond_2

    .line 1966
    :try_start_1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 1967
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 1968
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1973
    :catch_1
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    const/4 v3, 0x1

    iget v5, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v5, v4

    invoke-static {v1, v5, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v2, v3, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1975
    :cond_2
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->updateClipView(Z)V

    .line 1976
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->maybeShowProximityHint()V

    goto :goto_1

    .line 1977
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 1978
    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v2, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setChatLocation(JLorg/telegram/tgnet/TLRPC$TL_channelLocation;)V
    .locals 0

    neg-long p1, p1

    .line 2215
    iput-wide p1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    .line 2216
    iput-object p3, p0, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V
    .locals 0

    .line 2687
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    return-void
.end method

.method public setDialogId(J)V
    .locals 0

    .line 2220
    iput-wide p1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    return-void
.end method

.method public setInitialLocation(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)V
    .locals 0

    .line 2224
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->initialLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    .line 2210
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 2211
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    return-void
.end method
