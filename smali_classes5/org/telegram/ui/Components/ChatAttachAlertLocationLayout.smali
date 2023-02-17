.class public Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "ChatAttachAlertLocationLayout.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;,
        Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;,
        Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;,
        Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LiveLocation;,
        Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private bitmapCache:[Landroid/graphics/Bitmap;

.field private checkBackgroundPermission:Z

.field private checkGpsEnabled:Z

.field private checkPermission:Z

.field private clipSize:I

.field private currentMapStyleDark:Z

.field private delegate:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

.field private dialogId:J

.field private doNotDrawMap:Z

.field private emptyImageView:Landroid/widget/ImageView;

.field private emptySubtitleTextView:Landroid/widget/TextView;

.field private emptyTitleTextView:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/LinearLayout;

.field private first:Z

.field private firstWas:Z

.field private forceUpdate:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

.field private ignoreLayout:Z

.field private isFirstLocation:Z

.field private lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

.field private lastPressedMarkerView:Landroid/widget/FrameLayout;

.field private lastPressedVenue:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;

.field private layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingMapView:Landroid/view/View;

.field private locationButton:Landroid/widget/ImageView;

.field private locationDenied:Z

.field private locationType:I

.field private map:Lorg/telegram/messenger/IMapsProvider$IMap;

.field private mapHeight:I

.field private mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

.field private mapViewClip:Landroid/widget/FrameLayout;

.field private mapsInitialized:Z

.field private markerImageView:Landroid/widget/ImageView;

.field private markerTop:I

.field private myLocation:Landroid/location/Location;

.field private nonClipSize:I

.field private onResumeCalled:Z

.field private otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private overScrollHeight:I

.field private overlayView:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

.field private placeMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;",
            ">;"
        }
    .end annotation
.end field

.field private scrolling:Z

.field private searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

.field private searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

.field private searchInProgress:Z

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private searchWas:Z

.field private searchedForCustomLocations:Z

.field private searching:Z

.field private userLocation:Landroid/location/Location;

.field private userLocationMoved:Z

.field private yOffset:F


# direct methods
.method public static synthetic $r8$lambda$-orliXBMnyEY17KVU6XJzQTvex0(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$onMapInit$20(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$04waZulHCdDCtuqB9TpP-yQFObU(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/messenger/IMapsProvider$IMapView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$13(Lorg/telegram/messenger/IMapsProvider$IMapView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A5LBTZwLsw9j7-g1Ljxxl1gTfgs(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$7(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$A7IeBrwK7JVh6CdtKOoiUmfplDU(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$4(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$C0vadsa_TPrM2jXLzNWZZ8gDmSw(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->updatePlacesMarkers(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DUq5u0VBYlq3V2oE2JQ6tNQ_V-U(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dtcc3Oca-q8Opi4dWMlrszaN8Uc(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$onMapInit$19(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ESqlaJ_vKgy5XC0OkX_qELSSli4(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$FY0NjLEmfbA1h95tXloE-NmJP90(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G0GCJ9zL6w9nTkGtWES32BNHoKw(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$onMapInit$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$KfjBdM3LfZIBYrAmnyyI9H1KyqI(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$15(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MW10MiOAXjkj6MZIXbE-HKYDsqo(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$6(Ljava/lang/Object;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OnK7jqqqhw_oKALjE9ydyvgvID4(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$onMapInit$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q_-Wf25kvPnz4ORQCunYz7AiO1g(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/messenger/IMapsProvider$IMapView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$14(Lorg/telegram/messenger/IMapsProvider$IMapView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SJGbcaLAoz09659GzNUvUB1QgXI(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$16(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UdwVTuZPNYnlyFJkLrNhGgdJn4w(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/messenger/IMapsProvider$IMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$12(Lorg/telegram/messenger/IMapsProvider$IMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WTSqEKjXIWvyP7qyWz28xYAYklU(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xx7CqxKZEiFV3u5upMKcodl6Ed0(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$onShow$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z_wuKs76eFww_C2BjpGiuX_JXgM(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$17(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZhXWJ1z2EBXG6mC_MAX5aQeNInE(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$8(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_RfM_ZUMYsqQvN5Udb1Zc0Iv1eA(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$ber48wIepCTpORA2jSCHIwECq40(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->updateClipView()V

    return-void
.end method

.method public static synthetic $r8$lambda$j8PoVGREoBqNH3SX5lZItSHnr2c(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$5(Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jsXBoW79gizQipFhyd2TRnnlbd4(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$onMapInit$24(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n7VYkB1neF9XruM-EjnlVJa2qfM(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/messenger/IMapsProvider$IMarker;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$onMapInit$21(Lorg/telegram/messenger/IMapsProvider$IMarker;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$q960I7fWyaRSZSNpZi8s8f2uANY(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$openShareLiveLocation$18(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sZdWyMwNT-sAuRFgNVqe98Y6FFY(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tS5_QZ7WBe8nidS3DXjzel3Q4lA(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$getThemeDescriptions$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$xPB8M4ZK1IzewJ8ua3LBUttgn2g(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lambda$new$9(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 31

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 361
    invoke-direct/range {p0 .. p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v10, 0x1

    .line 121
    iput-boolean v10, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->checkGpsEnabled:Z

    const/4 v11, 0x0

    .line 122
    iput-boolean v11, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    .line 124
    iput-boolean v10, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->isFirstLocation:Z

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->backgroundPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->placeMarkers:Ljava/util/ArrayList;

    .line 139
    iput-boolean v10, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->checkPermission:Z

    .line 140
    iput-boolean v10, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->checkBackgroundPermission:Z

    .line 161
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x42

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overScrollHeight:I

    .line 162
    iput v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapHeight:I

    .line 1067
    iput-boolean v10, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->first:Z

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 1170
    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->bitmapCache:[Landroid/graphics/Bitmap;

    .line 362
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->fixGoogleMapsBug()V

    .line 363
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v12, v0

    check-cast v12, Lorg/telegram/ui/ChatActivity;

    .line 364
    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    iput-wide v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->dialogId:J

    .line 365
    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getCurrentEncryptedChat()Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iput v10, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    goto :goto_0

    .line 368
    :cond_0
    iput v11, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    .line 370
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v0, v7, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 371
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionDenied:I

    invoke-virtual {v0, v7, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 373
    iput-boolean v11, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchWas:Z

    .line 374
    iput-boolean v11, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searching:Z

    .line 375
    iput-boolean v11, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchInProgress:Z

    .line 376
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->destroy()V

    .line 379
    :cond_1
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->destroy()V

    .line 383
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt v6, v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    .line 385
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 387
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overlayView:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    .line 389
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v11, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 446
    iget-boolean v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 447
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    const-string v2, "Search"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const-string v1, "dialogTextBlack"

    .line 450
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 451
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const-string v1, "chat_messagePanelHint"

    .line 452
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 454
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v14, 0x15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v15, -0x1

    invoke-direct {v0, v15, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x53

    .line 455
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 457
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$2;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    .line 497
    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 499
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->loadingMapView:Landroid/view/View;

    .line 500
    new-instance v1, Lorg/telegram/ui/Components/MapPlaceholderDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/MapPlaceholderDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 502
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    const/16 v1, 0x50

    .line 503
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;->setTranslationX(F)V

    .line 504
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v16, 0x28

    .line 505
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const-string v4, "location_actionBackground"

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "location_actionPressedBackground"

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v2, -0x1000000

    const v17, 0x10100a7

    move-object/from16 v18, v3

    move-object/from16 p1, v4

    const/4 v1, 0x2

    if-ge v6, v14, :cond_5

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v13, Lorg/telegram/messenger/R$drawable;->places_btn:I

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 508
    new-instance v15, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v15, v2, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 509
    new-instance v14, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-direct {v14, v13, v0, v15, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 510
    invoke-virtual {v14, v10}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    move-object v15, v12

    move-object v0, v14

    const-wide/16 v11, 0xc8

    move v14, v6

    const/4 v6, 0x4

    goto :goto_3

    .line 513
    :cond_5
    new-instance v2, Landroid/animation/StateListAnimator;

    invoke-direct {v2}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v13, v10, [I

    aput v17, v13, v11

    .line 514
    iget-object v14, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    sget-object v15, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v3, v1, [F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v10

    invoke-static {v14, v15, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move v14, v6

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v3, v11, [I

    .line 515
    iget-object v4, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    new-array v5, v1, [F

    const/4 v6, 0x4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v5, v11

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v5, v10

    invoke-static {v4, v15, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object v15, v12

    const-wide/16 v11, 0xc8

    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 516
    iget-object v3, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 517
    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$3;

    invoke-direct {v3, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 525
    :goto_3
    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    const-string v5, "location_actionActiveIcon"

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 527
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v10, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 528
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    const-string v21, "fonts/rmedium.ttf"

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 529
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    sget v2, Lorg/telegram/messenger/R$string;->PlacesInThisArea:I

    const-string v3, "PlacesInThisArea"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 531
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v13, 0x0

    invoke-virtual {v0, v3, v13, v2, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 532
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    const/16 v22, -0x2

    const/16 v29, 0x2c

    const/16 v3, 0x15

    if-lt v14, v3, :cond_6

    const/16 v23, 0x28

    goto :goto_4

    :cond_6
    const/16 v23, 0x2c

    :goto_4
    const/16 v24, 0x31

    const/16 v25, 0x50

    const/16 v26, 0xc

    const/16 v27, 0x50

    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x0

    const/16 v22, 0x0

    const-string v0, "location_actionIcon"

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v23

    move-object v0, v3

    const/4 v6, 0x2

    move-object/from16 v1, p2

    const/high16 v11, -0x1000000

    move-object v12, v3

    move-object/from16 v13, v18

    move/from16 v3, v22

    move-object/from16 v11, p1

    move/from16 v4, v23

    move-object/from16 v30, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v12, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 541
    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 542
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 543
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xa

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalXOffset(I)V

    .line 544
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 545
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_map:I

    sget v2, Lorg/telegram/messenger/R$string;->Map:I

    const-string v3, "Map"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v1, v2, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 546
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x3

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_satellite:I

    sget v3, Lorg/telegram/messenger/R$string;->Satellite:I

    const-string v4, "Satellite"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 547
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_hybrid:I

    sget v2, Lorg/telegram/messenger/R$string;->Hybrid:I

    const-string v3, "Hybrid"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 548
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v2, "AccDescrMoreOptions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 549
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v7, v11}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v13}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x15

    if-ge v14, v1, :cond_7

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->floating_shadow_profile:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 552
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/high16 v5, -0x1000000

    invoke-direct {v2, v5, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 553
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v0, v4, v4}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 554
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v0, v2

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    .line 557
    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v2, v10, [I

    aput v17, v2, v4

    .line 558
    iget-object v5, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v12, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v10, v6, [F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v10, v4

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/16 v22, 0x1

    aput v6, v10, v22

    invoke-static {v5, v12, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v3, 0xc8

    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    const/4 v2, 0x0

    new-array v5, v2, [I

    .line 559
    iget-object v6, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v10, 0x2

    new-array v3, v10, [F

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v4, v10

    aput v4, v3, v2

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v2, v10

    const/4 v10, 0x1

    aput v2, v3, v10

    invoke-static {v6, v12, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 560
    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 561
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$4;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 569
    :goto_5
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_map_type:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 571
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x15

    if-lt v14, v2, :cond_8

    const/16 v22, 0x28

    goto :goto_6

    :cond_8
    const/16 v22, 0x2c

    :goto_6
    if-lt v14, v2, :cond_9

    const/16 v23, 0x28

    goto :goto_7

    :cond_9
    const/16 v23, 0x2c

    :goto_7
    const/16 v24, 0x35

    const/16 v25, 0x0

    const/16 v26, 0xc

    const/16 v27, 0xc

    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda21;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 586
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    .line 587
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v7, v11}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v13}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x15

    if-ge v14, v1, :cond_a

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->floating_shadow_profile:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 590
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/high16 v4, -0x1000000

    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 591
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 592
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v0, v2

    goto :goto_8

    :cond_a
    const/4 v3, 0x0

    .line 595
    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    const/4 v2, 0x1

    new-array v4, v2, [I

    aput v17, v4, v3

    .line 596
    iget-object v5, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v11, v10, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v11, v3

    const/4 v12, 0x4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v11, v2

    invoke-static {v5, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v12, 0xc8

    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v2, v3, [I

    .line 597
    iget-object v4, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    new-array v5, v10, [F

    const/4 v11, 0x4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    aput v11, v5, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v10, 0x1

    aput v3, v5, v10

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 598
    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 599
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$5;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 607
    :goto_8
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 608
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_current_location:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 609
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 610
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    move-object/from16 v2, v30

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 611
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 612
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMyLocation:I

    const-string v2, "AccDescrMyLocation"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x15

    if-lt v14, v0, :cond_b

    const/16 v22, 0x28

    goto :goto_9

    :cond_b
    const/16 v22, 0x2c

    :goto_9
    if-lt v14, v0, :cond_c

    const/16 v23, 0x28

    goto :goto_a

    :cond_c
    const/16 v23, 0x2c

    :goto_a
    const/16 v24, 0x55

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0xc

    const/16 v28, 0xc

    .line 613
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 614
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda3;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 644
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 645
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 646
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyView:Landroid/widget/LinearLayout;

    const/16 v1, 0xa0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 647
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 648
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyView:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyView:Landroid/widget/LinearLayout;

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 651
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyImageView:Landroid/widget/ImageView;

    .line 652
    sget v1, Lorg/telegram/messenger/R$drawable;->location_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 653
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "dialogEmptyImage"

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 654
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyView:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyImageView:Landroid/widget/ImageView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyTitleTextView:Landroid/widget/TextView;

    const-string v1, "dialogEmptyText"

    .line 657
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 658
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyTitleTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 659
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyTitleTextView:Landroid/widget/TextView;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 660
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyTitleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41880000    # 17.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 661
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyTitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoPlacesFound:I

    const-string v3, "NoPlacesFound"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyView:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyTitleTextView:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x11

    const/16 v22, 0x0

    const/16 v23, 0xb

    const/16 v24, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 664
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    const-string v2, "dialogEmptyText"

    .line 665
    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 666
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 667
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 668
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 669
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyView:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    const/16 v23, 0x6

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$6;

    invoke-direct {v0, v7, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    .line 678
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 679
    iget-object v10, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v11, Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    iget-wide v3, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->dialogId:J

    const/4 v5, 0x1

    move-object v0, v11

    move-object/from16 v1, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;-><init>(Landroid/content/Context;IJZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 680
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda13;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setUpdateRunnable(Ljava/lang/Runnable;)V

    .line 681
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-boolean v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setMyLocationDenied(Z)V

    .line 682
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 683
    iget-object v10, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v11, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$7;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v11, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 703
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x33

    const/4 v2, -0x1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 734
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda28;

    move-object v3, v15

    invoke-direct {v2, v7, v3, v9}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 786
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-wide v4, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->dialogId:J

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda23;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-virtual {v0, v4, v5, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->setDelegate(JLorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;)V

    .line 787
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overScrollHeight:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setOverScrollHeight(I)V

    .line 789
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    invoke-interface {v0, v8}, Lorg/telegram/messenger/IMapsProvider;->onCreateMapView(Landroid/content/Context;)Lorg/telegram/messenger/IMapsProvider$IMapView;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    .line 792
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda16;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->setOnDispatchTouchEventInterceptor(Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;)V

    .line 804
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda17;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->setOnInterceptTouchEventInterceptor(Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;)V

    .line 840
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    .line 841
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda15;

    invoke-direct {v4, v7, v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/messenger/IMapsProvider$IMapView;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 874
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 876
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->markerImageView:Landroid/widget/ImageView;

    .line 877
    sget v2, Lorg/telegram/messenger/R$drawable;->map_pin2:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 878
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->markerImageView:Landroid/widget/ImageView;

    const/16 v4, 0x1c

    const/16 v5, 0x30

    const/16 v6, 0x31

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0x8

    .line 881
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 882
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v8, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 883
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$9;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    const-wide/16 v4, 0x0

    .line 895
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda24;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-virtual {v0, v4, v5, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->setDelegate(JLorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;)V

    .line 899
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 900
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$10;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 909
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda29;

    invoke-direct {v1, v7, v3, v9}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 924
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lastPressedVenue:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lastPressedVenue:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->showSearchPlacesButton(Z)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchWas:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchWas:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchInProgress:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/location/Location;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/messenger/IMapsProvider$IMarker;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overlayView:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/messenger/IMapsProvider$IMarker;)Lorg/telegram/messenger/IMapsProvider$IMarker;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->clipSize:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->doNotDrawMap:Z

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->updateClipView()V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapHeight:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overScrollHeight:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->scrolling:Z

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->scrolling:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->forceUpdate:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    return-object p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->forceUpdate:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    return-object p1
.end method

.method static synthetic access$2916(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;F)F
    .locals 1

    .line 86
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->yOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->yOffset:F

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lastPressedMarkerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/TextView;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lastPressedMarkerView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/messenger/IMapsProvider$IMap;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/app/Activity;
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searching:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searching:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method private buttonsHeight()I
    .locals 4

    const/16 v0, 0x42

    .line 1461
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 1462
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1463
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method private createPlaceBitmap(I)Landroid/graphics/Bitmap;
    .locals 8

    .line 1172
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->bitmapCache:[Landroid/graphics/Bitmap;

    rem-int/lit8 v1, p1, 0x7

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 1173
    aget-object p1, v0, v1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1176
    :try_start_0
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, -0x1

    .line 1177
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0xc

    .line 1178
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1179
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x6

    .line 1180
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

    .line 1181
    invoke-static {p1}, Lorg/telegram/ui/Cells/LocationCell;->getColorForIndex(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1182
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

    .line 1183
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1184
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->bitmapCache:[Landroid/graphics/Bitmap;

    rem-int/lit8 p1, p1, 0x7

    aput-object v2, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    .line 1186
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private fixLayoutInternal(Z)V
    .locals 3

    .line 1468
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    if-eqz p1, :cond_6

    .line 1469
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1472
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p1

    .line 1473
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->buttonsHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x5a

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0xbd

    .line 1474
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overScrollHeight:I

    .line 1475
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->isTypeSend()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x136

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapHeight:I

    .line 1476
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->isTypeSend()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1477
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapHeight:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overScrollHeight:I

    .line 1480
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1481
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1482
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1484
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1485
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1486
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1487
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1489
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1490
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1491
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1493
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->isTypeSend()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overScrollHeight:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overScrollHeight:I

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setOverScrollHeight(I)V

    .line 1494
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0xa

    if-eqz p1, :cond_4

    .line 1496
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapHeight:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1497
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1499
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overlayView:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    if-eqz p1, :cond_5

    .line 1500
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_5

    .line 1502
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapHeight:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1503
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overlayView:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1507
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1508
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->updateClipView()V

    :cond_6
    :goto_2
    return-void
.end method

.method private getLastLocation()Landroid/location/Location;
    .locals 4

    .line 1513
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const/4 v1, 0x1

    .line 1514
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v2

    .line 1516
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    :goto_0
    if-ltz v3, :cond_1

    .line 1517
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

.method private getLocationController()Lorg/telegram/messenger/LocationController;
    .locals 1

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    return-object v0
.end method

.method private getMessagesController()Lorg/telegram/messenger/MessagesController;
    .locals 1

    .line 1220
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    return-object v0
.end method

.method private getParentActivity()Landroid/app/Activity;
    .locals 1

    .line 1232
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getUserConfig()Lorg/telegram/messenger/UserConfig;
    .locals 1

    .line 1228
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    return-object v0
.end method

.method private isActiveThemeDark()Z
    .locals 3

    .line 1099
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 1100
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "windowBackgroundWhite"

    .line 1103
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    .line 1104
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

.method private isTypeSend()Z
    .locals 2

    .line 1457
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$getThemeDescriptions$26()V
    .locals 4

    .line 1645
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "location_actionIcon"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 1646
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuBackground"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 1647
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuItemIcon"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 1648
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "actionBarDefaultSubmenuItem"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 1650
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v0, :cond_1

    .line 1651
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->isActiveThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->currentMapStyleDark:Z

    if-nez v0, :cond_1

    .line 1653
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->currentMapStyleDark:Z

    .line 1654
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v2, Lorg/telegram/messenger/R$raw;->mapstyle_night:I

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/IMapsProvider;->loadRawResourceStyle(Landroid/content/Context;I)Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;

    move-result-object v0

    .line 1655
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapStyle(Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;)V

    goto :goto_0

    .line 1658
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->currentMapStyleDark:Z

    if-eqz v0, :cond_1

    .line 1659
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->currentMapStyleDark:Z

    .line 1660
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapStyle(Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 534
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->showSearchPlacesButton(Z)V

    .line 535
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocation:Landroid/location/Location;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;ZZ)V

    .line 536
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchedForCustomLocations:Z

    .line 537
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->showResults()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 572
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$10()V
    .locals 3

    .line 855
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->loadingMapView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->loadingMapView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$new$11()V
    .locals 1

    .line 854
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/messenger/IMapsProvider$IMap;)V
    .locals 2

    .line 853
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    .line 854
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->setOnMapLoadedCallback(Ljava/lang/Runnable;)V

    .line 858
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->isActiveThemeDark()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 859
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->currentMapStyleDark:Z

    .line 860
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$raw;->mapstyle_night:I

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/IMapsProvider;->loadRawResourceStyle(Landroid/content/Context;I)Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;

    move-result-object p1

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapStyle(Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;)V

    .line 863
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->onMapInit()V

    return-void
.end method

.method private synthetic lambda$new$13(Lorg/telegram/messenger/IMapsProvider$IMapView;)V
    .locals 1

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 850
    :try_start_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onCreate(Landroid/os/Bundle;)V

    .line 851
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider;->initializeMaps(Landroid/content/Context;)V

    .line 852
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getMapAsync(Landroidx/core/util/Consumer;)V

    const/4 p1, 0x1

    .line 865
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapsInitialized:Z

    .line 866
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->onResumeCalled:Z

    if-eqz p1, :cond_0

    .line 867
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 870
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$14(Lorg/telegram/messenger/IMapsProvider$IMapView;)V
    .locals 1

    const/4 v0, 0x0

    .line 843
    :try_start_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :catch_0
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/messenger/IMapsProvider$IMapView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$15(Ljava/util/ArrayList;)V
    .locals 0

    const/4 p1, 0x0

    .line 896
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchInProgress:Z

    .line 897
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->updateEmptyView()V

    return-void
.end method

.method private synthetic lambda$new$16(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;ZILjava/lang/String;)V
    .locals 6

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 915
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$new$17(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 6

    .line 910
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 911
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

    if-eqz p3, :cond_2

    .line 912
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p3}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 918
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 919
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    goto :goto_1

    .line 913
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide p3

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda27;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)V

    move-wide v1, p3

    move-object v4, p2

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$2(I)V
    .locals 3

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 578
    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapType(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const/4 p1, 0x1

    .line 580
    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapType(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 582
    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapType(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 9

    .line 616
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    .line 617
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 619
    invoke-virtual {p1, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 620
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createLocationRequiredDialog(Landroid/content/Context;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 625
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p1, :cond_2

    .line 626
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "location_actionActiveIcon"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 628
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setCustomLocation(Landroid/location/Location;)V

    const/4 p1, 0x0

    .line 629
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocationMoved:Z

    .line 630
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->showSearchPlacesButton(Z)V

    .line 631
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLng(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 632
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchedForCustomLocations:Z

    if-eqz v2, :cond_2

    .line 633
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    if-eqz v2, :cond_1

    .line 634
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v3, v1, v2, v0, v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;ZZ)V

    .line 636
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchedForCustomLocations:Z

    .line 637
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->showResults()V

    .line 640
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->removeInfoView()V

    return-void
.end method

.method private static synthetic lambda$new$4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$5(Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;ZILjava/lang/String;)V
    .locals 6

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 747
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$new$6(Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 6

    .line 773
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 774
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$new$7(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 7

    const/4 p3, 0x1

    if-ne p4, p3, :cond_4

    .line 736
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

    if-eqz p4, :cond_3

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocation:Landroid/location/Location;

    if-eqz p4, :cond_3

    .line 737
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lastPressedMarkerView:Landroid/widget/FrameLayout;

    if-eqz p4, :cond_0

    .line 738
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->callOnClick()Z

    goto/16 :goto_2

    .line 740
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 741
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object p4, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 742
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, p4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 743
    iget-object p4, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, p4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 744
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p4

    if-nez p4, :cond_2

    invoke-virtual {p1, p3, p3}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 750
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 751
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    goto/16 :goto_2

    .line 745
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide p3

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda26;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;)V

    move-wide v1, p3

    move-object v4, p2

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto/16 :goto_2

    .line 754
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    if-eqz p1, :cond_b

    .line 755
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/AlertsCreator;->createLocationRequiredDialog(Landroid/content/Context;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    :cond_4
    const/4 v0, 0x2

    if-ne p4, v0, :cond_7

    .line 757
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    if-ne v0, p3, :cond_7

    .line 758
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 759
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/LocationController;->removeSharingLocation(J)V

    .line 760
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    goto/16 :goto_2

    .line 762
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    if-eqz p1, :cond_6

    .line 763
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/AlertsCreator;->createLocationRequiredDialog(Landroid/content/Context;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    .line 765
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->openShareLiveLocation()V

    goto :goto_2

    .line 769
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v0, p4}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p4

    .line 770
    instance-of v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v0, :cond_a

    .line 771
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1, p3, p3}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 777
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

    move-object v2, p4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 778
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    goto :goto_2

    .line 772
    :cond_9
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0, p4}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Ljava/lang/Object;)V

    move-object v4, p2

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_2

    .line 780
    :cond_a
    instance-of p1, p4, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LiveLocation;

    if-eqz p1, :cond_b

    .line 781
    check-cast p4, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LiveLocation;

    .line 782
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v0, p4, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-object p4, p4, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {p4}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object p4

    iget-wide v2, p4, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {p3, v0, v1, v2, v3}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {p4}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result p4

    const/high16 v0, 0x40800000    # 4.0f

    sub-float/2addr p4, v0

    invoke-interface {p2, p3, p4}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    :cond_b
    :goto_2
    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z
    .locals 3

    .line 794
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->yOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 795
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 796
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->yOffset:F

    neg-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 798
    :goto_0
    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$ICallableMethod;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz v0, :cond_1

    .line 800
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    return p1
.end method

.method private synthetic lambda$new$9(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z
    .locals 9

    .line 805
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 809
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 810
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->markerImageView:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v4, [F

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->markerTop:I

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

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 813
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 815
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/4 v0, 0x0

    .line 817
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->yOffset:F

    .line 818
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 819
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 820
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->markerImageView:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v4, [F

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->markerTop:I

    int-to-float v7, v7

    aput v7, v6, v3

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 821
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 822
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchLocationAddress()V

    .line 824
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 825
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocationMoved:Z

    if-nez v0, :cond_4

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "location_actionIcon"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 828
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocationMoved:Z

    .line 830
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v0, :cond_5

    .line 831
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocation:Landroid/location/Location;

    if-eqz v1, :cond_5

    .line 832
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->getCameraPosition()Lorg/telegram/messenger/IMapsProvider$CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/IMapsProvider$CameraPosition;->target:Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-wide v2, v0, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 833
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocation:Landroid/location/Location;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getCameraPosition()Lorg/telegram/messenger/IMapsProvider$CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/IMapsProvider$CameraPosition;->target:Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-wide v1, v1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 836
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setCustomLocation(Landroid/location/Location;)V

    .line 838
    :cond_6
    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$ICallableMethod;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$onMapInit$19(I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1254
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->showSearchPlacesButton(Z)V

    .line 1255
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->removeInfoView()V

    .line 1257
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->scrolling:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 1258
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1260
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1261
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_1

    .line 1262
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x42

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 1263
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    neg-int v2, v1

    if-ge p1, v2, :cond_1

    .line 1265
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->getCameraPosition()Lorg/telegram/messenger/IMapsProvider$CameraPosition;

    move-result-object v2

    .line 1266
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/messenger/IMapsProvider$CameraPosition;->target:Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget v2, v2, Lorg/telegram/messenger/IMapsProvider$CameraPosition;->zoom:F

    invoke-interface {v3, v4, v2}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->forceUpdate:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    .line 1267
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    add-int/2addr p1, v1

    invoke-virtual {v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onMapInit$20(Landroid/location/Location;)V
    .locals 2

    .line 1275
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1278
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->positionMarker(Landroid/location/Location;)V

    .line 1279
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->isFirstLocation:Z

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/LocationController;->setMapLocation(Landroid/location/Location;Z)V

    const/4 p1, 0x0

    .line 1280
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->isFirstLocation:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onMapInit$21(Lorg/telegram/messenger/IMapsProvider$IMarker;)Z
    .locals 6

    .line 1283
    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1286
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->markerImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1287
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocationMoved:Z

    if-nez v0, :cond_1

    .line 1288
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "location_actionIcon"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1289
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1290
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocationMoved:Z

    .line 1292
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overlayView:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->addInfoView(Lorg/telegram/messenger/IMapsProvider$IMarker;)V

    return v1
.end method

.method private synthetic lambda$onMapInit$22()V
    .locals 1

    .line 1296
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overlayView:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    if-eqz v0, :cond_0

    .line 1297
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->updatePositions()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onMapInit$23()V
    .locals 3

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->loadingMapView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1302
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->loadingMapView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onMapInit$24(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1321
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1325
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

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

.method private synthetic lambda$onShow$25()V
    .locals 3

    .line 1620
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->checkPermission:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1621
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1623
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->checkPermission:Z

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1624
    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 1625
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openShareLiveLocation$18(I)V
    .locals 6

    .line 1160
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;-><init>()V

    .line 1161
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 1162
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1163
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 1164
    iput p1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    .line 1165
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    .line 1166
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    return-void
.end method

.method private onMapInit()V
    .locals 5

    .line 1236
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-nez v0, :cond_0

    return-void

    .line 1240
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocation:Landroid/location/Location;

    const-wide v1, 0x4034a8c9539b8887L    # 20.659322

    .line 1241
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 1242
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocation:Landroid/location/Location;

    const-wide v1, -0x3fd9300000000000L    # -11.40625

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 1245
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1247
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1249
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->getUiSettings()Lorg/telegram/messenger/IMapsProvider$IUISettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IUISettings;->setMyLocationButtonEnabled(Z)V

    .line 1250
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->getUiSettings()Lorg/telegram/messenger/IMapsProvider$IUISettings;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IUISettings;->setZoomControlsEnabled(Z)V

    .line 1251
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->getUiSettings()Lorg/telegram/messenger/IMapsProvider$IUISettings;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IUISettings;->setCompassEnabled(Z)V

    .line 1252
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->setOnCameraMoveStartedListener(Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;)V

    .line 1274
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->setOnMyLocationChangeListener(Landroidx/core/util/Consumer;)V

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->setOnMarkerClickListener(Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;)V

    .line 1295
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->setOnCameraMoveListener(Ljava/lang/Runnable;)V

    .line 1300
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1305
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->positionMarker(Landroid/location/Location;)V

    .line 1307
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->checkGpsEnabled:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1308
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->checkGpsEnabled:Z

    .line 1311
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "android.hardware.location.gps"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1315
    :cond_1
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v2, "gps"

    .line 1316
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1317
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1318
    sget v2, Lorg/telegram/messenger/R$raw;->permission_request_location:I

    const/16 v3, 0x48

    const-string v4, "dialogTopBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v1, "GpsDisabledAlertText"

    .line 1319
    sget v2, Lorg/telegram/messenger/R$string;->GpsDisabledAlertText:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v1, "ConnectingToProxyEnable"

    .line 1320
    sget v2, Lorg/telegram/messenger/R$string;->ConnectingToProxyEnable:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v1, "Cancel"

    .line 1330
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1331
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1334
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1337
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->updateClipView()V

    return-void
.end method

.method private positionMarker(Landroid/location/Location;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1529
    :cond_0
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    .line 1531
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v1, :cond_4

    .line 1532
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 1533
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1534
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchedForCustomLocations:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 1535
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    invoke-virtual {v1, v3, v4, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;Z)V

    .line 1537
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setGpsLocation(Landroid/location/Location;)V

    .line 1539
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocationMoved:Z

    if-nez v1, :cond_5

    .line 1540
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocation:Landroid/location/Location;

    .line 1541
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->firstWas:Z

    if-eqz p1, :cond_3

    .line 1542
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLng(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    .line 1543
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    goto :goto_0

    .line 1545
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->firstWas:Z

    .line 1546
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    sub-float/2addr v1, v2

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    .line 1547
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    goto :goto_0

    .line 1551
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setGpsLocation(Landroid/location/Location;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private removeInfoView()V
    .locals 2

    .line 1341
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->markerImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1343
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overlayView:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->removeInfoView(Lorg/telegram/messenger/IMapsProvider$IMarker;)V

    const/4 v0, 0x0

    .line 1344
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 1345
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lastPressedVenue:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;

    .line 1346
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lastPressedMarkerView:Landroid/widget/FrameLayout;

    :cond_0
    return-void
.end method

.method private showResults()V
    .locals 4

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1354
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1358
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x102

    .line 1359
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v3, v0

    if-ltz v3, :cond_3

    .line 1360
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-le v3, v0, :cond_2

    goto :goto_0

    .line 1363
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private showSearchPlacesButton(Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1121
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1122
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocation:Landroid/location/Location;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    const/high16 v2, 0x43960000    # 300.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 1126
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    .line 1129
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1130
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1131
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v2, [Landroid/animation/Animator;

    .line 1132
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v2, [F

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    const/16 p1, 0x50

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    :goto_2
    aput p1, v2, v0

    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xb4

    .line 1133
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1134
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1135
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    :goto_3
    return-void
.end method

.method private updateClipView()V
    .locals 9

    .line 1367
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1372
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1374
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1375
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overScrollHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1377
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    const/4 v2, 0x0

    .line 1380
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_d

    const/4 v3, 0x4

    if-gtz v2, :cond_3

    .line 1383
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1384
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1385
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1386
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overlayView:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    if-eqz v1, :cond_2

    .line 1387
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1390
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1393
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 1394
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1395
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1396
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overlayView:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    if-eqz v2, :cond_4

    .line 1397
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1400
    :cond_4
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapHeight:I

    sub-int v2, v0, v2

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overScrollHeight:I

    add-int/2addr v2, v3

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1401
    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapHeight:I

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overScrollHeight:I

    sub-int/2addr v3, v4

    .line 1402
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v4, v3

    const/4 v5, 0x0

    .line 1403
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    sub-int/2addr v6, v0

    int-to-float v6, v6

    int-to-float v4, v4

    div-float/2addr v6, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float/2addr v4, v5

    .line 1404
    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->clipSize:I

    .line 1405
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    if-eqz v6, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->isTypeSend()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1406
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v3, v6

    :cond_5
    int-to-float v6, v3

    mul-float v6, v6, v4

    float-to-int v4, v6

    .line 1408
    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->clipSize:I

    .line 1410
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v4}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v4

    int-to-float v6, v2

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1411
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->clipSize:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->nonClipSize:I

    .line 1412
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1414
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->nonClipSize:I

    sub-int v4, v0, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1415
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v3, :cond_6

    const/4 v4, 0x6

    .line 1416
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->clipSize:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v8, v4

    invoke-interface {v3, v1, v7, v1, v8}, Lorg/telegram/messenger/IMapsProvider$IMap;->setPadding(IIII)V

    .line 1418
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overlayView:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    if-eqz v3, :cond_7

    .line 1419
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1421
    :cond_7
    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->nonClipSize:I

    sub-int/2addr v3, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapHeight:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x50

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    .line 1422
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1423
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;->setTranslation(F)V

    .line 1424
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->clipSize:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1425
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->markerImageView:Landroid/widget/ImageView;

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapHeight:I

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->clipSize:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    const/16 v4, 0x30

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->markerTop:I

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1426
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->clipSize:I

    if-eq v5, v1, :cond_b

    .line 1428
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    if-eqz v1, :cond_8

    .line 1429
    new-instance v2, Lorg/telegram/messenger/IMapsProvider$LatLng;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v1

    iget-wide v3, v1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v1

    iget-wide v5, v1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    goto :goto_1

    .line 1430
    :cond_8
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocationMoved:Z

    if-eqz v1, :cond_9

    .line 1431
    new-instance v2, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->userLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    goto :goto_1

    .line 1432
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    if-eqz v1, :cond_a

    .line 1433
    new-instance v2, Lorg/telegram/messenger/IMapsProvider$LatLng;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_b

    .line 1437
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v1, :cond_b

    .line 1438
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLng(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 1442
    :cond_b
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->isTypeSend()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1445
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    :goto_2
    if-ge v2, v1, :cond_d

    .line 1447
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1449
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_d
    :goto_3
    return-void
.end method

.method private updateEmptyView()V
    .locals 3

    .line 1108
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searching:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 1109
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchInProgress:Z

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1111
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1113
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 1116
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyView:Landroid/widget/LinearLayout;

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

    .line 1195
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->placeMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1196
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->placeMarkers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider$IMarker;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1198
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->placeMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1199
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1200
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .line 1202
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

    .line 1203
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->createPlaceBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->icon(Landroid/graphics/Bitmap;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1204
    invoke-interface {v3, v4, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->anchor(FF)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1205
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->title(Ljava/lang/String;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1206
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->snippet(Ljava/lang/String;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1207
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;

    invoke-direct {v4}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;-><init>()V

    .line 1208
    iput v1, v4, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;->num:I

    .line 1209
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v5, v3}, Lorg/telegram/messenger/IMapsProvider$IMap;->addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 1210
    iput-object v2, v4, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$VenueLocation;->venue:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .line 1211
    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setTag(Ljava/lang/Object;)V

    .line 1212
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->placeMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 1214
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 1557
    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    .line 1558
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    .line 1559
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz p1, :cond_0

    .line 1560
    invoke-virtual {p1, p3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setMyLocationDenied(Z)V

    .line 1562
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p1, :cond_2

    .line 1564
    :try_start_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1566
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1569
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionDenied:I

    if-ne p1, p2, :cond_2

    .line 1570
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    .line 1571
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz p1, :cond_2

    .line 1572
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setMyLocationDenied(Z)V

    .line 1575
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->fixLayoutInternal(Z)V

    .line 1576
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    if-eqz p2, :cond_3

    const/16 p3, 0x8

    :cond_3
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public getButtonsHideOffset()I
    .locals 1

    const/16 v0, 0x38

    .line 1081
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 3

    .line 1010
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 1013
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v0, :cond_1

    .line 1016
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->nonClipSize:I

    sub-int/2addr v0, v2

    .line 1017
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    const/16 v0, 0x38

    .line 1019
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public getFirstOffset()I
    .locals 2

    .line 1038
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getListTopPadding()I

    move-result v0

    const/16 v1, 0x38

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    .line 1032
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    return v0
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

    .line 1642
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1644
    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda22;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    .line 1666
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "dialogBackground"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "dialogScrollGlow"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object/from16 v21, v3

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v27, "dialogTextBlack"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "listSelectorSDK21"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v21, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const-string v26, "divider"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyImageView:Landroid/widget/ImageView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const-string v18, "dialogEmptyImage"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1676
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptyTitleTextView:Landroid/widget/TextView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v26, "dialogEmptyText"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v18, "dialogEmptyText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v21, v4, v5

    const-string v26, "location_actionIcon"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1680
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v13, v3, v4

    const-string v18, "location_actionActiveIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1681
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v26, "location_actionBackground"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v13, v3, v4

    const-string v18, "location_actionPressedBackground"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1684
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "location_actionIcon"

    move-object v2, v11

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1685
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v18, 0x0

    const-string v19, "location_actionBackground"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1686
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v22, v4, v5

    const/16 v26, 0x0

    const-string v27, "location_actionPressedBackground"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v14, 0x0

    const-string v18, "location_actionActiveIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1689
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v22, 0x0

    const-string v26, "location_actionBackground"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAreaButton:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$SearchButton;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v13, v3, v4

    const-string v18, "location_actionPressedBackground"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1692
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const-string v9, "avatar_text"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v7, 0x0

    const-string v9, "avatar_backgroundRed"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundOrange"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundViolet"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1696
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundGreen"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundCyan"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundBlue"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundPink"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1701
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const-string v19, "location_liveLocationProgress"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1702
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "location_placeLocationBackground"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1703
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v18, "dialog_liveLocationProgress"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v5, v3

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/SendLocationCell;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const-string v12, "imageView"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const-string v11, "location_sendLocationIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1706
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SendLocationCell;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "location_sendLiveLocationIcon"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v4, v5

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v24, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/SendLocationCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "location_sendLocationBackground"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1708
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v3, v4

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SendLocationCell;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "location_sendLiveLocationBackground"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1709
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v24, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/SendLocationCell;

    aput-object v5, v4, v6

    const-string v5, "accurateTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v30, "windowBackgroundWhiteGrayText3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1710
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SendLocationCell;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "titleTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "location_sendLiveLocationText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1711
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SendLocationCell;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "location_sendLocationText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1713
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v15, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationDirectionCell;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "buttonTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "featuredStickers_buttonText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1714
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/LocationDirectionCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "frameLayout"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "featuredStickers_addButton"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v15, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationDirectionCell;

    aput-object v4, v3, v6

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "featuredStickers_addButtonPressed"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1717
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v4, 0x0

    aput-object v3, v7, v4

    const-string/jumbo v11, "windowBackgroundGrayShadow"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v15, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v17, 0x0

    const-string/jumbo v20, "windowBackgroundGray"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1720
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v23, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const-string v29, "dialogTextBlue2"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v4, v3, v6

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const-string/jumbo v21, "windowBackgroundWhiteGrayText3"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v24, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/LocationCell;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const-string v6, "nameTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const/16 v29, 0x0

    const-string/jumbo v30, "windowBackgroundWhiteBlackText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1724
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v15, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v4, v3, v7

    const-string v4, "addressTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v21, "windowBackgroundWhiteGrayText3"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1726
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/LocationCell;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v30, "windowBackgroundWhiteGrayText3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v7

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1727
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/LocationCell;

    const/4 v8, 0x0

    aput-object v7, v3, v8

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v21, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1728
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v24, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v8, v7, v9

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v30, "windowBackgroundWhiteGrayText3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v7

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1730
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SharingLiveLocationCell;

    const/4 v7, 0x0

    aput-object v4, v3, v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v21, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharingLiveLocationCell;

    aput-object v6, v4, v7

    const-string v6, "distanceTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v30, "windowBackgroundWhiteGrayText3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationLoadingCell;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const-string v4, "progressBar"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "progressCircle"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/LocationLoadingCell;

    aput-object v6, v4, v7

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v30, "windowBackgroundWhiteGrayText3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1735
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationLoadingCell;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v21, "windowBackgroundWhiteGrayText3"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1737
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/LocationPoweredCell;

    aput-object v6, v4, v7

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v30, "windowBackgroundWhiteGrayText3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1738
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationPoweredCell;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "dialogEmptyImage"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1739
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v6, 0x0

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/LocationPoweredCell;

    const/4 v4, 0x0

    aput-object v3, v7, v4

    const-string/jumbo v3, "textView2"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v12, "dialogEmptyText"

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 947
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 948
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionDenied:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x1

    .line 949
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->doNotDrawMap:Z

    .line 950
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 954
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 955
    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 958
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 960
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_2

    .line 961
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 964
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_3

    .line 965
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onPause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 971
    :catch_1
    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_4

    .line 972
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onDestroy()V

    const/4 v0, 0x0

    .line 973
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    nop

    .line 978
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v0, :cond_5

    .line 979
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->destroy()V

    .line 981
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    if-eqz v0, :cond_6

    .line 982
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->destroy()V

    .line 984
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 986
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method onDismiss()Z
    .locals 1

    .line 1003
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->onDestroy()V

    const/4 v0, 0x0

    return v0
.end method

.method public onHide()V
    .locals 2

    .line 992
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1071
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 1073
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->first:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->fixLayoutInternal(Z)V

    const/4 p1, 0x0

    .line 1074
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->first:Z

    :cond_0
    return-void
.end method

.method onPause()V
    .locals 2

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapsInitialized:Z

    if-eqz v1, :cond_0

    .line 936
    :try_start_0
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 938
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 941
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->onResumeCalled:Z

    return-void
.end method

.method public onPreMeasure(II)V
    .locals 3

    .line 1045
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p1

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-le p1, v2, :cond_0

    goto :goto_1

    .line 1049
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v2, p1, :cond_1

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    .line 1052
    :cond_1
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    :goto_0
    const/16 p2, 0x34

    .line 1054
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 1058
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    goto :goto_2

    .line 1046
    :cond_3
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapHeight:I

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overScrollHeight:I

    sub-int/2addr p1, p2

    .line 1047
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    .line 1060
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    if-eq p2, p1, :cond_4

    .line 1061
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->ignoreLayout:Z

    .line 1062
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v1, p1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1063
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->ignoreLayout:Z

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1581
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapsInitialized:Z

    if-eqz v1, :cond_0

    .line 1583
    :try_start_0
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1585
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 1588
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->onResumeCalled:Z

    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 7

    .line 1594
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->ShareLocation:I

    const-string v1, "ShareLocation"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1595
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1596
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overScrollHeight:I

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v5, v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1597
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overlayView:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->overScrollHeight:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v5, v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1598
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->loadingMapView:Landroid/view/View;

    const/4 v3, 0x2

    invoke-static {v5, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1600
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1602
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->mapsInitialized:Z

    if-eqz v2, :cond_1

    .line 1604
    :try_start_0
    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1606
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1609
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->onResumeCalled:Z

    .line 1610
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p1, :cond_2

    .line 1612
    :try_start_1
    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMyLocationEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1614
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1617
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->fixLayoutInternal(Z)V

    .line 1618
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    move-result p1

    .line 1619
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    if-eqz p1, :cond_3

    const-wide/16 v2, 0xc8

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x0

    :goto_2
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1631
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1633
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->updateClipView()V

    return-void
.end method

.method public openShareLiveLocation()V
    .locals 10

    .line 1139
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->myLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1142
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->checkBackgroundPermission:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 1143
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1145
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->checkBackgroundPermission:Z

    .line 1146
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "backgroundloc"

    .line 1147
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    int-to-long v8, v1

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v8, 0x15180

    cmp-long v1, v4, v8

    if-lez v1, :cond_1

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1149
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v6

    long-to-int v2, v4

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1150
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->createBackgroundLocationPermissionDialog(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1156
    iget-wide v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1157
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1159
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v0, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->createLocationUpdateDialog(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/MessagesStorage$IntCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/app/Dialog;

    move-result-object v0

    .line 1167
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1086
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1089
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 1095
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;)V
    .locals 0

    .line 1637
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 1024
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1025
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 1026
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->updateClipView()V

    return-void
.end method

.method shouldHideBottomButtons()Z
    .locals 1

    .line 929
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->locationDenied:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
