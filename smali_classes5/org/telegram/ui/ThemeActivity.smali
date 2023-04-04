.class public Lorg/telegram/ui/ThemeActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ThemeActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ThemeActivity$TintRecyclerListView;,
        Lorg/telegram/ui/ThemeActivity$ListAdapter;,
        Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;,
        Lorg/telegram/ui/ThemeActivity$InnerCustomAccentView;,
        Lorg/telegram/ui/ThemeActivity$InnerAccentView;,
        Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;,
        Lorg/telegram/ui/ThemeActivity$TextSizeCell;,
        Lorg/telegram/ui/ThemeActivity$GpsLocationListener;
    }
.end annotation


# instance fields
.field private appIconHeaderRow:I

.field private appIconSelectorRow:I

.field private appIconShadowRow:I

.field private audioPauseMusicOnRecordRow:I

.field private automaticBrightnessInfoRow:I

.field private automaticBrightnessRow:I

.field private automaticHeaderRow:I

.field private backgroundRow:I

.field private bluetoothScoRow:I

.field private bubbleRadiusHeaderRow:I

.field private bubbleRadiusInfoRow:I

.field private bubbleRadiusRow:I

.field private chatBlurRow:I

.field private chatListHeaderRow:I

.field private chatListInfoRow:I

.field private chatListRow:I

.field private contactsReimportRow:I

.field private contactsSortRow:I

.field private createNewThemeRow:I

.field private currentType:I

.field private customTabsRow:I

.field private darkThemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private defaultThemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private directShareRow:I

.field private distanceRow:I

.field private editThemeRow:I

.field private enableAnimationsRow:I

.field private filesSendingPreviewAndCaptionRow:I

.field private gpsLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

.field hasThemeAccents:Z

.field lastIsDarkTheme:Z

.field private lastShadowRow:I

.field private listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private liteModeInfoRow:I

.field private liteModeRow:I

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private networkLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

.field private newThemeInfoRow:I

.field private nightAutomaticRow:I

.field private nightDisabledRow:I

.field private nightScheduledRow:I

.field private nightSystemDefaultRow:I

.field private nightThemeRow:I

.field private nightTypeInfoRow:I

.field private pauseOnMediaRow:I

.field private pauseOnRecordRow:I

.field private preferedHeaderRow:I

.field private previousByLocation:Z

.field private previousUpdatedType:I

.field private raiseToListenRow:I

.field private raiseToSpeakRow:I

.field private rowCount:I

.field private saveToGalleryOption1Row:I

.field private saveToGalleryOption2Row:I

.field private saveToGallerySectionRow:I

.field private scheduleFromRow:I

.field private scheduleFromToInfoRow:I

.field private scheduleHeaderRow:I

.field private scheduleLocationInfoRow:I

.field private scheduleLocationRow:I

.field private scheduleToRow:I

.field private scheduleUpdateLocationRow:I

.field private selectThemeHeaderRow:I

.field private sendByEnterRow:I

.field private settings2Row:I

.field private settingsRow:I

.field private sharingAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

.field private sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private sharingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field private stickersInfoRow:I

.field private stickersRow:I

.field private sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private swipeGestureHeaderRow:I

.field private swipeGestureInfoRow:I

.field private swipeGestureRow:I

.field private textSizeHeaderRow:I

.field private textSizeRow:I

.field private themeAccentListRow:I

.field private themeHeaderRow:I

.field private themeInfoRow:I

.field private themeListRow:I

.field private themeListRow2:I

.field private themePreviewRow:I

.field private themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

.field private updateDistance:Z

.field private updateRecordViaSco:Z

.field private updatingLocation:Z

.field private vibrationRow:I


# direct methods
.method public static synthetic $r8$lambda$4ZJBmBvY3wtwdcc3VDRAZdSjgSM(Lorg/telegram/ui/ThemeActivity;ILjava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$3(ILjava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4_LVxCpBtFxk8X_IZ90OfrBRHss(Lorg/telegram/ui/ThemeActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->lambda$updateSunTime$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8mGlFBD9iKdQFQNYss3l7CIkmOQ(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$8(Landroid/content/Context;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$HEPtprHLkr4PdsPOiCtxnDtixTY(Lorg/telegram/ui/ThemeActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->lambda$didReceivedNotification$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LXEqEdZJWSy7YCTFuTU7L9nxdUo(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->lambda$getThemeDescriptions$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ovr24GkjV6BGYsuVVcl3gFmj2SQ(Lorg/telegram/ui/ThemeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->lambda$updateSunTime$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$U0FU61lsWI5ogby5psNSd7M6aQQ(Lorg/telegram/ui/ThemeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->lambda$createNewTheme$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UM18aTc2VkvPUFpY4hL9yY8ZWDA(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ThemeActivity;->lambda$updateRows$0(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_v3Zq6wcHJ_zIwWIiWCOO03OFsM(Lorg/telegram/ui/ThemeActivity;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$5(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d8EC-Nk40UQYBa6TwNaxhiJzn7U(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->lambda$updateSunTime$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$gQEFeeJvhQiiCXdTr6p5kAGvphU(Lorg/telegram/ui/ThemeActivity;ILorg/telegram/ui/Cells/TextSettingsCell;Landroid/widget/TimePicker;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$7(ILorg/telegram/ui/Cells/TextSettingsCell;Landroid/widget/TimePicker;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$lbSKApNI1IdBqvZPyvp4gC1iuC0(Lorg/telegram/ui/ThemeActivity;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$6(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$w4DzAFlypEcK5AUvfRDPkiPdGZY(Lorg/telegram/ui/Cells/TextCheckCell;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$2(Lorg/telegram/ui/Cells/TextCheckCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wYb5yR_wzZlQAdX1x1f4VULgk2w(Lorg/telegram/ui/ThemeActivity;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$4(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 427
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->darkThemes:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ThemeActivity$GpsLocationListener;-><init>(Lorg/telegram/ui/ThemeActivity;Lorg/telegram/ui/ThemeActivity$1;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->gpsLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    .line 226
    new-instance v0, Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ThemeActivity$GpsLocationListener;-><init>(Lorg/telegram/ui/ThemeActivity;Lorg/telegram/ui/ThemeActivity$1;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->networkLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    .line 428
    iput p1, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    const/4 p1, 0x1

    .line 429
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->stopLocationUpdate()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ThemeActivity;IZ)Z
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->setBubbleRadius(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->appIconSelectorRow:I

    return p0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->createNewTheme()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->editTheme()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ThemeActivity;Z)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ThemeActivity$ListAdapter;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ThemeActivity;Landroid/location/Location;Z)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Cells/ThemesHorizontalListCell;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/ThemeActivity;Lorg/telegram/ui/Cells/ThemesHorizontalListCell;)Lorg/telegram/ui/Cells/ThemesHorizontalListCell;
    .locals 0

    .line 111
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessInfoRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ThemeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ThemeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->darkThemes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightThemeRow:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleToRow:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->contactsSortRow:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->contactsReimportRow:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ThemeActivity;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lorg/telegram/ui/ThemeActivity;->updateDistance:Z

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/ThemeActivity;Z)Z
    .locals 0

    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/ThemeActivity;->updateDistance:Z

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ThemeActivity;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lorg/telegram/ui/ThemeActivity;->updateRecordViaSco:Z

    return p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/ThemeActivity;Z)Z
    .locals 0

    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/ThemeActivity;->updateRecordViaSco:Z

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationInfoRow:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ThemeActivity;)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->getLocationSunString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureInfoRow:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->stickersInfoRow:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->liteModeInfoRow:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightTypeInfoRow:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeInfoRow:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ThemeActivity;I)Z
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->setFontSize(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->lastShadowRow:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->saveToGallerySectionRow:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->settings2Row:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightDisabledRow:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightScheduledRow:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightAutomaticRow:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightSystemDefaultRow:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleHeaderRow:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->automaticHeaderRow:I

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->preferedHeaderRow:I

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->settingsRow:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeHeaderRow:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->textSizeHeaderRow:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->chatListHeaderRow:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusHeaderRow:I

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureHeaderRow:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->selectThemeHeaderRow:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->appIconHeaderRow:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->vibrationRow:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->audioPauseMusicOnRecordRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->filesSendingPreviewAndCaptionRow:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationRow:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->enableAnimationsRow:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->sendByEnterRow:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->raiseToListenRow:I

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->pauseOnRecordRow:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->pauseOnMediaRow:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->customTabsRow:I

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->directShareRow:I

    return p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->chatBlurRow:I

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->backgroundRow:I

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    return p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->createNewThemeRow:I

    return p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->stickersRow:I

    return p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->liteModeRow:I

    return p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->saveToGalleryOption1Row:I

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromToInfoRow:I

    return p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->newThemeInfoRow:I

    return p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->chatListInfoRow:I

    return p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusInfoRow:I

    return p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->appIconShadowRow:I

    return p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessRow:I

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->chatListRow:I

    return p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow:I

    return p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureRow:I

    return p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themePreviewRow:I

    return p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    return p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->saveToGalleryOption2Row:I

    return p0
.end method

.method private createNewTheme()V
    .locals 3

    .line 1376
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1379
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1380
    sget v1, Lorg/telegram/messenger/R$string;->NewTheme:I

    const-string v2, "NewTheme"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1381
    sget v1, Lorg/telegram/messenger/R$string;->CreateNewThemeAlert:I

    const-string v2, "CreateNewThemeAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1382
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1383
    sget v1, Lorg/telegram/messenger/R$string;->CreateTheme:I

    const-string v2, "CreateTheme"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1384
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private editTheme()V
    .locals 7

    .line 1370
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    const/4 v0, 0x0

    .line 1371
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v2

    .line 1372
    new-instance v6, Lorg/telegram/ui/ThemePreviewActivity;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    const/4 v3, 0x1

    const/16 v4, 0x64

    if-lt v2, v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iget v2, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-ne v2, v3, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZIZZ)V

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private getLocationSunString()Ljava/lang/String;
    .locals 8

    .line 1553
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->autoNightSunriseTime:I

    div-int/lit8 v1, v0, 0x3c

    mul-int/lit8 v2, v1, 0x3c

    sub-int/2addr v0, v2

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 1555
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "%02d:%02d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1556
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->autoNightSunsetTime:I

    div-int/lit8 v6, v5, 0x3c

    mul-int/lit8 v7, v6, 0x3c

    sub-int/2addr v5, v7

    new-array v7, v2, [Ljava/lang/Object;

    .line 1558
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1559
    sget v5, Lorg/telegram/messenger/R$string;->AutoNightUpdateLocationInfo:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object v3, v2, v1

    const-string v0, "AutoNightUpdateLocationInfo"

    invoke-static {v0, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$createNewTheme$9(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1383
    invoke-static {p0, p1, p2, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createThemeCreateDialog(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)V

    return-void
.end method

.method private static synthetic lambda$createView$2(Lorg/telegram/ui/Cells/TextCheckCell;)V
    .locals 1

    .line 1061
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isVibrationEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setVibrationEnabled(Z)V

    .line 1062
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$3(ILjava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 1

    .line 1144
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setDistanceSystemType(I)V

    const/4 p1, 0x1

    .line 1145
    iput-boolean p1, p0, Lorg/telegram/ui/ThemeActivity;->updateDistance:Z

    .line 1146
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p3, p0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1148
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    invoke-virtual {p3, p1, v0}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1150
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createView$4(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    .line 1177
    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    .line 1178
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    const/4 p2, 0x1

    .line 1179
    iput-boolean p2, p0, Lorg/telegram/ui/ThemeActivity;->updateRecordViaSco:Z

    .line 1180
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1182
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1184
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$5(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 1

    const/4 p2, 0x1

    .line 1195
    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    .line 1196
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 1197
    iput-boolean p2, p0, Lorg/telegram/ui/ThemeActivity;->updateRecordViaSco:Z

    .line 1198
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1200
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1202
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$6(ILandroid/content/DialogInterface;I)V
    .locals 1

    .line 1236
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 1237
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "sortContactsBy"

    .line 1238
    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1239
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1240
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    if-eqz p2, :cond_0

    .line 1241
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$7(ILorg/telegram/ui/Cells/TextSettingsCell;Landroid/widget/TimePicker;II)V
    .locals 5

    mul-int/lit8 p3, p4, 0x3c

    add-int/2addr p3, p5

    .line 1336
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "%02d:%02d"

    const/4 v4, 0x1

    if-ne p1, v0, :cond_0

    .line 1337
    sput p3, Lorg/telegram/ui/ActionBar/Theme;->autoNightDayStartTime:I

    .line 1338
    sget p1, Lorg/telegram/messenger/R$string;->AutoNightFrom:I

    const-string p3, "AutoNightFrom"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-static {v3, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 1340
    :cond_0
    sput p3, Lorg/telegram/ui/ActionBar/Theme;->autoNightDayEndTime:I

    .line 1341
    sget p1, Lorg/telegram/messenger/R$string;->AutoNightTo:I

    const-string p3, "AutoNightTo"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-static {v3, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1055
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->vibrationRow:I

    const/4 v5, 0x1

    if-eq v3, v4, :cond_34

    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->filesSendingPreviewAndCaptionRow:I

    if-eq v3, v4, :cond_34

    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->audioPauseMusicOnRecordRow:I

    if-ne v3, v4, :cond_0

    goto/16 :goto_8

    .line 1070
    :cond_0
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->enableAnimationsRow:I

    if-ne v3, v4, :cond_1

    .line 1071
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "view_animations"

    .line 1072
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1073
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    xor-int/lit8 v6, v4, 0x1

    .line 1074
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    xor-int/lit8 v3, v4, 0x1

    .line 1075
    invoke-static {v3}, Lorg/telegram/messenger/SharedConfig;->setAnimationsEnabled(Z)V

    .line 1076
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1077
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_37

    .line 1078
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    xor-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_9

    .line 1080
    :cond_1
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->backgroundRow:I

    const/4 v6, 0x0

    if-ne v3, v4, :cond_2

    .line 1081
    new-instance v1, Lorg/telegram/ui/WallpapersListActivity;

    invoke-direct {v1, v6}, Lorg/telegram/ui/WallpapersListActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_9

    .line 1082
    :cond_2
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->sendByEnterRow:I

    if-ne v3, v4, :cond_3

    .line 1083
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "send_by_enter"

    .line 1084
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1085
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    xor-int/lit8 v6, v4, 0x1

    .line 1086
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1087
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1088
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_37

    .line 1089
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    xor-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_9

    .line 1091
    :cond_3
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    if-ne v3, v4, :cond_4

    .line 1092
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleRaiseToSpeak()V

    .line 1093
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_37

    .line 1094
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_9

    .line 1096
    :cond_4
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->raiseToListenRow:I

    if-ne v3, v4, :cond_8

    .line 1097
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleRaiseToListen()V

    .line 1098
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_5

    .line 1099
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1101
    :cond_5
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    if-nez v1, :cond_7

    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    move v1, v6

    .line 1102
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 1103
    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1104
    instance-of v3, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    if-ne v3, v4, :cond_6

    .line 1105
    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1109
    :cond_7
    invoke-direct {v0, v6}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    goto/16 :goto_9

    .line 1110
    :cond_8
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->pauseOnRecordRow:I

    if-ne v3, v4, :cond_9

    .line 1111
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->togglePauseMusicOnRecord()V

    .line 1112
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_37

    .line 1113
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_9

    .line 1115
    :cond_9
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->pauseOnMediaRow:I

    if-ne v3, v4, :cond_a

    .line 1116
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->togglePauseMusicOnMedia()V

    .line 1117
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_37

    .line 1118
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_9

    .line 1120
    :cond_a
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    const-string v7, "listSelectorSDK21"

    const-string v8, "Cancel"

    const-string v9, "dialogRadioBackgroundChecked"

    const-string v10, "radioBackground"

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-ne v3, v4, :cond_e

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_b

    return-void

    .line 1124
    :cond_b
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1126
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1127
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-array v1, v11, [Ljava/lang/CharSequence;

    .line 1129
    sget v4, Lorg/telegram/messenger/R$string;->DistanceUnitsAutomatic:I

    const-string v15, "DistanceUnitsAutomatic"

    .line 1130
    invoke-static {v15, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    sget v4, Lorg/telegram/messenger/R$string;->DistanceUnitsKilometers:I

    const-string v15, "DistanceUnitsKilometers"

    .line 1131
    invoke-static {v15, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    sget v4, Lorg/telegram/messenger/R$string;->DistanceUnitsMiles:I

    const-string v15, "DistanceUnitsMiles"

    .line 1132
    invoke-static {v15, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v14

    move v4, v6

    :goto_1
    if-ge v4, v11, :cond_d

    .line 1137
    new-instance v15, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v15, v11}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 1138
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v15, v11, v6, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1139
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v15, v5, v11}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 1140
    aget-object v5, v1, v4

    sget v11, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    if-ne v4, v11, :cond_c

    const/4 v11, 0x1

    goto :goto_2

    :cond_c
    move v11, v6

    :goto_2
    invoke-virtual {v15, v5, v11}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 1141
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v14}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1142
    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1143
    new-instance v5, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0, v4, v2}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ThemeActivity;ILjava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v15, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    const/4 v11, 0x3

    goto :goto_1

    .line 1154
    :cond_d
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lorg/telegram/messenger/R$string;->DistanceUnitsTitle:I

    const-string v5, "DistanceUnitsTitle"

    .line 1155
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1156
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1157
    invoke-static {v8, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1158
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 1159
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1160
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_9

    .line 1161
    :cond_e
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    if-ne v3, v4, :cond_10

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_f

    return-void

    .line 1165
    :cond_f
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1167
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1168
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1170
    new-instance v1, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 1171
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v1, v4, v6, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1172
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 1173
    sget v4, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessagesBuiltIn:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    const/4 v11, 0x1

    xor-int/2addr v5, v11

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 1174
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v14}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1175
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1176
    new-instance v4, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ThemeActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1188
    new-instance v1, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 1189
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v1, v4, v6, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1190
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 1191
    sget v4, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessagesScoIfConnected:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessagesScoHint:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    invoke-virtual {v1, v4, v5, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndText2AndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1192
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v14}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1193
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1194
    new-instance v4, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ThemeActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1206
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessages:I

    .line 1207
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1208
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1209
    invoke-static {v8, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1210
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 1211
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1212
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_9

    .line 1213
    :cond_10
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->customTabsRow:I

    if-ne v3, v1, :cond_11

    .line 1214
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleCustomTabs()V

    .line 1215
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_37

    .line 1216
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_9

    .line 1218
    :cond_11
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->directShareRow:I

    if-ne v3, v1, :cond_12

    .line 1219
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleDirectShare()V

    .line 1220
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_37

    .line 1221
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_9

    .line 1223
    :cond_12
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->contactsReimportRow:I

    if-ne v3, v1, :cond_13

    goto/16 :goto_9

    .line 1225
    :cond_13
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->contactsSortRow:I

    if-ne v3, v1, :cond_15

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_14

    return-void

    .line 1229
    :cond_14
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1230
    sget v2, Lorg/telegram/messenger/R$string;->SortBy:I

    const-string v4, "SortBy"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 1231
    sget v4, Lorg/telegram/messenger/R$string;->Default:I

    const-string v5, "Default"

    .line 1232
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    sget v4, Lorg/telegram/messenger/R$string;->SortFirstName:I

    const-string v5, "SortFirstName"

    .line 1233
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    sget v4, Lorg/telegram/messenger/R$string;->SortLastName:I

    const-string v5, "SortLastName"

    .line 1234
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v14

    new-instance v4, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v3}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ThemeActivity;I)V

    .line 1231
    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1244
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1245
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_9

    .line 1246
    :cond_15
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->chatBlurRow:I

    if-ne v3, v1, :cond_16

    .line 1247
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleChatBlur()V

    .line 1248
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_37

    .line 1249
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_9

    .line 1251
    :cond_16
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightThemeRow:I

    if-ne v3, v1, :cond_20

    .line 1252
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x4c

    if-eqz v1, :cond_17

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p4, v1

    if-lez v1, :cond_18

    :cond_17
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_1f

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v1, p4, v1

    if-ltz v1, :cond_1f

    .line 1253
    :cond_18
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 1254
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-nez v2, :cond_19

    .line 1255
    sput v14, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    const/4 v2, 0x1

    .line 1256
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    goto :goto_3

    :cond_19
    const/4 v2, 0x1

    .line 1258
    sput v6, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1259
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 1261
    :goto_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->saveAutoNightThemeConfig()V

    .line 1262
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions(Z)V

    .line 1263
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-eqz v2, :cond_1a

    const/4 v6, 0x1

    :cond_1a
    if-eqz v6, :cond_1b

    .line 1264
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightThemeName()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_1b
    sget v2, Lorg/telegram/messenger/R$string;->AutoNightThemeOff:I

    const-string v3, "AutoNightThemeOff"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    if-eqz v6, :cond_1e

    .line 1267
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    .line 1268
    sget v3, Lorg/telegram/messenger/R$string;->AutoNightScheduled:I

    const-string v4, "AutoNightScheduled"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_1c
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1d

    .line 1270
    sget v3, Lorg/telegram/messenger/R$string;->AutoNightSystemDefault:I

    const-string v4, "AutoNightSystemDefault"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 1272
    :cond_1d
    sget v3, Lorg/telegram/messenger/R$string;->AutoNightAdaptive:I

    const-string v4, "AutoNightAdaptive"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1274
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1276
    :cond_1e
    sget v3, Lorg/telegram/messenger/R$string;->AutoNightTheme:I

    const-string v4, "AutoNightTheme"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v6, v4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_9

    :cond_1f
    const/4 v4, 0x1

    .line 1278
    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {v1, v4}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_9

    :cond_20
    const/4 v4, 0x1

    .line 1280
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightDisabledRow:I

    if-ne v3, v1, :cond_22

    .line 1281
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-nez v1, :cond_21

    return-void

    .line 1284
    :cond_21
    sput v6, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1285
    invoke-direct {v0, v4}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1286
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    goto/16 :goto_9

    .line 1287
    :cond_22
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightScheduledRow:I

    if-ne v3, v1, :cond_25

    .line 1288
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v1, v4, :cond_23

    return-void

    .line 1291
    :cond_23
    sput v4, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1292
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v1, :cond_24

    .line 1293
    invoke-direct {v0, v13, v4}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    .line 1295
    :cond_24
    invoke-direct {v0, v4}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1296
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    goto/16 :goto_9

    .line 1297
    :cond_25
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightAutomaticRow:I

    if-ne v3, v1, :cond_27

    .line 1298
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v1, v14, :cond_26

    return-void

    .line 1301
    :cond_26
    sput v14, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1302
    invoke-direct {v0, v4}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1303
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    goto/16 :goto_9

    .line 1304
    :cond_27
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightSystemDefaultRow:I

    if-ne v3, v1, :cond_29

    .line 1305
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_28

    return-void

    .line 1308
    :cond_28
    sput v2, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1309
    invoke-direct {v0, v4}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1310
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    goto/16 :goto_9

    .line 1311
    :cond_29
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationRow:I

    if-ne v3, v1, :cond_2b

    .line 1312
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    xor-int/2addr v1, v4

    sput-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    .line 1313
    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1314
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1315
    invoke-direct {v0, v4}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1316
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v1, :cond_2a

    .line 1317
    invoke-direct {v0, v13, v4}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    .line 1319
    :cond_2a
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    goto/16 :goto_9

    .line 1320
    :cond_2b
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    if-eq v3, v1, :cond_31

    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleToRow:I

    if-ne v3, v1, :cond_2c

    goto :goto_6

    .line 1345
    :cond_2c
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    if-ne v3, v1, :cond_2d

    const/4 v1, 0x1

    .line 1346
    invoke-direct {v0, v13, v1}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    goto/16 :goto_9

    .line 1347
    :cond_2d
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->createNewThemeRow:I

    if-ne v3, v1, :cond_2e

    .line 1348
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemeActivity;->createNewTheme()V

    goto/16 :goto_9

    .line 1349
    :cond_2e
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    if-ne v3, v1, :cond_2f

    .line 1350
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemeActivity;->editTheme()V

    goto/16 :goto_9

    .line 1351
    :cond_2f
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->stickersRow:I

    if-ne v3, v1, :cond_30

    .line 1352
    new-instance v1, Lorg/telegram/ui/StickersActivity;

    invoke-direct {v1, v6, v13}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_9

    .line 1353
    :cond_30
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->liteModeRow:I

    if-ne v3, v1, :cond_37

    .line 1354
    new-instance v1, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_9

    .line 1321
    :cond_31
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_32

    return-void

    .line 1326
    :cond_32
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    if-ne v3, v1, :cond_33

    .line 1327
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightDayStartTime:I

    div-int/lit8 v4, v1, 0x3c

    goto :goto_7

    .line 1330
    :cond_33
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightDayEndTime:I

    div-int/lit8 v4, v1, 0x3c

    :goto_7
    mul-int/lit8 v5, v4, 0x3c

    sub-int/2addr v1, v5

    move v9, v1

    move v8, v4

    .line 1333
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1334
    new-instance v2, Landroid/app/TimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v3, v1}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ThemeActivity;ILorg/telegram/ui/Cells/TextSettingsCell;)V

    const/4 v10, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 1344
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_9

    .line 1056
    :cond_34
    :goto_8
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1057
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1058
    iget v2, v0, Lorg/telegram/ui/ThemeActivity;->vibrationRow:I

    if-ne v3, v2, :cond_35

    .line 1059
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isVibrationEnabled:Z

    xor-int/2addr v2, v4

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->setVibrationEnabled(Z)V

    .line 1060
    new-instance v2, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showRestartDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_9

    .line 1064
    :cond_35
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->audioPauseMusicOnRecordRow:I

    if-ne v3, v1, :cond_36

    .line 1065
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->togglePauseMusicOnRecord()V

    goto :goto_9

    .line 1066
    :cond_36
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->filesSendingPreviewAndCaptionRow:I

    if-ne v3, v1, :cond_37

    .line 1067
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isFilesSendingPreviewAndCaptionEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setFilesSendingPreviewAndCaptionEnabled(Z)V

    :cond_37
    :goto_9
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$1(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 884
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 885
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 886
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$13()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2615
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2616
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2617
    instance-of v3, v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    if-eqz v3, :cond_0

    .line 2618
    check-cast v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2621
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2622
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2623
    instance-of v3, v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    if-eqz v3, :cond_2

    .line 2624
    check-cast v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 2627
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2628
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2629
    instance-of v3, v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    if-eqz v3, :cond_4

    .line 2630
    check-cast v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2633
    :cond_5
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 2634
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2635
    instance-of v2, v1, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    if-eqz v2, :cond_6

    .line 2636
    check-cast v1, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private static synthetic lambda$updateRows$0(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)I
    .locals 0

    .line 590
    iget p0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->sortIndex:I

    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->sortIndex:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateSunTime$10(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1447
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1451
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

.method private synthetic lambda$updateSunTime$11(Ljava/lang/String;)V
    .locals 4

    .line 1505
    sput-object p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightCityName:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 1507
    sget-wide v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v1, 0x1

    sget-wide v2, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLongitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "(%.06f, %.06f)"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightCityName:Ljava/lang/String;

    .line 1509
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->saveAutoNightThemeConfig()V

    .line 1510
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_1

    .line 1511
    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_1

    .line 1512
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v1, :cond_1

    .line 1513
    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v1, Lorg/telegram/messenger/R$string;->AutoNightUpdateLocation:I

    const-string v2, "AutoNightUpdateLocation"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->autoNightCityName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateSunTime$12()V
    .locals 7

    const/4 v0, 0x0

    .line 1493
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 1494
    sget-wide v2, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLatitude:D

    sget-wide v4, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLongitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    .line 1495
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 1496
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    :catch_0
    :cond_0
    new-instance v1, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ThemeActivity;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setBubbleRadius(IZ)Z
    .locals 3

    .line 433
    sget v0, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    .line 434
    sput p1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    .line 435
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 436
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 437
    sget v0, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    const-string v2, "bubbleRadius"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 438
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 440
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 441
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    if-eqz v0, :cond_1

    .line 442
    check-cast p1, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    .line 443
    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity$TextSizeCell;->access$1200(Lorg/telegram/ui/ThemeActivity$TextSizeCell;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->getCells()[Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    .line 444
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 445
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 446
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ThemeActivity$TextSizeCell;->invalidate()V

    .line 451
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 452
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    if-eqz v0, :cond_3

    .line 453
    check-cast p1, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    if-eqz p2, :cond_2

    .line 455
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_1

    .line 457
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->invalidate()V

    .line 461
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->updateMenuItem()V

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method private setFontSize(I)Z
    .locals 3

    .line 468
    sget v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    .line 469
    sput p1, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    .line 470
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->fontSizeIsDefault:Z

    .line 471
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "mainconfig"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    .line 475
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 476
    sget v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const-string v2, "fons_size"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 477
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 479
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->createCommonMessageResources()V

    .line 481
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 482
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    if-eqz v0, :cond_1

    .line 483
    check-cast p1, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    .line 484
    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity$TextSizeCell;->access$1200(Lorg/telegram/ui/ThemeActivity$TextSizeCell;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->getCells()[Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    .line 485
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 486
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 487
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->updateMenuItem()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private startLocationUpdate()V
    .locals 7

    .line 1528
    iget-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->updatingLocation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1531
    iput-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->updatingLocation:Z

    .line 1532
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    :try_start_0
    const-string v2, "gps"

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    .line 1534
    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->gpsLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1536
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    const-string v2, "network"

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    .line 1539
    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->networkLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1541
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private stopLocationUpdate()V
    .locals 2

    const/4 v0, 0x0

    .line 1546
    iput-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->updatingLocation:Z

    .line 1547
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1548
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->gpsLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1549
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->networkLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method private updateMenuItem()V
    .locals 5

    .line 1404
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 1407
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 1408
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v1

    .line 1409
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget v0, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    const/16 v4, 0x64

    if-lt v0, v4, :cond_1

    .line 1410
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 1411
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_0

    .line 1413
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 1414
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 1416
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x12

    goto :goto_1

    :cond_2
    const/16 v0, 0x10

    .line 1417
    :goto_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    .line 1418
    sget v3, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const/4 v4, 0x4

    if-ne v3, v0, :cond_4

    sget v0, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    const/16 v3, 0x11

    if-ne v0, v3, :cond_4

    iget-boolean v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->firstAccentIsDefault:Z

    if-eqz v0, :cond_4

    iget v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    if-ne v0, v2, :cond_4

    if-eqz v1, :cond_3

    iget-object v0, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    const-string v1, "d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 1421
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_3

    .line 1419
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :goto_3
    return-void
.end method

.method private updateRows(Z)V
    .locals 12

    .line 497
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    .line 499
    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    .line 500
    iget v2, p0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    .line 501
    iget v3, p0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    const/4 v4, 0x0

    .line 503
    iput v4, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    const/4 v5, -0x1

    .line 504
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->audioPauseMusicOnRecordRow:I

    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->filesSendingPreviewAndCaptionRow:I

    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->vibrationRow:I

    .line 505
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->contactsReimportRow:I

    .line 506
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->contactsSortRow:I

    .line 507
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationRow:I

    .line 508
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    .line 509
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationInfoRow:I

    .line 510
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->nightDisabledRow:I

    .line 511
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->nightScheduledRow:I

    .line 512
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->nightAutomaticRow:I

    .line 513
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->nightSystemDefaultRow:I

    .line 514
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->nightTypeInfoRow:I

    .line 515
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->scheduleHeaderRow:I

    .line 516
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->nightThemeRow:I

    .line 517
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->newThemeInfoRow:I

    .line 518
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    .line 519
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->scheduleToRow:I

    .line 520
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromToInfoRow:I

    .line 521
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow:I

    .line 522
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    .line 523
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    .line 524
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->themeInfoRow:I

    .line 525
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->preferedHeaderRow:I

    .line 526
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->automaticHeaderRow:I

    .line 527
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessRow:I

    .line 528
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessInfoRow:I

    .line 529
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->textSizeHeaderRow:I

    .line 530
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->themeHeaderRow:I

    .line 531
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusHeaderRow:I

    .line 532
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusRow:I

    .line 533
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusInfoRow:I

    .line 534
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->chatListHeaderRow:I

    .line 535
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->chatListRow:I

    .line 536
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->chatListInfoRow:I

    .line 537
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->chatBlurRow:I

    .line 538
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->pauseOnRecordRow:I

    .line 539
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->pauseOnMediaRow:I

    .line 540
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->stickersRow:I

    .line 541
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->stickersInfoRow:I

    .line 542
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->liteModeRow:I

    .line 543
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->liteModeInfoRow:I

    .line 545
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    .line 546
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->backgroundRow:I

    .line 547
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->settingsRow:I

    .line 548
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->customTabsRow:I

    .line 549
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->directShareRow:I

    .line 550
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->enableAnimationsRow:I

    .line 551
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    .line 552
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->raiseToListenRow:I

    .line 553
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->sendByEnterRow:I

    .line 554
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->saveToGalleryOption1Row:I

    .line 555
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->saveToGalleryOption2Row:I

    .line 556
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->saveToGallerySectionRow:I

    .line 557
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    .line 558
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    .line 559
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->settings2Row:I

    .line 561
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureHeaderRow:I

    .line 562
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureRow:I

    .line 563
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureInfoRow:I

    .line 565
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->selectThemeHeaderRow:I

    .line 566
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->themePreviewRow:I

    .line 567
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    .line 568
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->createNewThemeRow:I

    .line 570
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->appIconHeaderRow:I

    .line 571
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->appIconSelectorRow:I

    .line 572
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->appIconShadowRow:I

    .line 573
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->lastShadowRow:I

    .line 575
    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 576
    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->darkThemes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 577
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->themes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :goto_0
    const/4 v8, 0x3

    if-ge v7, v6, :cond_3

    .line 578
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->themes:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 579
    iget v10, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-eqz v10, :cond_0

    if-eq v10, v8, :cond_0

    .line 580
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isLight()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v8, :cond_0

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_theme;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v8, :cond_0

    goto :goto_1

    .line 584
    :cond_0
    iget-object v8, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 585
    iget-object v8, p0, Lorg/telegram/ui/ThemeActivity;->darkThemes:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 587
    :cond_1
    iget-object v8, p0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 590
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    sget-object v7, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda11;->INSTANCE:Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda11;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 592
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-ne v6, v8, :cond_7

    .line 593
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->selectThemeHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 594
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    add-int/lit8 v10, v6, 0x1

    .line 595
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->chatListInfoRow:I

    add-int/lit8 v6, v10, 0x1

    .line 597
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->themePreviewRow:I

    add-int/lit8 v10, v6, 0x1

    .line 598
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->themeHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 599
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow:I

    .line 600
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->hasAccentColors()Z

    move-result v6

    iput-boolean v6, p0, Lorg/telegram/ui/ThemeActivity;->hasThemeAccents:Z

    .line 601
    iget-object v10, p0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    if-eqz v10, :cond_4

    .line 602
    invoke-virtual {v10, v6}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->setDrawDivider(Z)V

    .line 604
    :cond_4
    iget-boolean v6, p0, Lorg/telegram/ui/ThemeActivity;->hasThemeAccents:Z

    if-eqz v6, :cond_5

    .line 605
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    .line 607
    :cond_5
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusInfoRow:I

    .line 609
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v6

    .line 610
    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v10

    .line 611
    iget-object v6, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v10, :cond_6

    iget v6, v10, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    const/16 v10, 0x64

    if-lt v6, v10, :cond_6

    .line 612
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    .line 614
    :cond_6
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->createNewThemeRow:I

    add-int/lit8 v6, v10, 0x1

    .line 615
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->lastShadowRow:I

    goto/16 :goto_3

    :cond_7
    if-nez v6, :cond_9

    .line 617
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->textSizeHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 618
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    add-int/lit8 v10, v6, 0x1

    .line 619
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->backgroundRow:I

    add-int/lit8 v6, v10, 0x1

    .line 620
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->newThemeInfoRow:I

    add-int/lit8 v10, v6, 0x1

    .line 621
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->themeHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 623
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    add-int/lit8 v10, v6, 0x1

    .line 624
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->themeInfoRow:I

    add-int/lit8 v6, v10, 0x1

    .line 626
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusHeaderRow:I

    add-int/lit8 v10, v6, 0x1

    .line 627
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusRow:I

    add-int/lit8 v6, v10, 0x1

    .line 628
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusInfoRow:I

    add-int/lit8 v10, v6, 0x1

    .line 630
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->chatListHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 631
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->chatListRow:I

    add-int/lit8 v10, v6, 0x1

    .line 632
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->chatListInfoRow:I

    add-int/lit8 v6, v10, 0x1

    .line 634
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->appIconHeaderRow:I

    add-int/lit8 v10, v6, 0x1

    .line 635
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->appIconSelectorRow:I

    add-int/lit8 v6, v10, 0x1

    .line 636
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->appIconShadowRow:I

    add-int/lit8 v10, v6, 0x1

    .line 638
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 639
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureRow:I

    add-int/lit8 v10, v6, 0x1

    .line 640
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureInfoRow:I

    add-int/lit8 v6, v10, 0x1

    .line 642
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->liteModeRow:I

    add-int/lit8 v10, v6, 0x1

    .line 643
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->liteModeInfoRow:I

    add-int/lit8 v6, v10, 0x1

    .line 645
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->stickersRow:I

    add-int/lit8 v10, v6, 0x1

    .line 646
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->stickersInfoRow:I

    add-int/lit8 v6, v10, 0x1

    .line 648
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->settingsRow:I

    add-int/lit8 v10, v6, 0x1

    .line 649
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->nightThemeRow:I

    add-int/lit8 v6, v10, 0x1

    .line 650
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->customTabsRow:I

    add-int/lit8 v10, v6, 0x1

    .line 651
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->directShareRow:I

    add-int/lit8 v6, v10, 0x1

    .line 653
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->filesSendingPreviewAndCaptionRow:I

    add-int/lit8 v10, v6, 0x1

    .line 654
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->vibrationRow:I

    add-int/lit8 v6, v10, 0x1

    .line 657
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->raiseToListenRow:I

    .line 658
    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    if-eqz v10, :cond_8

    add-int/lit8 v10, v6, 0x1

    .line 659
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    .line 661
    :cond_8
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->sendByEnterRow:I

    add-int/lit8 v6, v10, 0x1

    .line 662
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->pauseOnMediaRow:I

    add-int/lit8 v10, v6, 0x1

    .line 663
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->pauseOnRecordRow:I

    add-int/lit8 v6, v10, 0x1

    .line 664
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    add-int/lit8 v10, v6, 0x1

    .line 668
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    add-int/lit8 v6, v10, 0x1

    .line 669
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->settings2Row:I

    goto/16 :goto_3

    .line 671
    :cond_9
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->nightDisabledRow:I

    add-int/lit8 v6, v10, 0x1

    .line 672
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->nightScheduledRow:I

    add-int/lit8 v10, v6, 0x1

    .line 673
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->nightAutomaticRow:I

    .line 674
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1d

    if-lt v6, v11, :cond_a

    add-int/lit8 v6, v10, 0x1

    .line 675
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->nightSystemDefaultRow:I

    .line 677
    :cond_a
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->nightTypeInfoRow:I

    .line 678
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v6, v9, :cond_c

    add-int/lit8 v6, v10, 0x1

    .line 679
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->scheduleHeaderRow:I

    add-int/lit8 v10, v6, 0x1

    .line 680
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationRow:I

    .line 681
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v6, :cond_b

    add-int/lit8 v6, v10, 0x1

    .line 682
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    add-int/lit8 v10, v6, 0x1

    .line 683
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationInfoRow:I

    goto :goto_2

    :cond_b
    add-int/lit8 v6, v10, 0x1

    .line 685
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    add-int/lit8 v10, v6, 0x1

    .line 686
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->scheduleToRow:I

    add-int/lit8 v6, v10, 0x1

    .line 687
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromToInfoRow:I

    goto :goto_2

    :cond_c
    if-ne v6, v7, :cond_d

    add-int/lit8 v6, v10, 0x1

    .line 690
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->automaticHeaderRow:I

    add-int/lit8 v10, v6, 0x1

    .line 691
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessRow:I

    add-int/lit8 v6, v10, 0x1

    .line 692
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessInfoRow:I

    .line 694
    :cond_d
    :goto_2
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-eqz v6, :cond_10

    .line 695
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->preferedHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 696
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow:I

    .line 697
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->hasAccentColors()Z

    move-result v6

    iput-boolean v6, p0, Lorg/telegram/ui/ThemeActivity;->hasThemeAccents:Z

    .line 698
    iget-object v10, p0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    if-eqz v10, :cond_e

    .line 699
    invoke-virtual {v10, v6}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->setDrawDivider(Z)V

    .line 701
    :cond_e
    iget-boolean v6, p0, Lorg/telegram/ui/ThemeActivity;->hasThemeAccents:Z

    if-eqz v6, :cond_f

    .line 702
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    .line 704
    :cond_f
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->themeInfoRow:I

    .line 708
    :cond_10
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    if-eqz v6, :cond_11

    .line 709
    iget-object v10, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->notifyDataSetChanged(I)V

    .line 712
    :cond_11
    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    if-eqz v6, :cond_30

    .line 713
    iget v10, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-ne v10, v9, :cond_27

    iget v10, p0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-eq v10, v11, :cond_27

    if-ne v10, v5, :cond_12

    goto/16 :goto_c

    .line 741
    :cond_12
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->nightTypeInfoRow:I

    add-int/2addr p1, v9

    if-eq v10, v11, :cond_24

    move v1, v4

    :goto_4
    const/4 v2, 0x4

    if-ge v1, v2, :cond_16

    .line 744
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v2, :cond_15

    .line 745
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Cells/ThemeTypeCell;

    if-nez v3, :cond_13

    goto :goto_6

    .line 748
    :cond_13
    check-cast v2, Lorg/telegram/ui/Cells/ThemeTypeCell;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v1, v3, :cond_14

    move v3, v9

    goto :goto_5

    :cond_14
    move v3, v4

    :goto_5
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/ThemeTypeCell;->setTypeChecked(Z)V

    :cond_15
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 751
    :cond_16
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-nez v1, :cond_17

    .line 752
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sub-int/2addr v0, p1

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto/16 :goto_10

    :cond_17
    const/4 v0, 0x5

    if-ne v1, v9, :cond_1c

    .line 754
    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    if-nez v1, :cond_18

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_10

    :cond_18
    if-ne v1, v7, :cond_1a

    .line 757
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v1, p1, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 758
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v3, :cond_19

    goto :goto_7

    :cond_19
    move v2, v0

    :goto_7
    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_10

    :cond_1a
    if-ne v1, v8, :cond_30

    .line 760
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v3, :cond_1b

    goto :goto_8

    :cond_1b
    move v2, v0

    :goto_8
    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_10

    :cond_1c
    if-ne v1, v7, :cond_20

    .line 763
    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    if-nez v1, :cond_1d

    .line 764
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_10

    :cond_1d
    if-ne v1, v9, :cond_1f

    .line 766
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v3, :cond_1e

    goto :goto_9

    :cond_1e
    move v2, v0

    :goto_9
    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 767
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v0, p1, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_10

    :cond_1f
    if-ne v1, v8, :cond_30

    .line 769
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v0, p1, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_10

    :cond_20
    if-ne v1, v8, :cond_30

    .line 772
    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    if-nez v1, :cond_21

    .line 773
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_10

    :cond_21
    if-ne v1, v7, :cond_22

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v0, p1, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto/16 :goto_10

    :cond_22
    if-ne v1, v9, :cond_30

    .line 777
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v3, :cond_23

    goto :goto_a

    :cond_23
    move v2, v0

    :goto_a
    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto/16 :goto_10

    .line 781
    :cond_24
    iget-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->previousByLocation:Z

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eq v0, v1, :cond_30

    add-int/2addr p1, v7

    if-eqz v1, :cond_25

    move v0, v8

    goto :goto_b

    :cond_25
    move v0, v7

    .line 782
    :goto_b
    invoke-virtual {v6, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v1, :cond_26

    move v8, v7

    :cond_26
    invoke-virtual {v0, p1, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_10

    :cond_27
    :goto_c
    if-nez p1, :cond_2f

    .line 714
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    if-ne p1, v5, :cond_28

    goto :goto_f

    :cond_28
    if-ne v1, v5, :cond_29

    .line 717
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    if-eq p1, v5, :cond_29

    .line 718
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_d

    :cond_29
    if-eq v1, v5, :cond_2a

    .line 719
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    if-ne p1, v5, :cond_2a

    .line 720
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    if-eq v2, v5, :cond_2b

    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 724
    :cond_2a
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    if-eq p1, v5, :cond_2b

    .line 725
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2b
    :goto_d
    if-ne v2, v5, :cond_2c

    .line 728
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    if-eq p1, v5, :cond_2c

    .line 729
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_e

    :cond_2c
    if-eq v2, v5, :cond_2d

    .line 730
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    if-ne p1, v5, :cond_2d

    .line 731
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_2d
    :goto_e
    if-ne v3, v5, :cond_2e

    .line 734
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    if-eq p1, v5, :cond_2e

    .line 735
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_10

    :cond_2e
    if-eq v3, v5, :cond_30

    .line 736
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    if-ne p1, v5, :cond_30

    .line 737
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_10

    .line 715
    :cond_2f
    :goto_f
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 788
    :cond_30
    :goto_10
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-ne p1, v9, :cond_31

    .line 789
    sget-boolean p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    iput-boolean p1, p0, Lorg/telegram/ui/ThemeActivity;->previousByLocation:Z

    .line 790
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    iput p1, p0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    .line 792
    :cond_31
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->updateMenuItem()V

    return-void
.end method

.method private updateSunTime(Landroid/location/Location;Z)V
    .locals 8

    .line 1426
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1427
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 1428
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1430
    invoke-virtual {v2, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 1431
    filled-new-array {v3, p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {v2, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 1436
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "gps"

    if-eqz v2, :cond_2

    .line 1437
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "android.hardware.location.gps"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 1441
    :cond_1
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 1442
    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1443
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1444
    sget v2, Lorg/telegram/messenger/R$raw;->permission_request_location:I

    const/16 v6, 0x48

    const-string v7, "dialogTopBackground"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v2, v6, v4, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v2, "GpsDisabledAlertText"

    .line 1445
    sget v6, Lorg/telegram/messenger/R$string;->GpsDisabledAlertText:I

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v2, "ConnectingToProxyEnable"

    .line 1446
    sget v6, Lorg/telegram/messenger/R$string;->ConnectingToProxyEnable:I

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v2, "Cancel"

    .line 1456
    sget v6, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1457
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1461
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1465
    :cond_2
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_3

    const-string v1, "network"

    .line 1467
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    :cond_3
    if-nez p1, :cond_4

    const-string v1, "passive"

    .line 1470
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1473
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    if-eqz p2, :cond_6

    .line 1476
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->startLocationUpdate()V

    if-nez p1, :cond_6

    return-void

    .line 1481
    :cond_6
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLatitude:D

    .line 1482
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    sput-wide p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLongitude:D

    .line 1483
    sget-wide p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLatitude:D

    sget-wide v0, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLongitude:D

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/messenger/time/SunDate;->calculateSunriseSunset(DD)[I

    move-result-object p1

    .line 1484
    aget p2, p1, v4

    sput p2, Lorg/telegram/ui/ActionBar/Theme;->autoNightSunriseTime:I

    const/4 p2, 0x1

    .line 1485
    aget p1, p1, p2

    sput p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightSunsetTime:I

    .line 1486
    sput-object v3, Lorg/telegram/ui/ActionBar/Theme;->autoNightCityName:Ljava/lang/String;

    .line 1487
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x5

    .line 1489
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sput p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightLastSunCheckDay:I

    .line 1490
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1518
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationInfoRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_7

    .line 1519
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_7

    .line 1520
    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->getLocationSunString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    :cond_7
    sget-boolean p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz p1, :cond_8

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne p1, p2, :cond_8

    .line 1523
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    :cond_8
    return-void
.end method


# virtual methods
.method public checkCurrentDayNight()V
    .locals 3

    .line 2647
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2650
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDay()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2651
    iget-boolean v1, p0, Lorg/telegram/ui/ThemeActivity;->lastIsDarkTheme:Z

    const/4 v2, 0x0

    if-eq v1, v0, :cond_2

    .line 2652
    iput-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->lastIsDarkTheme:Z

    .line 2653
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 2654
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 2656
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    if-ltz v0, :cond_4

    .line 2657
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 2658
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell;

    if-eqz v0, :cond_3

    .line 2659
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/DefaultThemesPreviewCell;

    .line 2660
    invoke-virtual {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->updateDayNightMode()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    .line 900
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDay()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->lastIsDarkTheme:Z

    .line 902
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 904
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 907
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 908
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->BrowseThemes:I

    const-string v4, "BrowseThemes"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 910
    new-instance v10, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v4, Lorg/telegram/messenger/R$raw;->sun:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x1c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v10, p0, Lorg/telegram/ui/ThemeActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 911
    iget-boolean v3, p0, Lorg/telegram/ui/ThemeActivity;->lastIsDarkTheme:Z

    if-eqz v3, :cond_1

    .line 912
    invoke-virtual {v10}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v10, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_0

    .line 914
    :cond_1
    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 916
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    const/4 v3, 0x5

    .line 917
    iget-object v4, p0, Lorg/telegram/ui/ThemeActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->ChatSettings:I

    const-string v5, "ChatSettings"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 921
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 922
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v5, "AccDescrMoreOptions"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x2

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v6, Lorg/telegram/messenger/R$string;->ShareTheme:I

    const-string v7, "ShareTheme"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 924
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    sget v5, Lorg/telegram/messenger/R$string;->EditThemeColors:I

    const-string v6, "EditThemeColors"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 925
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_palette:I

    sget v4, Lorg/telegram/messenger/R$string;->CreateNewThemeMenu:I

    const-string v5, "CreateNewThemeMenu"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 926
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x4

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_reset:I

    sget v5, Lorg/telegram/messenger/R$string;->ThemeResetToDefaults:I

    const-string v6, "ThemeResetToDefaults"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto :goto_1

    .line 928
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->AutoNightTheme:I

    const-string v4, "AutoNightTheme"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 931
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ThemeActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemeActivity$1;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1041
    new-instance v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ThemeActivity$ListAdapter;-><init>(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    .line 1043
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v3, "windowBackgroundGray"

    .line 1044
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1045
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 1047
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1048
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1049
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1050
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1051
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1052
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1053
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1357
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-nez p1, :cond_4

    .line 1358
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x15e

    .line 1359
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 1360
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1361
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1362
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1366
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 836
    sget p2, Lorg/telegram/messenger/NotificationCenter;->themeChanged:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    .line 837
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-nez p1, :cond_0

    return-void

    .line 840
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->AutoNightModeOff:I

    const-string p2, "AutoNightModeOff"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    .line 841
    sput v0, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 842
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->saveAutoNightThemeConfig()V

    .line 843
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->cancelAutoNightThemeCallbacks()V

    .line 844
    invoke-direct {p0, v1}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    goto/16 :goto_3

    .line 846
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    .line 847
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    goto/16 :goto_3

    .line 848
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    if-eq p1, p2, :cond_d

    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_3

    goto/16 :goto_2

    .line 853
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->themeAccentListUpdated:I

    if-ne p1, p2, :cond_4

    .line 854
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    if-eqz p1, :cond_f

    iget p2, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_f

    .line 855
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 857
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->themeListUpdated:I

    if-ne p1, p2, :cond_5

    .line 858
    invoke-direct {p0, v1}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    goto/16 :goto_3

    .line 859
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->themeUploadedToServer:I

    if-ne p1, p2, :cond_7

    .line 860
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 861
    aget-object p2, p3, v1

    check-cast p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 862
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity;->sharingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-ne p1, p3, :cond_f

    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity;->sharingAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-ne p2, p3, :cond_f

    .line 863
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/addtheme/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6

    iget-object p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    goto :goto_0

    :cond_6
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    :goto_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->slug:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 864
    new-instance p1, Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v3, v5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 865
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_f

    .line 866
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    goto/16 :goto_3

    .line 869
    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->themeUploadError:I

    if-ne p1, p2, :cond_8

    .line 870
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 871
    aget-object p2, p3, v1

    check-cast p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 872
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity;->sharingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-ne p1, p3, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-ne p2, p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-nez p1, :cond_f

    .line 873
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    goto :goto_3

    .line 875
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->needShareTheme:I

    if-ne p1, p2, :cond_b

    .line 876
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-eqz p1, :cond_9

    goto :goto_1

    .line 879
    :cond_9
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 880
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 881
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 882
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 883
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance p2, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_3

    :cond_a
    :goto_1
    return-void

    .line 888
    :cond_b
    sget p2, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    if-ne p1, p2, :cond_c

    .line 889
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->updateMenuItem()V

    .line 890
    invoke-virtual {p0}, Lorg/telegram/ui/ThemeActivity;->checkCurrentDayNight()V

    goto :goto_3

    .line 891
    :cond_c
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiPreviewThemesChanged:I

    if-ne p1, p2, :cond_f

    .line 892
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    if-ltz p1, :cond_f

    .line 893
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_3

    .line 849
    :cond_d
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 850
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 852
    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->updateMenuItem()V

    :cond_f
    :goto_3
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2523
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2525
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/16 v2, 0xf

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v11, 0x0

    aput-object v2, v5, v11

    const-class v2, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v12, 0x1

    aput-object v2, v5, v12

    const-class v2, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v13, 0x2

    aput-object v2, v5, v13

    const/4 v2, 0x3

    const-class v6, Lorg/telegram/ui/Cells/BrightnessControlCell;

    aput-object v6, v5, v2

    const/4 v2, 0x4

    const-class v6, Lorg/telegram/ui/Cells/ThemeTypeCell;

    aput-object v6, v5, v2

    const/4 v2, 0x5

    const-class v6, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v6, v5, v2

    const/4 v2, 0x6

    const-class v6, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    aput-object v6, v5, v2

    const/4 v2, 0x7

    const-class v6, Lorg/telegram/ui/Cells/ChatListCell;

    aput-object v6, v5, v2

    const/16 v2, 0x8

    const-class v6, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v6, v5, v2

    const/16 v2, 0x9

    const-class v6, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    aput-object v6, v5, v2

    const/16 v2, 0xa

    const-class v6, Lorg/telegram/ui/ThemeActivity$TintRecyclerListView;

    aput-object v6, v5, v2

    const/16 v2, 0xb

    const-class v6, Lorg/telegram/ui/Cells/TextCell;

    aput-object v6, v5, v2

    const/16 v2, 0xc

    const-class v6, Lorg/telegram/ui/Components/SwipeGestureSettingsView;

    aput-object v6, v5, v2

    const/16 v2, 0xd

    const-class v6, Lorg/telegram/ui/DefaultThemesPreviewCell;

    aput-object v6, v5, v2

    const/16 v2, 0xe

    const-class v6, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    aput-object v6, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2526
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "windowBackgroundGray"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2528
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v9, 0x0

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2529
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v21, "actionBarDefault"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2530
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2531
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v21, "actionBarDefaultTitle"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2532
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2533
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const-string v21, "actionBarDefaultSubmenuBackground"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2534
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const-string v10, "actionBarDefaultSubmenuItem"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2535
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v16, v3, v4

    const-string v21, "actionBarDefaultSubmenuItemIcon"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2537
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v10, "listSelectorSDK21"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2539
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v11

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/16 v16, 0x0

    const-string v21, "divider"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2541
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v4, v11

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, "windowBackgroundGrayShadow"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2543
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v3, v11

    const/16 v18, 0x0

    const-string v21, "windowBackgroundGrayShadow"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2544
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v4, v11

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteGrayText4"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2546
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    const/16 v21, 0x0

    const-string v22, "windowBackgroundWhiteBlackText"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2547
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v4, v11

    const-string v6, "valueTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v27

    const/16 v25, 0x0

    const/16 v30, 0x0

    const-string v31, "windowBackgroundWhiteValueText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2549
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "windowBackgroundWhiteBlueHeader"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2551
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCell;

    aput-object v7, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    const-string v31, "windowBackgroundWhiteBlueText4"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2552
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCell;

    aput-object v4, v3, v11

    const-string v4, "imageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "windowBackgroundWhiteBlueText4"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2554
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    const-string v31, "windowBackgroundWhiteBlackText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2555
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v11

    const-string v4, "checkBox"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "switchTrack"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2556
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v7, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v27

    const-string v31, "switchTrackChecked"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v7

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2558
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/BrightnessControlCell;

    aput-object v7, v3, v11

    const-string v7, "leftImageView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "windowBackgroundWhiteGrayIcon"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2559
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v7, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/BrightnessControlCell;

    aput-object v8, v7, v11

    const-string v8, "rightImageView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v27

    const-string v31, "windowBackgroundWhiteGrayIcon"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v7

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2560
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/BrightnessControlCell;

    aput-object v7, v3, v11

    const-string v7, "seekBarView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    const-string v22, "player_progressBackground"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2561
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    new-array v8, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/BrightnessControlCell;

    aput-object v9, v8, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v27

    const-string v31, "player_progress"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v8

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2563
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ThemeTypeCell;

    aput-object v7, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "windowBackgroundWhiteBlackText"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2564
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/ThemeTypeCell;

    aput-object v8, v7, v11

    const-string v8, "checkImage"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v27

    const/16 v25, 0x0

    const-string v31, "featuredStickers_addedIcon"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v7

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2566
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v7, v3, v11

    const-string v7, "sizeBar"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "player_progress"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2567
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v9, v8, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v27

    const-string v31, "player_progressBackground"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v8

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2569
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    aput-object v8, v3, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "player_progress"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2570
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    aput-object v9, v8, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v27

    const-string v31, "player_progressBackground"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v8

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2572
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ChatListCell;

    aput-object v7, v3, v11

    const/16 v16, 0x0

    const/16 v18, 0x0

    const-string v21, "radioBackground"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2573
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/ChatListCell;

    aput-object v8, v7, v11

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v29, "radioBackgroundChecked"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v7

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v7, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    const-string v22, "windowBackgroundWhiteBlackText"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2576
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v7, v5, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v27

    const/16 v25, 0x0

    const/16 v29, 0x0

    const-string v31, "windowBackgroundWhiteGrayText2"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2577
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v5, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "switchTrack"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2578
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v6, v5, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v27

    const-string v31, "switchTrackChecked"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2579
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    new-array v4, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v11

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v12

    const/16 v18, 0x0

    const-string v21, "chat_inBubble"

    move-object v14, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2580
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    new-array v5, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v11

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v12

    const/16 v24, 0x0

    const/16 v26, 0x0

    const-string v29, "chat_inBubbleSelected"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2581
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v19

    const-string v21, "chat_inBubbleShadow"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2582
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v27

    const-string v29, "chat_inBubbleShadow"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2583
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    new-array v4, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v11

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v12

    const-string v21, "chat_outBubble"

    move-object v14, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2584
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    new-array v5, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v11

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v12

    const-string v29, "chat_outBubbleGradient"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2585
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    new-array v4, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v11

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v12

    const-string v21, "chat_outBubbleGradient2"

    move-object v14, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2586
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    new-array v5, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v11

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v12

    const-string v29, "chat_outBubbleGradient3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2587
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    new-array v4, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v11

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v12

    const-string v21, "chat_outBubbleSelected"

    move-object v14, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2588
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    new-array v5, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v11

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v12

    const-string v29, "chat_outBubbleShadow"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2589
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    new-array v4, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v11

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v5, v4, v12

    const-string v21, "chat_inBubbleShadow"

    move-object v14, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2590
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    const/16 v27, 0x0

    const-string v29, "chat_messageTextIn"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2591
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    const/16 v19, 0x0

    const-string v21, "chat_messageTextOut"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2592
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v11

    const-string v29, "chat_outSentCheck"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2593
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    new-array v4, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v11

    const-string v21, "chat_outSentCheckSelected"

    move-object v14, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2594
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    new-array v5, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v11

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v12

    const-string v29, "chat_outSentCheckRead"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2595
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    new-array v4, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v11

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v12

    const-string v21, "chat_outSentCheckReadSelected"

    move-object v14, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2596
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    new-array v5, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v11

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v12

    const-string v29, "chat_mediaSentCheck"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2597
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const-string v20, "chat_inReplyLine"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2598
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const-string v28, "chat_outReplyLine"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2599
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    const-string v20, "chat_inReplyNameText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2600
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    const-string v28, "chat_outReplyNameText"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2601
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    const-string v20, "chat_inReplyMessageText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2602
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    const-string v28, "chat_outReplyMessageText"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2603
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    const-string v20, "chat_inReplyMediaMessageSelectedText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2604
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    const-string v28, "chat_outReplyMediaMessageSelectedText"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2605
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    const-string v20, "chat_inTimeText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2606
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    const-string v28, "chat_outTimeText"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2607
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v4, v3, v11

    const-string v20, "chat_inTimeSelectedText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2608
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    const-string v28, "chat_outTimeSelectedText"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2610
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    aput-object v4, v3, v11

    const-string v20, "windowBackgroundWhite"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2611
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    aput-object v5, v4, v11

    const-string v28, "windowBackgroundWhiteBlackText"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2612
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    aput-object v4, v3, v11

    const-string v20, "windowBackgroundWhiteHintText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2613
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    aput-object v5, v4, v11

    const-string v28, "windowBackgroundWhiteValueText"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2614
    new-instance v2, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    const-string v3, "windowBackgroundWhiteHintText"

    const-string v4, "windowBackgroundWhiteBlackText"

    const-string v5, "windowBackgroundWhiteValueText"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 797
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 798
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 799
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 800
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 801
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeAccentListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 802
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 803
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShareTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 804
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 805
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiPreviewThemesChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 806
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeUploadedToServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 807
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeUploadError:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 808
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-nez v0, :cond_0

    .line 809
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->loadRemoteThemes(IZ)V

    .line 810
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->checkCurrentRemoteTheme(Z)V

    .line 812
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 817
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 818
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 819
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->stopLocationUpdate()V

    .line 820
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 821
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 822
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 823
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeAccentListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 824
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 825
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShareTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 826
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 827
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiPreviewThemesChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 828
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeUploadedToServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 829
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeUploadError:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 830
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->saveAutoNightThemeConfig()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1389
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1390
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1391
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1398
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 1399
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->setAdjustResizeToNothing(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
