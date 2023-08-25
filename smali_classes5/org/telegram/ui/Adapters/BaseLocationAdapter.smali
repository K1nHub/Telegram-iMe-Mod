.class public abstract Lorg/telegram/ui/Adapters/BaseLocationAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "BaseLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    }
.end annotation


# instance fields
.field private currentAccount:I

.field private currentRequestNum:I

.field private delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

.field private dialogId:J

.field private lastFoundQuery:Ljava/lang/String;

.field private lastSearchLocation:Landroid/location/Location;

.field private lastSearchQuery:Ljava/lang/String;

.field protected locations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;",
            ">;"
        }
    .end annotation
.end field

.field protected places:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;",
            ">;"
        }
    .end annotation
.end field

.field protected searchInProgress:Z

.field private searchRunnable:Ljava/lang/Runnable;

.field protected searched:Z

.field protected searching:Z

.field protected searchingLocations:Z

.field private searchingUser:Z

.field public final stories:Z


# direct methods
.method public static synthetic $r8$lambda$DKvTSYxkI4wK8kMY522ftr1iAow(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Landroid/location/Location;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchPlacesWithQuery$4(Landroid/location/Location;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ET717Kj9ld9ieJaxT_QcgVCMaP4(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchPlacesWithQuery$7(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LhEps_belgVy8dM0QymDPif70Jg(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchBotUser$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M5pEnfvG1qE0SmAACEhWNyquPlU(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchDelayed$1(Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R-GMHY0yiOKg4u8yZdcYYOgbtl0(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchPlacesWithQuery$6(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dbxi_Lizh1BkMdDHHUwd4wMkbog(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchDelayed$0(Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pjRZmnIT254xlDjSU-ykkpMi1P0(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/util/Locale;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchPlacesWithQuery$5(Ljava/util/Locale;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zKhvRg4tJR67bQmvjIlZlJiWZI8(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchBotUser$2(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    .line 60
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    .line 42
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->stories:Z

    return-void
.end method

.method private synthetic lambda$searchBotUser$2(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 109
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 110
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 111
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 112
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 113
    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;Z)V

    return-void
.end method

.method private synthetic lambda$searchBotUser$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 108
    new-instance p2, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$searchDelayed$0(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 91
    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;Z)V

    return-void
.end method

.method private synthetic lambda$searchDelayed$1(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    .line 89
    new-instance v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchPlacesWithQuery$4(Landroid/location/Location;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchingLocations:Z

    if-nez p1, :cond_0

    .line 345
    iput v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    .line 346
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    .line 347
    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 348
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchInProgress:Z

    .line 349
    iput-object p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastFoundQuery:Ljava/lang/String;

    .line 351
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 353
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$searchPlacesWithQuery$5(Ljava/util/Locale;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .locals 25

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v3, p1

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v2, 0x5

    move-object/from16 v4, p2

    .line 209
    invoke-virtual {v1, v4, v2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 210
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 211
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    .line 213
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_19

    .line 214
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Address;

    .line 215
    invoke-virtual {v8}, Landroid/location/Address;->hasLatitude()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-virtual {v8}, Landroid/location/Address;->hasLongitude()Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_a

    .line 217
    :cond_0
    invoke-virtual {v8}, Landroid/location/Address;->getLatitude()D

    move-result-wide v9

    .line 218
    invoke-virtual {v8}, Landroid/location/Address;->getLongitude()D

    move-result-wide v11

    .line 220
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    invoke-virtual {v8}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v16

    .line 227
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 228
    invoke-virtual {v8}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v16

    :cond_1
    move-object/from16 v2, v16

    .line 230
    invoke-virtual {v8}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v18, 0x1

    move-object/from16 v19, v1

    const-string v1, ", "

    if-nez v16, :cond_3

    :try_start_1
    invoke-virtual {v8}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 232
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 233
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_2
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 238
    :cond_3
    invoke-virtual {v8}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 240
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 241
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_4
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    .line 246
    :cond_5
    invoke-virtual {v8}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 248
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 249
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_6
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    move/from16 v3, v18

    .line 258
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 259
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 260
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_8
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_a

    .line 265
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_9

    .line 266
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_9
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const/16 v18, 0x0

    .line 271
    :cond_b
    invoke-virtual {v8}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "US"

    move/from16 v16, v7

    .line 274
    invoke-virtual {v8}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "AE"

    invoke-virtual {v8}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "GB"

    invoke-virtual {v8}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "en"

    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_3

    :cond_c
    move/from16 v21, v3

    move-object/from16 v20, v15

    const/4 v6, 0x0

    move-object v3, v2

    goto :goto_6

    :cond_d
    :goto_3
    const-string v6, ""

    const-string v7, " "

    .line 276
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v20, v6

    .line 277
    array-length v6, v7

    move/from16 v21, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v15

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v6, :cond_f

    move/from16 v22, v6

    aget-object v6, v7, v15

    .line 278
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_e

    move-object/from16 v23, v7

    .line 279
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v24, v6

    move v6, v3

    move-object/from16 v3, v24

    goto :goto_5

    :cond_e
    move-object/from16 v23, v7

    const/4 v6, 0x0

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v22

    move-object/from16 v7, v23

    goto :goto_4

    :cond_f
    const/4 v6, 0x0

    .line 282
    :goto_6
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_10

    .line 283
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_10
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_11

    .line 287
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_11
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_12
    move/from16 v21, v3

    move/from16 v16, v7

    move-object/from16 v20, v15

    const/4 v6, 0x0

    .line 292
    :goto_7
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-wide/16 v2, -0x1

    if-lez v1, :cond_13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 293
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 294
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v7, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 295
    iput-wide v9, v7, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 296
    iput-wide v11, v7, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 297
    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->query_id:J

    .line 298
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    const-string v7, "https://ss3.4sqi.net/img/categories_v2/building/government_capitolbuilding_64.png"

    .line 299
    iput-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    .line 300
    invoke-virtual {v8}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/LocationController;->countryCodeToEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    .line 301
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v7, "Country"

    .line 302
    sget v13, Lorg/telegram/messenger/R$string;->Country:I

    invoke-static {v7, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    .line 303
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x5

    if-lt v1, v7, :cond_13

    goto/16 :goto_c

    :cond_13
    const-string v1, "PassportCity"

    if-nez v18, :cond_14

    .line 309
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 310
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 311
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v13, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 312
    iput-wide v9, v13, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 313
    iput-wide v11, v13, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 314
    iput-wide v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->query_id:J

    .line 315
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    const-string v13, "https://ss3.4sqi.net/img/categories_v2/travel/hotel_64.png"

    .line 316
    iput-object v13, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    .line 317
    invoke-virtual {v8}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/LocationController;->countryCodeToEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    .line 318
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    sget v8, Lorg/telegram/messenger/R$string;->PassportCity:I

    invoke-static {v1, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    .line 320
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_14

    goto :goto_c

    :cond_14
    if-eqz v20, :cond_16

    .line 326
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_16

    .line 327
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 328
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 329
    iput-wide v9, v8, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 330
    iput-wide v11, v8, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 331
    iput-wide v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->query_id:J

    .line 332
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    const-string v2, "pin"

    .line 333
    iput-object v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    if-eqz v21, :cond_15

    .line 334
    sget v2, Lorg/telegram/messenger/R$string;->PassportCity:I

    :goto_8
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_15
    const-string v1, "PassportStreet1"

    sget v2, Lorg/telegram/messenger/R$string;->PassportStreet1:I

    goto :goto_8

    :goto_9
    iput-object v1, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    .line 335
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_18

    goto :goto_c

    :cond_16
    const/4 v2, 0x5

    goto :goto_b

    :cond_17
    :goto_a
    move-object/from16 v19, v1

    move/from16 v16, v7

    const/4 v6, 0x0

    :cond_18
    :goto_b
    add-int/lit8 v7, v16, 0x1

    move-object/from16 v3, p1

    move-object/from16 v1, v19

    goto/16 :goto_0

    .line 342
    :catch_0
    :cond_19
    :goto_c
    new-instance v1, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda0;

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Landroid/location/Location;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchPlacesWithQuery$6(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 366
    iput p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    .line 367
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 369
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchInProgress:Z

    .line 370
    iput-object p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastFoundQuery:Ljava/lang/String;

    .line 372
    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    .line 373
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_2

    .line 374
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 375
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v2, "venue"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    if-nez v2, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    .line 379
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 380
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 381
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->address:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    .line 382
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->title:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://ss3.4sqi.net/img/categories_v2/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_64.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    .line 384
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_type:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_type:Ljava/lang/String;

    .line 385
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_id:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    .line 386
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->provider:Ljava/lang/String;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    .line 387
    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->query_id:J

    .line 388
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->result_id:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 392
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    if-eqz p1, :cond_3

    .line 393
    iget-object p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;->didLoadSearchResult(Ljava/util/ArrayList;)V

    .line 395
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$searchPlacesWithQuery$7(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 364
    new-instance v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private searchBotUser()V
    .locals 3

    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchingUser:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchingUser:Z

    .line 102
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 103
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->stories:Z

    if-eqz v1, :cond_1

    .line 104
    iget v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->venueSearchBot:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->venueSearchBot:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 106
    iget v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 66
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    :cond_0
    return-void
.end method

.method public getLastSearchString()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastFoundQuery:Ljava/lang/String;

    return-object v0
.end method

.method public isSearching()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchInProgress:Z

    return v0
.end method

.method public searchDelayed(Ljava/lang/String;Landroid/location/Location;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    :cond_1
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchInProgress:Z

    .line 89
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x190

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 79
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->locations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchInProgress:Z

    .line 82
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method public searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;ZZ)V

    return-void
.end method

.method public searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;ZZ)V
    .locals 7

    if-nez p2, :cond_0

    .line 152
    iget-boolean p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->stories:Z

    if-eqz p4, :cond_1

    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p4

    const/high16 v0, 0x43480000    # 200.0f

    cmpg-float p4, p4, v0

    if-gez p4, :cond_2

    :cond_1
    return-void

    :cond_2
    if-nez p2, :cond_3

    const/4 p4, 0x0

    goto :goto_0

    .line 155
    :cond_3
    new-instance p4, Landroid/location/Location;

    invoke-direct {p4, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    :goto_0
    iput-object p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    .line 156
    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchQuery:Ljava/lang/String;

    .line 157
    iget-boolean p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_4

    .line 158
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    .line 159
    iget p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    if-eqz p4, :cond_4

    .line 160
    iget p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    iget v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    invoke-virtual {p4, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 161
    iput v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    .line 164
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 166
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    .line 168
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    .line 170
    iget p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    .line 171
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->stories:Z

    if-eqz v2, :cond_5

    .line 172
    iget v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->venueSearchBot:Ljava/lang/String;

    goto :goto_1

    .line 173
    :cond_5
    iget v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->venueSearchBot:Ljava/lang/String;

    .line 170
    :goto_1
    invoke-virtual {p4, v2}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object p4

    .line 175
    instance-of v2, p4, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_7

    if-eqz p3, :cond_6

    .line 177
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchBotUser()V

    :cond_6
    return-void

    .line 181
    :cond_7
    check-cast p4, Lorg/telegram/tgnet/TLRPC$User;

    .line 183
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    const-string v2, ""

    if-nez p1, :cond_8

    move-object v3, v2

    goto :goto_2

    :cond_8
    move-object v3, p1

    .line 184
    :goto_2
    iput-object v3, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 185
    iget v3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, p4}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p4

    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 186
    iput-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 189
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 190
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, p4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 191
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, p4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 192
    iget p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    or-int/2addr p4, v1

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    .line 195
    :cond_9
    iget-wide v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->dialogId:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 196
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_3

    .line 198
    :cond_a
    iget p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-wide v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->dialogId:J

    invoke-virtual {p4, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p4

    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 201
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_b

    iget-boolean p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->stories:Z

    if-eqz p4, :cond_b

    .line 202
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchingLocations:Z

    .line 203
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    .line 205
    sget-object p4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/util/Locale;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    invoke-virtual {p4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 357
    :cond_b
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchingLocations:Z

    :goto_4
    if-nez p2, :cond_c

    return-void

    .line 364
    :cond_c
    iget p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda7;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    .line 398
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDelegate(JLorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->dialogId:J

    .line 74
    iput-object p3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    return-void
.end method
