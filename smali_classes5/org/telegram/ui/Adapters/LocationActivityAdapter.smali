.class public Lorg/telegram/ui/Adapters/LocationActivityAdapter;
.super Lorg/telegram/ui/Adapters/BaseLocationAdapter;
.source "LocationActivityAdapter.java"

# interfaces
.implements Lorg/telegram/messenger/LocationController$LocationFetchCallback;


# instance fields
.field private addressName:Ljava/lang/String;

.field private chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

.field private currentAccount:I

.field private currentLiveLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/LocationActivity$LiveLocation;",
            ">;"
        }
    .end annotation
.end field

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private customLocation:Landroid/location/Location;

.field private dialogId:J

.field private emptyCell:Landroid/widget/FrameLayout;

.field private fetchingLocation:Z

.field private globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private gpsLocation:Landroid/location/Location;

.field private locationType:I

.field private mContext:Landroid/content/Context;

.field private myLocationDenied:Z

.field private needEmptyView:Z

.field private overScrollHeight:I

.field private previousFetchedLocation:Landroid/location/Location;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

.field private shareLiveLocationPotistion:I

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$-zhE5L7TAg-s8FQXptZZF-ekCro(Lorg/telegram/ui/Adapters/LocationActivityAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;-><init>()V

    .line 53
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentAccount:I

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->shareLiveLocationPotistion:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    .line 77
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    .line 78
    iput p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    .line 79
    iput-wide p3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->dialogId:J

    .line 80
    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->needEmptyView:Z

    .line 81
    iput-object p6, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 83
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 p1, 0x1

    .line 84
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 534
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 0

    .line 323
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->onDirectionClick()V

    return-void
.end method

.method private updateCell()V
    .locals 10

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    if-eqz v0, :cond_c

    .line 173
    iget v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const-string v2, ""

    const/4 v3, 0x4

    const-string v4, "Loading"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    const-string v3, "SendLocation"

    if-eqz v1, :cond_1

    .line 194
    sget v1, Lorg/telegram/messenger/R$string;->SendLocation:I

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->AccurateTo:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-int v4, v4

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "Meters"

    invoke-static {v8, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "AccurateTo"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/SendLocationCell;->setHasLocation(Z)V

    goto/16 :goto_4

    .line 197
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->SendLocation:I

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    xor-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/SendLocationCell;->setHasLocation(Z)V

    goto/16 :goto_4

    .line 175
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 176
    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    goto :goto_2

    .line 177
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-nez v0, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz v1, :cond_6

    :cond_5
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchingLocation:Z

    if-eqz v1, :cond_7

    .line 178
    :cond_6
    sget v0, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    const/4 v1, 0x2

    const-string v7, "(%f,%f)"

    if-eqz v0, :cond_8

    .line 180
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v1, v5

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v2, v7, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 181
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz v0, :cond_9

    .line 182
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v1, v5

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v2, v7, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 183
    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    if-nez v0, :cond_a

    .line 184
    sget v0, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 186
    :cond_a
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    if-ne v0, v3, :cond_b

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChatSetThisLocation:I

    const-string v3, "ChatSetThisLocation"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 189
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    sget v1, Lorg/telegram/messenger/R$string;->SendSelectedLocation:I

    const-string v3, "SendSelectedLocation"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/SendLocationCell;->setHasLocation(Z)V

    :cond_c
    :goto_4
    return-void
.end method


# virtual methods
.method public fetchLocationAddress()V
    .locals 5

    .line 221
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 230
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->previousFetchedLocation:Landroid/location/Location;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 231
    :cond_1
    iput-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    .line 233
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchingLocation:Z

    .line 234
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    .line 235
    invoke-static {v0, p0}, Lorg/telegram/messenger/LocationController;->fetchLocationAddress(Landroid/location/Location;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V

    goto :goto_1

    :cond_3
    return-void

    .line 238
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-eqz v0, :cond_7

    .line 243
    iget-object v3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->previousFetchedLocation:Landroid/location/Location;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 244
    :cond_5
    iput-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    .line 246
    :cond_6
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchingLocation:Z

    .line 247
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    .line 248
    invoke-static {v0, p0}, Lorg/telegram/messenger/LocationController;->fetchLocationAddress(Landroid/location/Location;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5

    .line 407
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 408
    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    if-nez p1, :cond_0

    return-object v1

    .line 411
    :cond_0
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    .line 413
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 414
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 415
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 416
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    goto :goto_0

    .line 417
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz v1, :cond_2

    .line 418
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 419
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    :cond_2
    :goto_0
    return-object p1

    .line 423
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    if-ne p1, v4, :cond_4

    return-object v3

    :cond_4
    if-le p1, v2, :cond_9

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_9

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    if-lt p1, v3, :cond_6

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v1

    :cond_7
    if-ne v0, v4, :cond_8

    if-le p1, v2, :cond_9

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-ge p1, v0, :cond_9

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 v0, 0x3

    if-le p1, v0, :cond_9

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_9

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v1
.end method

.method public getItemCount()I
    .locals 6

    .line 254
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/4 v1, 0x6

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    return v2

    .line 260
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, 0x3

    :goto_0
    add-int/2addr v5, v2

    return v5

    :cond_4
    if-ne v0, v2, :cond_5

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    return v0

    .line 265
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 268
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    if-ne v0, v5, :cond_7

    goto :goto_1

    :cond_7
    move v1, v3

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->needEmptyView:Z

    add-int/2addr v1, v0

    return v1

    .line 266
    :cond_8
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    move v1, v3

    :goto_3
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    const/4 v3, 0x0

    if-nez v0, :cond_b

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    if-nez v4, :cond_b

    :cond_a
    move v4, v2

    goto :goto_4

    :cond_b
    move v4, v3

    :goto_4
    add-int/2addr v1, v4

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->needEmptyView:Z

    add-int/2addr v1, v4

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    move v2, v3

    :goto_5
    sub-int/2addr v1, v2

    return v1
.end method

.method public getItemViewType(I)I
    .locals 10

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 451
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/4 v1, 0x7

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    return v1

    .line 454
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->needEmptyView:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_2

    const/16 p1, 0xa

    return p1

    .line 457
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_3

    return v1

    :cond_3
    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    return v3

    .line 463
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/16 v7, 0x9

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v6, :cond_9

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p1, v9, :cond_8

    const/16 p1, 0x8

    return p1

    :cond_5
    if-ne p1, v9, :cond_6

    return v7

    :cond_6
    if-ne p1, v8, :cond_7

    return v9

    :cond_7
    if-ne p1, v5, :cond_8

    .line 474
    iput p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->shareLiveLocationPotistion:I

    return v2

    :cond_8
    return v1

    :cond_9
    if-ne v0, v9, :cond_b

    if-ne p1, v3, :cond_a

    .line 482
    iput p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->shareLiveLocationPotistion:I

    return v2

    :cond_a
    return v1

    :cond_b
    if-ne v0, v3, :cond_14

    if-ne p1, v3, :cond_c

    return v3

    :cond_c
    if-ne p1, v9, :cond_d

    .line 492
    iput p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->shareLiveLocationPotistion:I

    return v2

    :cond_d
    if-ne p1, v8, :cond_e

    return v7

    :cond_e
    if-ne p1, v5, :cond_f

    return v9

    .line 498
    :cond_f
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    if-nez v0, :cond_10

    goto :goto_0

    .line 502
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_19

    return v4

    :cond_11
    :goto_0
    if-gt p1, v1, :cond_13

    .line 499
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-nez p1, :cond_12

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    if-nez p1, :cond_13

    :cond_12
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    if-nez p1, :cond_13

    return v8

    :cond_13
    return v5

    :cond_14
    if-ne p1, v3, :cond_15

    return v3

    :cond_15
    if-ne p1, v9, :cond_16

    return v7

    :cond_16
    if-ne p1, v8, :cond_17

    return v9

    .line 512
    :cond_17
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1

    .line 516
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v5

    if-ne p1, v0, :cond_19

    return v4

    :cond_19
    return v8

    :cond_1a
    :goto_1
    if-gt p1, v2, :cond_1c

    .line 513
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-nez p1, :cond_1b

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    if-nez p1, :cond_1c

    :cond_1b
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    if-nez p1, :cond_1c

    return v8

    :cond_1c
    return v5
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 525
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 527
    iget p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->dialogId:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz p1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x7

    if-ne p1, v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 346
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a

    const/4 v3, 0x4

    if-eq v0, v3, :cond_9

    const/4 v3, 0x6

    if-eq v0, v3, :cond_7

    const/4 v4, 0x7

    if-eq v0, v4, :cond_2

    const/16 p2, 0xa

    if-eq v0, p2, :cond_0

    goto/16 :goto_7

    .line 400
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 401
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    if-eqz p2, :cond_1

    const-string p2, "dialogBackgroundGray"

    goto :goto_0

    :cond_1
    const-string p2, "dialogBackground"

    :goto_0
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_7

    .line 388
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SharingLiveLocationCell;

    .line 389
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    if-ne v0, v3, :cond_3

    .line 390
    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->setDialog(Lorg/telegram/messenger/MessageObject;Landroid/location/Location;Z)V

    goto/16 :goto_7

    .line 391
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v0, :cond_4

    .line 392
    iget-wide v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->dialogId:J

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->setDialog(JLorg/telegram/tgnet/TLRPC$TL_channelLocation;)V

    goto/16 :goto_7

    .line 393
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_5

    if-ne p2, v1, :cond_5

    .line 394
    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->setDialog(Lorg/telegram/messenger/MessageObject;Landroid/location/Location;Z)V

    goto/16 :goto_7

    .line 396
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    const/4 v2, 0x5

    :cond_6
    sub-int/2addr p2, v2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LocationActivity$LiveLocation;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->setDialog(Lorg/telegram/ui/LocationActivity$LiveLocation;Landroid/location/Location;)V

    goto/16 :goto_7

    .line 385
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SendLocationCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz p2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/SendLocationCell;->setHasLocation(Z)V

    goto/16 :goto_7

    .line 382
    :cond_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/LocationLoadingCell;

    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/LocationLoadingCell;->setLoading(Z)V

    goto/16 :goto_7

    .line 370
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/LocationCell;

    .line 371
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    if-nez v0, :cond_b

    add-int/lit8 p2, p2, -0x4

    goto :goto_2

    :cond_b
    add-int/lit8 p2, p2, -0x5

    :goto_2
    const/4 v0, 0x0

    if-ltz p2, :cond_d

    .line 376
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_d

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    if-nez v2, :cond_c

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    goto :goto_4

    :cond_d
    :goto_3
    move-object v2, v0

    :goto_4
    if-ltz p2, :cond_f

    .line 377
    iget-object v3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_f

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    if-nez v3, :cond_e

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 378
    :cond_f
    :goto_5
    invoke-virtual {p1, v2, v0, p2, v1}, Lorg/telegram/ui/Cells/LocationCell;->setLocation(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Ljava/lang/String;IZ)V

    goto :goto_7

    .line 361
    :cond_10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 362
    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_11

    .line 363
    sget p2, Lorg/telegram/messenger/R$string;->LiveLocations:I

    const-string v0, "LiveLocations"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 365
    :cond_11
    sget p2, Lorg/telegram/messenger/R$string;->NearbyVenue:I

    const-string v0, "NearbyVenue"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 357
    :cond_12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SendLocationCell;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    .line 358
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    goto :goto_7

    .line 348
    :cond_13
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-nez p2, :cond_14

    .line 350
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    iget v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    goto :goto_6

    .line 352
    :cond_14
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 354
    :goto_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    .line 337
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 328
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 329
    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string v2, "windowBackgroundGrayShadow"

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 330
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "windowBackgroundGray"

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v2, p2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 332
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 322
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/Cells/LocationDirectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/LocationDirectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 323
    new-instance p2, Lorg/telegram/ui/Adapters/LocationActivityAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/LocationActivityAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/LocationDirectionCell;->setOnButtonClick(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 319
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/Cells/SharingLiveLocationCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x36

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x10

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 313
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/Cells/SendLocationCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/SendLocationCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 314
    iget-wide v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/SendLocationCell;->setDialogId(J)V

    goto :goto_3

    .line 310
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/Cells/LocationPoweredCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/LocationPoweredCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 307
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Cells/LocationLoadingCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/LocationLoadingCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 303
    :pswitch_6
    new-instance p2, Lorg/telegram/ui/Cells/LocationCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v0, p1, v1}, Lorg/telegram/ui/Cells/LocationCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_2

    .line 300
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 297
    :pswitch_8
    new-instance p2, Lorg/telegram/ui/Cells/SendLocationCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v0, p1, v1}, Lorg/telegram/ui/Cells/SendLocationCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_2
    move-object p1, p2

    goto :goto_3

    .line 293
    :pswitch_9
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->emptyCell:Landroid/widget/FrameLayout;

    .line 294
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    iget v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    :goto_3
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDirectionClick()V
    .locals 0

    return-void
.end method

.method public onLocationAddressAvailable(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    const/4 p2, 0x0

    .line 210
    iput-boolean p2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchingLocation:Z

    .line 211
    iput-object p3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->previousFetchedLocation:Landroid/location/Location;

    .line 212
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->addressName:Ljava/lang/String;

    .line 213
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    return-void
.end method

.method public setChatLocation(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    return-void
.end method

.method public setCustomLocation(Landroid/location/Location;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    .line 146
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchLocationAddress()V

    .line 147
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    return-void
.end method

.method public setGpsLocation(Landroid/location/Location;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    .line 116
    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-nez p1, :cond_1

    .line 117
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchLocationAddress()V

    :cond_1
    if-eqz v0, :cond_2

    .line 119
    iget p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->shareLiveLocationPotistion:I

    if-lez p1, :cond_2

    .line 120
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 122
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_3

    .line 123
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateLiveLocations()V

    goto :goto_1

    .line 125
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->locationType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    .line 126
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    goto :goto_1

    .line 128
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateLiveLocations()V

    :goto_1
    return-void
.end method

.method public setLiveLocations(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/LocationActivity$LiveLocation;",
            ">;)V"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    .line 152
    iget p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    const/4 p1, 0x0

    .line 153
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 154
    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/LocationActivity$LiveLocation;

    iget-wide v2, v2, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/LocationActivity$LiveLocation;

    iget-object v2, v2, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 155
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 159
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 164
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMyLocationDenied(Z)V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 91
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->myLocationDenied:Z

    .line 92
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOverScrollHeight(I)V
    .locals 2

    .line 96
    iput p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->emptyCell:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-nez p1, :cond_0

    .line 100
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    iget v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 102
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 104
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->emptyCell:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->emptyCell:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->forceLayout()V

    :cond_1
    return-void
.end method

.method public setUpdateRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public updateLiveLocationCell()V
    .locals 1

    .line 133
    iget v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->shareLiveLocationPotistion:I

    if-lez v0, :cond_0

    .line 134
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public updateLiveLocations()V
    .locals 3

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 140
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->currentLiveLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
