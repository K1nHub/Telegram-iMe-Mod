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

.field private changeUserColor:I

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

.field private mediaSoundHeaderRow:I

.field private mediaSoundSectionRow:I

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private networkLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

.field private newThemeInfoRow:I

.field private nextMediaTapRow:I

.field private nightAutomaticRow:I

.field private nightDisabledRow:I

.field private nightScheduledRow:I

.field private nightSystemDefaultRow:I

.field private nightThemeRow:I

.field private nightTypeInfoRow:I

.field private otherHeaderRow:I

.field private otherSectionRow:I

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

.field private stickersSectionRow:I

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

    .line 440
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->darkThemes:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ThemeActivity$GpsLocationListener;-><init>(Lorg/telegram/ui/ThemeActivity;Lorg/telegram/ui/ThemeActivity$1;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->gpsLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    .line 239
    new-instance v0, Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ThemeActivity$GpsLocationListener;-><init>(Lorg/telegram/ui/ThemeActivity;Lorg/telegram/ui/ThemeActivity$1;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->networkLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    .line 441
    iput p1, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    const/4 p1, 0x1

    .line 442
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->stopLocationUpdate()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ThemeActivity;IZ)Z
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->setBubbleRadius(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessRow:I

    return p0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->chatListRow:I

    return p0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow:I

    return p0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureRow:I

    return p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themePreviewRow:I

    return p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    return p0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->saveToGalleryOption2Row:I

    return p0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->appIconSelectorRow:I

    return p0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$11100(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$11200(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->createNewTheme()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->editTheme()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ThemeActivity;Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ThemeActivity$ListAdapter;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ThemeActivity;Landroid/location/Location;Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Cells/ThemesHorizontalListCell;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/ThemeActivity;Lorg/telegram/ui/Cells/ThemesHorizontalListCell;)Lorg/telegram/ui/Cells/ThemesHorizontalListCell;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessInfoRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ThemeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ThemeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->darkThemes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightThemeRow:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleToRow:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->contactsSortRow:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->contactsReimportRow:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ThemeActivity;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/ThemeActivity;->updateDistance:Z

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/ThemeActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/telegram/ui/ThemeActivity;->updateDistance:Z

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ThemeActivity;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/ThemeActivity;->updateRecordViaSco:Z

    return p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/ThemeActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/telegram/ui/ThemeActivity;->updateRecordViaSco:Z

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationInfoRow:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ThemeActivity;)Ljava/lang/String;
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->getLocationSunString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureInfoRow:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->liteModeInfoRow:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightTypeInfoRow:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeInfoRow:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->lastShadowRow:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ThemeActivity;I)Z
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->setFontSize(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->saveToGallerySectionRow:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->settings2Row:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightDisabledRow:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightScheduledRow:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightAutomaticRow:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightSystemDefaultRow:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleHeaderRow:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->automaticHeaderRow:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->preferedHeaderRow:I

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->settingsRow:I

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeHeaderRow:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->textSizeHeaderRow:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->chatListHeaderRow:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusHeaderRow:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureHeaderRow:I

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->selectThemeHeaderRow:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->appIconHeaderRow:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->otherHeaderRow:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->mediaSoundHeaderRow:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->vibrationRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->audioPauseMusicOnRecordRow:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->filesSendingPreviewAndCaptionRow:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationRow:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->enableAnimationsRow:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->sendByEnterRow:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->raiseToListenRow:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nextMediaTapRow:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->pauseOnRecordRow:I

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->pauseOnMediaRow:I

    return p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->customTabsRow:I

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->directShareRow:I

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->chatBlurRow:I

    return p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->backgroundRow:I

    return p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->changeUserColor:I

    return p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    return p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->createNewThemeRow:I

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->liteModeRow:I

    return p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->stickersRow:I

    return p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->saveToGalleryOption1Row:I

    return p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->stickersInfoRow:I

    return p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromToInfoRow:I

    return p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->newThemeInfoRow:I

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->chatListInfoRow:I

    return p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusInfoRow:I

    return p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->appIconShadowRow:I

    return p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->stickersSectionRow:I

    return p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->mediaSoundSectionRow:I

    return p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->otherSectionRow:I

    return p0
.end method

.method private createNewTheme()V
    .locals 3

    .line 1388
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1391
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1392
    sget v1, Lorg/telegram/messenger/R$string;->NewTheme:I

    const-string v2, "NewTheme"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1393
    sget v1, Lorg/telegram/messenger/R$string;->CreateNewThemeAlert:I

    const-string v2, "CreateNewThemeAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1394
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1395
    sget v1, Lorg/telegram/messenger/R$string;->CreateTheme:I

    const-string v2, "CreateTheme"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1396
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private editTheme()V
    .locals 7

    .line 1382
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    const/4 v0, 0x0

    .line 1383
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v2

    .line 1384
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

    .line 1565
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->autoNightSunriseTime:I

    div-int/lit8 v1, v0, 0x3c

    mul-int/lit8 v2, v1, 0x3c

    sub-int/2addr v0, v2

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 1567
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

    .line 1568
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->autoNightSunsetTime:I

    div-int/lit8 v6, v5, 0x3c

    mul-int/lit8 v7, v6, 0x3c

    sub-int/2addr v5, v7

    new-array v7, v2, [Ljava/lang/Object;

    .line 1570
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1571
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

    .line 1395
    invoke-static {p0, p1, p2, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createThemeCreateDialog(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)V

    return-void
.end method

.method private static synthetic lambda$createView$2(Lorg/telegram/ui/Cells/TextCheckCell;)V
    .locals 1

    .line 1066
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isVibrationEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setVibrationEnabled(Z)V

    .line 1067
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$3(ILjava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 1

    .line 1156
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setDistanceSystemType(I)V

    const/4 p1, 0x1

    .line 1157
    iput-boolean p1, p0, Lorg/telegram/ui/ThemeActivity;->updateDistance:Z

    .line 1158
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p3, p0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1160
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    invoke-virtual {p3, p1, v0}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1162
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

    .line 1189
    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    .line 1190
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    const/4 p2, 0x1

    .line 1191
    iput-boolean p2, p0, Lorg/telegram/ui/ThemeActivity;->updateRecordViaSco:Z

    .line 1192
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1194
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1196
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$5(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 1

    const/4 p2, 0x1

    .line 1207
    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    .line 1208
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 1209
    iput-boolean p2, p0, Lorg/telegram/ui/ThemeActivity;->updateRecordViaSco:Z

    .line 1210
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1212
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1214
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$6(ILandroid/content/DialogInterface;I)V
    .locals 1

    .line 1248
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 1249
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "sortContactsBy"

    .line 1250
    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1251
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1252
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    if-eqz p2, :cond_0

    .line 1253
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$7(ILorg/telegram/ui/Cells/TextSettingsCell;Landroid/widget/TimePicker;II)V
    .locals 5

    mul-int/lit8 p3, p4, 0x3c

    add-int/2addr p3, p5

    .line 1348
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "%02d:%02d"

    const/4 v4, 0x1

    if-ne p1, v0, :cond_0

    .line 1349
    sput p3, Lorg/telegram/ui/ActionBar/Theme;->autoNightDayStartTime:I

    .line 1350
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

    .line 1352
    :cond_0
    sput p3, Lorg/telegram/ui/ActionBar/Theme;->autoNightDayEndTime:I

    .line 1353
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
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1060
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->vibrationRow:I

    const/4 v5, 0x1

    if-eq v3, v4, :cond_36

    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->filesSendingPreviewAndCaptionRow:I

    if-eq v3, v4, :cond_36

    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->audioPauseMusicOnRecordRow:I

    if-ne v3, v4, :cond_0

    goto/16 :goto_9

    .line 1075
    :cond_0
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->enableAnimationsRow:I

    if-ne v3, v4, :cond_1

    .line 1076
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "view_animations"

    .line 1077
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1078
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    xor-int/lit8 v6, v4, 0x1

    .line 1079
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    xor-int/lit8 v3, v4, 0x1

    .line 1080
    invoke-static {v3}, Lorg/telegram/messenger/SharedConfig;->setAnimationsEnabled(Z)V

    .line 1081
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1082
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_39

    .line 1083
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    xor-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_a

    .line 1085
    :cond_1
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->backgroundRow:I

    const/4 v6, 0x0

    if-ne v3, v4, :cond_2

    .line 1086
    new-instance v1, Lorg/telegram/ui/WallpapersListActivity;

    invoke-direct {v1, v6}, Lorg/telegram/ui/WallpapersListActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 1087
    :cond_2
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->changeUserColor:I

    if-ne v3, v4, :cond_3

    .line 1088
    new-instance v1, Lorg/telegram/ui/PeerColorActivity;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/PeerColorActivity;-><init>(J)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PeerColorActivity;->setOnApplied(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/PeerColorActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 1089
    :cond_3
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->sendByEnterRow:I

    if-ne v3, v4, :cond_4

    .line 1090
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "send_by_enter"

    .line 1091
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1092
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    xor-int/lit8 v6, v4, 0x1

    .line 1093
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1094
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1095
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_39

    .line 1096
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    xor-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_a

    .line 1098
    :cond_4
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    if-ne v3, v4, :cond_5

    .line 1099
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleRaiseToSpeak()V

    .line 1100
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_39

    .line 1101
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_a

    .line 1103
    :cond_5
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->nextMediaTapRow:I

    if-ne v3, v4, :cond_6

    .line 1104
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleNextMediaTap()V

    .line 1105
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_39

    .line 1106
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->nextMediaTap:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_a

    .line 1108
    :cond_6
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->raiseToListenRow:I

    if-ne v3, v4, :cond_a

    .line 1109
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleRaiseToListen()V

    .line 1110
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_7

    .line 1111
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1113
    :cond_7
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    if-nez v1, :cond_9

    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    move v1, v6

    .line 1114
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 1115
    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1116
    instance-of v3, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    if-ne v3, v4, :cond_8

    .line 1117
    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1121
    :cond_9
    invoke-direct {v0, v6}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    goto/16 :goto_a

    .line 1122
    :cond_a
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->pauseOnRecordRow:I

    if-ne v3, v4, :cond_b

    .line 1123
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->togglePauseMusicOnRecord()V

    .line 1124
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_39

    .line 1125
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_a

    .line 1127
    :cond_b
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->pauseOnMediaRow:I

    if-ne v3, v4, :cond_c

    .line 1128
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->togglePauseMusicOnMedia()V

    .line 1129
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_39

    .line 1130
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_a

    .line 1132
    :cond_c
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    const-string v7, "Cancel"

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-ne v3, v4, :cond_10

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_d

    return-void

    .line 1136
    :cond_d
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1138
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1139
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-array v1, v8, [Ljava/lang/CharSequence;

    .line 1141
    sget v4, Lorg/telegram/messenger/R$string;->DistanceUnitsAutomatic:I

    const-string v12, "DistanceUnitsAutomatic"

    .line 1142
    invoke-static {v12, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    sget v4, Lorg/telegram/messenger/R$string;->DistanceUnitsKilometers:I

    const-string v12, "DistanceUnitsKilometers"

    .line 1143
    invoke-static {v12, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    sget v4, Lorg/telegram/messenger/R$string;->DistanceUnitsMiles:I

    const-string v12, "DistanceUnitsMiles"

    .line 1144
    invoke-static {v12, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v11

    move v4, v6

    :goto_1
    if-ge v4, v8, :cond_f

    .line 1149
    new-instance v12, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 1150
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v12, v13, v6, v14, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1151
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 1152
    aget-object v13, v1, v4

    sget v14, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    if-ne v4, v14, :cond_e

    move v14, v5

    goto :goto_2

    :cond_e
    move v14, v6

    :goto_2
    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 1153
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-static {v13, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1154
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1155
    new-instance v13, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v13, v0, v4, v2}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ThemeActivity;ILjava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1166
    :cond_f
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lorg/telegram/messenger/R$string;->DistanceUnitsTitle:I

    const-string v5, "DistanceUnitsTitle"

    .line 1167
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1168
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1169
    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1170
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 1171
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1172
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_a

    .line 1173
    :cond_10
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    if-ne v3, v4, :cond_12

    .line 1174
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_11

    return-void

    .line 1177
    :cond_11
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1179
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1180
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1182
    new-instance v1, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 1183
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v1, v4, v6, v8, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1184
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v1, v8, v13}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 1185
    sget v8, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessagesBuiltIn:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-boolean v13, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    xor-int/2addr v5, v13

    invoke-virtual {v1, v8, v5}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 1186
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-static {v8, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1187
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1188
    new-instance v8, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v8, v0, v2}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ThemeActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    new-instance v1, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 1201
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v1, v8, v6, v9, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1202
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 1203
    sget v4, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessagesScoIfConnected:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessagesScoHint:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    invoke-virtual {v1, v4, v6, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndText2AndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1204
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v4, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1205
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1206
    new-instance v4, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ThemeActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1218
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessages:I

    .line 1219
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1220
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1221
    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1222
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 1223
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1224
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_a

    .line 1225
    :cond_12
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->customTabsRow:I

    if-ne v3, v1, :cond_13

    .line 1226
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleCustomTabs()V

    .line 1227
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_39

    .line 1228
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_a

    .line 1230
    :cond_13
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->directShareRow:I

    if-ne v3, v1, :cond_14

    .line 1231
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleDirectShare()V

    .line 1232
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_39

    .line 1233
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_a

    .line 1235
    :cond_14
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->contactsReimportRow:I

    if-ne v3, v1, :cond_15

    goto/16 :goto_a

    .line 1237
    :cond_15
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->contactsSortRow:I

    if-ne v3, v1, :cond_17

    .line 1238
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_16

    return-void

    .line 1241
    :cond_16
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1242
    sget v2, Lorg/telegram/messenger/R$string;->SortBy:I

    const-string v4, "SortBy"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-array v2, v8, [Ljava/lang/CharSequence;

    .line 1243
    sget v4, Lorg/telegram/messenger/R$string;->Default:I

    const-string v8, "Default"

    .line 1244
    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    sget v4, Lorg/telegram/messenger/R$string;->SortFirstName:I

    const-string v6, "SortFirstName"

    .line 1245
    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    sget v4, Lorg/telegram/messenger/R$string;->SortLastName:I

    const-string v5, "SortLastName"

    .line 1246
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v11

    new-instance v4, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v3}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ThemeActivity;I)V

    .line 1243
    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1256
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1257
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_a

    .line 1258
    :cond_17
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->chatBlurRow:I

    if-ne v3, v1, :cond_18

    .line 1259
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleChatBlur()V

    .line 1260
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_39

    .line 1261
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_a

    .line 1263
    :cond_18
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightThemeRow:I

    if-ne v3, v1, :cond_22

    .line 1264
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x4c

    if-eqz v1, :cond_19

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p4, v1

    if-lez v1, :cond_1a

    :cond_19
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_21

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v1, p4, v1

    if-ltz v1, :cond_21

    .line 1265
    :cond_1a
    move-object v12, v2

    check-cast v12, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 1266
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-nez v1, :cond_1b

    .line 1267
    sput v11, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1268
    invoke-virtual {v12, v5}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    goto :goto_3

    .line 1270
    :cond_1b
    sput v6, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1271
    invoke-virtual {v12, v6}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 1273
    :goto_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->saveAutoNightThemeConfig()V

    .line 1274
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions(Z)V

    .line 1275
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-eqz v1, :cond_1c

    move/from16 v16, v5

    goto :goto_4

    :cond_1c
    move/from16 v16, v6

    :goto_4
    if-eqz v16, :cond_1d

    .line 1276
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightThemeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_1d
    sget v1, Lorg/telegram/messenger/R$string;->AutoNightThemeOff:I

    const-string v2, "AutoNightThemeOff"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    if-eqz v16, :cond_20

    .line 1279
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v2, v5, :cond_1e

    .line 1280
    sget v2, Lorg/telegram/messenger/R$string;->AutoNightScheduled:I

    const-string v3, "AutoNightScheduled"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_1e
    if-ne v2, v8, :cond_1f

    .line 1282
    sget v2, Lorg/telegram/messenger/R$string;->AutoNightSystemDefault:I

    const-string v3, "AutoNightSystemDefault"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 1284
    :cond_1f
    sget v2, Lorg/telegram/messenger/R$string;->AutoNightAdaptive:I

    const-string v3, "AutoNightAdaptive"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1286
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_20
    move-object v14, v1

    .line 1288
    sget v1, Lorg/telegram/messenger/R$string;->AutoNightTheme:I

    const-string v2, "AutoNightTheme"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    sget v15, Lorg/telegram/messenger/R$drawable;->msg2_night_auto:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v12 .. v19}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndIconAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;IZIZZ)V

    goto/16 :goto_a

    .line 1290
    :cond_21
    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {v1, v5}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 1292
    :cond_22
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightDisabledRow:I

    if-ne v3, v1, :cond_24

    .line 1293
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-nez v1, :cond_23

    return-void

    .line 1296
    :cond_23
    sput v6, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1297
    invoke-direct {v0, v5}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1298
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    goto/16 :goto_a

    .line 1299
    :cond_24
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightScheduledRow:I

    if-ne v3, v1, :cond_27

    .line 1300
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v1, v5, :cond_25

    return-void

    .line 1303
    :cond_25
    sput v5, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1304
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v1, :cond_26

    .line 1305
    invoke-direct {v0, v10, v5}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    .line 1307
    :cond_26
    invoke-direct {v0, v5}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1308
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    goto/16 :goto_a

    .line 1309
    :cond_27
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightAutomaticRow:I

    if-ne v3, v1, :cond_29

    .line 1310
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v1, v11, :cond_28

    return-void

    .line 1313
    :cond_28
    sput v11, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1314
    invoke-direct {v0, v5}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1315
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    goto/16 :goto_a

    .line 1316
    :cond_29
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightSystemDefaultRow:I

    if-ne v3, v1, :cond_2b

    .line 1317
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v1, v8, :cond_2a

    return-void

    .line 1320
    :cond_2a
    sput v8, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1321
    invoke-direct {v0, v5}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1322
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    goto/16 :goto_a

    .line 1323
    :cond_2b
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationRow:I

    if-ne v3, v1, :cond_2d

    .line 1324
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    xor-int/2addr v1, v5

    sput-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    .line 1325
    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1326
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1327
    invoke-direct {v0, v5}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1328
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v1, :cond_2c

    .line 1329
    invoke-direct {v0, v10, v5}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    .line 1331
    :cond_2c
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    goto/16 :goto_a

    .line 1332
    :cond_2d
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    if-eq v3, v1, :cond_33

    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleToRow:I

    if-ne v3, v1, :cond_2e

    goto :goto_7

    .line 1357
    :cond_2e
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    if-ne v3, v1, :cond_2f

    .line 1358
    invoke-direct {v0, v10, v5}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    goto/16 :goto_a

    .line 1359
    :cond_2f
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->createNewThemeRow:I

    if-ne v3, v1, :cond_30

    .line 1360
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemeActivity;->createNewTheme()V

    goto/16 :goto_a

    .line 1361
    :cond_30
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    if-ne v3, v1, :cond_31

    .line 1362
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemeActivity;->editTheme()V

    goto/16 :goto_a

    .line 1363
    :cond_31
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->stickersRow:I

    if-ne v3, v1, :cond_32

    .line 1364
    new-instance v1, Lorg/telegram/ui/StickersActivity;

    invoke-direct {v1, v6, v10}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 1365
    :cond_32
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->liteModeRow:I

    if-ne v3, v1, :cond_39

    .line 1366
    new-instance v1, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_a

    .line 1333
    :cond_33
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_34

    return-void

    .line 1338
    :cond_34
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    if-ne v3, v1, :cond_35

    .line 1339
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightDayStartTime:I

    div-int/lit8 v4, v1, 0x3c

    goto :goto_8

    .line 1342
    :cond_35
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightDayEndTime:I

    div-int/lit8 v4, v1, 0x3c

    :goto_8
    mul-int/lit8 v5, v4, 0x3c

    sub-int/2addr v1, v5

    move v9, v1

    move v8, v4

    .line 1345
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1346
    new-instance v2, Landroid/app/TimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v3, v1}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ThemeActivity;ILorg/telegram/ui/Cells/TextSettingsCell;)V

    const/4 v10, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 1356
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_a

    .line 1061
    :cond_36
    :goto_9
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1062
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1063
    iget v2, v0, Lorg/telegram/ui/ThemeActivity;->vibrationRow:I

    if-ne v3, v2, :cond_37

    .line 1064
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isVibrationEnabled:Z

    xor-int/2addr v2, v5

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->setVibrationEnabled(Z)V

    .line 1065
    new-instance v2, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showRestartDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_a

    .line 1069
    :cond_37
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->audioPauseMusicOnRecordRow:I

    if-ne v3, v1, :cond_38

    .line 1070
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->togglePauseMusicOnRecord()V

    goto :goto_a

    .line 1071
    :cond_38
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->filesSendingPreviewAndCaptionRow:I

    if-ne v3, v1, :cond_39

    .line 1072
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isFilesSendingPreviewAndCaptionEnabled:Z

    xor-int/2addr v1, v5

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setFilesSendingPreviewAndCaptionEnabled(Z)V

    :cond_39
    :goto_a
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$1(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 890
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 891
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 892
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$13()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2670
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2671
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2672
    instance-of v3, v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    if-eqz v3, :cond_0

    .line 2673
    check-cast v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 2674
    :cond_0
    instance-of v3, v2, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    if-eqz v3, :cond_1

    .line 2675
    check-cast v2, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    invoke-virtual {v2}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->updateColors()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 2678
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2679
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2680
    instance-of v3, v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    if-eqz v3, :cond_3

    .line 2681
    check-cast v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 2682
    :cond_3
    instance-of v3, v2, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    if-eqz v3, :cond_4

    .line 2683
    check-cast v2, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    invoke-virtual {v2}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->updateColors()V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v0

    .line 2686
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2687
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2688
    instance-of v3, v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    if-eqz v3, :cond_6

    .line 2689
    check-cast v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 2690
    :cond_6
    instance-of v3, v2, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    if-eqz v3, :cond_7

    .line 2691
    check-cast v2, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    invoke-virtual {v2}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->updateColors()V

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2694
    :cond_8
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 2695
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2696
    instance-of v2, v1, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    if-eqz v2, :cond_9

    .line 2697
    check-cast v1, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_7

    .line 2698
    :cond_9
    instance-of v2, v1, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    if-eqz v2, :cond_a

    .line 2699
    check-cast v1, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    invoke-virtual {v1}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->updateColors()V

    :cond_a
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    return-void
.end method

.method private static synthetic lambda$updateRows$0(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)I
    .locals 0

    .line 610
    iget p0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->sortIndex:I

    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->sortIndex:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateSunTime$10(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1459
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1463
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

    .line 1517
    sput-object p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightCityName:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 1519
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

    .line 1521
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->saveAutoNightThemeConfig()V

    .line 1522
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_1

    .line 1523
    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_1

    .line 1524
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v1, :cond_1

    .line 1525
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

    .line 1505
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 1506
    sget-wide v2, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLatitude:D

    sget-wide v4, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLongitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    .line 1507
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 1508
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    :catch_0
    :cond_0
    new-instance v1, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ThemeActivity;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setBubbleRadius(IZ)Z
    .locals 3

    .line 446
    sget v0, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    .line 447
    sput p1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    .line 448
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 449
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 450
    sget v0, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    const-string v2, "bubbleRadius"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 451
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 453
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 454
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    if-eqz v0, :cond_1

    .line 455
    check-cast p1, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    .line 456
    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity$TextSizeCell;->access$1200(Lorg/telegram/ui/ThemeActivity$TextSizeCell;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->getCells()[Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    .line 457
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 458
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 459
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ThemeActivity$TextSizeCell;->invalidate()V

    .line 464
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 465
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    if-eqz v0, :cond_3

    .line 466
    check-cast p1, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    if-eqz p2, :cond_2

    .line 468
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_1

    .line 470
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->invalidate()V

    .line 474
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

    .line 481
    sget v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    .line 482
    sput p1, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    .line 483
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->fontSizeIsDefault:Z

    .line 484
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "mainconfig"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    .line 488
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 489
    sget v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const-string v2, "fons_size"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 490
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 492
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->createCommonMessageResources()V

    .line 494
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 495
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    if-eqz v0, :cond_1

    .line 496
    check-cast p1, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    .line 497
    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity$TextSizeCell;->access$1200(Lorg/telegram/ui/ThemeActivity$TextSizeCell;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->getCells()[Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    .line 498
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 499
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 500
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->updateMenuItem()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private startLocationUpdate()V
    .locals 7

    .line 1540
    iget-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->updatingLocation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1543
    iput-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->updatingLocation:Z

    .line 1544
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    :try_start_0
    const-string v2, "gps"

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    .line 1546
    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->gpsLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1548
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    const-string v2, "network"

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    .line 1551
    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->networkLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1553
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private stopLocationUpdate()V
    .locals 2

    const/4 v0, 0x0

    .line 1558
    iput-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->updatingLocation:Z

    .line 1559
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1560
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->gpsLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1561
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->networkLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method private updateMenuItem()V
    .locals 5

    .line 1416
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 1419
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 1420
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v1

    .line 1421
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

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_0

    .line 1425
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 1426
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 1428
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x12

    goto :goto_1

    :cond_2
    const/16 v0, 0x10

    .line 1429
    :goto_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    .line 1430
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

    .line 1433
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_3

    .line 1431
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :goto_3
    return-void
.end method

.method private updateRows(Z)V
    .locals 12

    .line 510
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    .line 512
    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    .line 513
    iget v2, p0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    .line 514
    iget v3, p0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    const/4 v4, 0x0

    .line 516
    iput v4, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    const/4 v5, -0x1

    .line 517
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->audioPauseMusicOnRecordRow:I

    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->filesSendingPreviewAndCaptionRow:I

    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->vibrationRow:I

    .line 518
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->contactsReimportRow:I

    .line 519
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->contactsSortRow:I

    .line 520
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationRow:I

    .line 521
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    .line 522
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationInfoRow:I

    .line 523
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->nightDisabledRow:I

    .line 524
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->nightScheduledRow:I

    .line 525
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->nightAutomaticRow:I

    .line 526
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->nightSystemDefaultRow:I

    .line 527
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->nightTypeInfoRow:I

    .line 528
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->scheduleHeaderRow:I

    .line 529
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->nightThemeRow:I

    .line 530
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->newThemeInfoRow:I

    .line 531
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    .line 532
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->scheduleToRow:I

    .line 533
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromToInfoRow:I

    .line 534
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow:I

    .line 535
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    .line 536
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    .line 537
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->themeInfoRow:I

    .line 538
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->preferedHeaderRow:I

    .line 539
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->automaticHeaderRow:I

    .line 540
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessRow:I

    .line 541
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessInfoRow:I

    .line 542
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->textSizeHeaderRow:I

    .line 543
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->themeHeaderRow:I

    .line 544
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusHeaderRow:I

    .line 545
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusRow:I

    .line 546
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusInfoRow:I

    .line 547
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->chatListHeaderRow:I

    .line 548
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->chatListRow:I

    .line 549
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->chatListInfoRow:I

    .line 550
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->chatBlurRow:I

    .line 551
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->pauseOnRecordRow:I

    .line 552
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->pauseOnMediaRow:I

    .line 553
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->stickersRow:I

    .line 554
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->stickersInfoRow:I

    .line 555
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->stickersSectionRow:I

    .line 556
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->mediaSoundHeaderRow:I

    .line 557
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->otherHeaderRow:I

    .line 558
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->mediaSoundSectionRow:I

    .line 559
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->otherSectionRow:I

    .line 560
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->liteModeRow:I

    .line 561
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->liteModeInfoRow:I

    .line 563
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    .line 564
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->backgroundRow:I

    .line 565
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->changeUserColor:I

    .line 566
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->settingsRow:I

    .line 567
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->customTabsRow:I

    .line 568
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->directShareRow:I

    .line 569
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->enableAnimationsRow:I

    .line 570
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    .line 571
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->raiseToListenRow:I

    .line 572
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->nextMediaTapRow:I

    .line 573
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->sendByEnterRow:I

    .line 574
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->saveToGalleryOption1Row:I

    .line 575
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->saveToGalleryOption2Row:I

    .line 576
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->saveToGallerySectionRow:I

    .line 577
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    .line 578
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    .line 579
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->settings2Row:I

    .line 581
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureHeaderRow:I

    .line 582
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureRow:I

    .line 583
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureInfoRow:I

    .line 585
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->selectThemeHeaderRow:I

    .line 586
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->themePreviewRow:I

    .line 587
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    .line 588
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->createNewThemeRow:I

    .line 590
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->appIconHeaderRow:I

    .line 591
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->appIconSelectorRow:I

    .line 592
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->appIconShadowRow:I

    .line 593
    iput v5, p0, Lorg/telegram/ui/ThemeActivity;->lastShadowRow:I

    .line 595
    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 596
    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->darkThemes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 597
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->themes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :goto_0
    const/4 v8, 0x3

    if-ge v7, v6, :cond_3

    .line 598
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->themes:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 599
    iget v10, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-eqz v10, :cond_0

    if-eq v10, v8, :cond_0

    .line 600
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isLight()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v8, :cond_0

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_theme;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v8, :cond_0

    goto :goto_1

    .line 604
    :cond_0
    iget-object v8, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 605
    iget-object v8, p0, Lorg/telegram/ui/ThemeActivity;->darkThemes:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 607
    :cond_1
    iget-object v8, p0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 610
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    sget-object v7, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda11;->INSTANCE:Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda11;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 612
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-ne v6, v8, :cond_7

    .line 613
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->selectThemeHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 614
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    add-int/lit8 v10, v6, 0x1

    .line 615
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->chatListInfoRow:I

    add-int/lit8 v6, v10, 0x1

    .line 617
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->themePreviewRow:I

    add-int/lit8 v10, v6, 0x1

    .line 618
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->themeHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 619
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow:I

    .line 620
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->hasAccentColors()Z

    move-result v6

    iput-boolean v6, p0, Lorg/telegram/ui/ThemeActivity;->hasThemeAccents:Z

    .line 621
    iget-object v10, p0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    if-eqz v10, :cond_4

    .line 622
    invoke-virtual {v10, v6}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->setDrawDivider(Z)V

    .line 624
    :cond_4
    iget-boolean v6, p0, Lorg/telegram/ui/ThemeActivity;->hasThemeAccents:Z

    if-eqz v6, :cond_5

    .line 625
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    .line 627
    :cond_5
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusInfoRow:I

    .line 629
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v6

    .line 630
    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v10

    .line 631
    iget-object v6, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v10, :cond_6

    iget v6, v10, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    const/16 v10, 0x64

    if-lt v6, v10, :cond_6

    .line 632
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    .line 634
    :cond_6
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->createNewThemeRow:I

    add-int/lit8 v6, v10, 0x1

    .line 635
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->lastShadowRow:I

    goto/16 :goto_3

    :cond_7
    if-nez v6, :cond_9

    .line 637
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->textSizeHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 638
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    add-int/lit8 v10, v6, 0x1

    .line 639
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->backgroundRow:I

    add-int/lit8 v6, v10, 0x1

    .line 640
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->changeUserColor:I

    add-int/lit8 v10, v6, 0x1

    .line 641
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->newThemeInfoRow:I

    add-int/lit8 v6, v10, 0x1

    .line 642
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->themeHeaderRow:I

    add-int/lit8 v10, v6, 0x1

    .line 644
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    add-int/lit8 v6, v10, 0x1

    .line 645
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->themeInfoRow:I

    add-int/lit8 v10, v6, 0x1

    .line 647
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 648
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusRow:I

    add-int/lit8 v10, v6, 0x1

    .line 649
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusInfoRow:I

    add-int/lit8 v6, v10, 0x1

    .line 651
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->chatListHeaderRow:I

    add-int/lit8 v10, v6, 0x1

    .line 652
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->chatListRow:I

    add-int/lit8 v6, v10, 0x1

    .line 653
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->chatListInfoRow:I

    add-int/lit8 v10, v6, 0x1

    .line 655
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->appIconHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 656
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->appIconSelectorRow:I

    add-int/lit8 v10, v6, 0x1

    .line 657
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->appIconShadowRow:I

    add-int/lit8 v6, v10, 0x1

    .line 659
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureHeaderRow:I

    add-int/lit8 v10, v6, 0x1

    .line 660
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureRow:I

    add-int/lit8 v6, v10, 0x1

    .line 661
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureInfoRow:I

    add-int/lit8 v10, v6, 0x1

    .line 663
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->nightThemeRow:I

    add-int/lit8 v6, v10, 0x1

    .line 664
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->liteModeRow:I

    add-int/lit8 v10, v6, 0x1

    .line 665
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->stickersRow:I

    add-int/lit8 v6, v10, 0x1

    .line 666
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->stickersSectionRow:I

    add-int/lit8 v10, v6, 0x1

    .line 668
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->mediaSoundHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 669
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->nextMediaTapRow:I

    add-int/lit8 v10, v6, 0x1

    .line 671
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->filesSendingPreviewAndCaptionRow:I

    add-int/lit8 v6, v10, 0x1

    .line 672
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->vibrationRow:I

    add-int/lit8 v10, v6, 0x1

    .line 674
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->raiseToListenRow:I

    .line 675
    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    if-eqz v6, :cond_8

    add-int/lit8 v6, v10, 0x1

    .line 676
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    .line 678
    :cond_8
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->pauseOnRecordRow:I

    add-int/lit8 v6, v10, 0x1

    .line 679
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->pauseOnMediaRow:I

    add-int/lit8 v10, v6, 0x1

    .line 680
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    add-int/lit8 v6, v10, 0x1

    .line 681
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->mediaSoundSectionRow:I

    add-int/lit8 v10, v6, 0x1

    .line 683
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->otherHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 684
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->customTabsRow:I

    add-int/lit8 v10, v6, 0x1

    .line 685
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->directShareRow:I

    add-int/lit8 v6, v10, 0x1

    .line 686
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->sendByEnterRow:I

    add-int/lit8 v10, v6, 0x1

    .line 687
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    add-int/lit8 v6, v10, 0x1

    .line 688
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->otherSectionRow:I

    goto/16 :goto_3

    .line 690
    :cond_9
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->nightDisabledRow:I

    add-int/lit8 v6, v10, 0x1

    .line 691
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->nightScheduledRow:I

    add-int/lit8 v10, v6, 0x1

    .line 692
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->nightAutomaticRow:I

    .line 693
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1d

    if-lt v6, v11, :cond_a

    add-int/lit8 v6, v10, 0x1

    .line 694
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->nightSystemDefaultRow:I

    .line 696
    :cond_a
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->nightTypeInfoRow:I

    .line 697
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v6, v9, :cond_c

    add-int/lit8 v6, v10, 0x1

    .line 698
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->scheduleHeaderRow:I

    add-int/lit8 v10, v6, 0x1

    .line 699
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationRow:I

    .line 700
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v6, :cond_b

    add-int/lit8 v6, v10, 0x1

    .line 701
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    add-int/lit8 v10, v6, 0x1

    .line 702
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationInfoRow:I

    goto :goto_2

    :cond_b
    add-int/lit8 v6, v10, 0x1

    .line 704
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    add-int/lit8 v10, v6, 0x1

    .line 705
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->scheduleToRow:I

    add-int/lit8 v6, v10, 0x1

    .line 706
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromToInfoRow:I

    goto :goto_2

    :cond_c
    if-ne v6, v7, :cond_d

    add-int/lit8 v6, v10, 0x1

    .line 709
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->automaticHeaderRow:I

    add-int/lit8 v10, v6, 0x1

    .line 710
    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessRow:I

    add-int/lit8 v6, v10, 0x1

    .line 711
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessInfoRow:I

    .line 713
    :cond_d
    :goto_2
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-eqz v6, :cond_10

    .line 714
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->preferedHeaderRow:I

    add-int/lit8 v6, v10, 0x1

    .line 715
    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow:I

    .line 716
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->hasAccentColors()Z

    move-result v6

    iput-boolean v6, p0, Lorg/telegram/ui/ThemeActivity;->hasThemeAccents:Z

    .line 717
    iget-object v10, p0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    if-eqz v10, :cond_e

    .line 718
    invoke-virtual {v10, v6}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->setDrawDivider(Z)V

    .line 720
    :cond_e
    iget-boolean v6, p0, Lorg/telegram/ui/ThemeActivity;->hasThemeAccents:Z

    if-eqz v6, :cond_f

    .line 721
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    .line 723
    :cond_f
    iget v6, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ThemeActivity;->themeInfoRow:I

    .line 727
    :cond_10
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    if-eqz v6, :cond_11

    .line 728
    iget-object v10, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->notifyDataSetChanged(I)V

    .line 731
    :cond_11
    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    if-eqz v6, :cond_30

    .line 732
    iget v10, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-ne v10, v9, :cond_27

    iget v10, p0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-eq v10, v11, :cond_27

    if-ne v10, v5, :cond_12

    goto/16 :goto_c

    .line 760
    :cond_12
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->nightTypeInfoRow:I

    add-int/2addr p1, v9

    if-eq v10, v11, :cond_24

    move v1, v4

    :goto_4
    const/4 v2, 0x4

    if-ge v1, v2, :cond_16

    .line 763
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v2, :cond_15

    .line 764
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Cells/ThemeTypeCell;

    if-nez v3, :cond_13

    goto :goto_6

    .line 767
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

    .line 770
    :cond_16
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-nez v1, :cond_17

    .line 771
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sub-int/2addr v0, p1

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto/16 :goto_10

    :cond_17
    const/4 v0, 0x5

    if-ne v1, v9, :cond_1c

    .line 773
    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    if-nez v1, :cond_18

    .line 774
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_10

    :cond_18
    if-ne v1, v7, :cond_1a

    .line 776
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v1, p1, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 777
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

    .line 779
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

    .line 782
    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    if-nez v1, :cond_1d

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_10

    :cond_1d
    if-ne v1, v9, :cond_1f

    .line 785
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v3, :cond_1e

    goto :goto_9

    :cond_1e
    move v2, v0

    :goto_9
    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 786
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v0, p1, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_10

    :cond_1f
    if-ne v1, v8, :cond_30

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v0, p1, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_10

    :cond_20
    if-ne v1, v8, :cond_30

    .line 791
    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    if-nez v1, :cond_21

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_10

    :cond_21
    if-ne v1, v7, :cond_22

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v0, p1, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto/16 :goto_10

    :cond_22
    if-ne v1, v9, :cond_30

    .line 796
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v3, :cond_23

    goto :goto_a

    :cond_23
    move v2, v0

    :goto_a
    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto/16 :goto_10

    .line 800
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

    .line 801
    :goto_b
    invoke-virtual {v6, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 802
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

    .line 733
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    if-ne p1, v5, :cond_28

    goto :goto_f

    :cond_28
    if-ne v1, v5, :cond_29

    .line 736
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    if-eq p1, v5, :cond_29

    .line 737
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_d

    :cond_29
    if-eq v1, v5, :cond_2a

    .line 738
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    if-ne p1, v5, :cond_2a

    .line 739
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    if-eq v2, v5, :cond_2b

    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 743
    :cond_2a
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    if-eq p1, v5, :cond_2b

    .line 744
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2b
    :goto_d
    if-ne v2, v5, :cond_2c

    .line 747
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    if-eq p1, v5, :cond_2c

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_e

    :cond_2c
    if-eq v2, v5, :cond_2d

    .line 749
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    if-ne p1, v5, :cond_2d

    .line 750
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_2d
    :goto_e
    if-ne v3, v5, :cond_2e

    .line 753
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    if-eq p1, v5, :cond_2e

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_10

    :cond_2e
    if-eq v3, v5, :cond_30

    .line 755
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    if-ne p1, v5, :cond_30

    .line 756
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_10

    .line 734
    :cond_2f
    :goto_f
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 807
    :cond_30
    :goto_10
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-ne p1, v9, :cond_31

    .line 808
    sget-boolean p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    iput-boolean p1, p0, Lorg/telegram/ui/ThemeActivity;->previousByLocation:Z

    .line 809
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    iput p1, p0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    .line 811
    :cond_31
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->updateMenuItem()V

    return-void
.end method

.method private updateSunTime(Landroid/location/Location;Z)V
    .locals 8

    .line 1438
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1439
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 1440
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1442
    invoke-virtual {v2, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 1443
    filled-new-array {v3, p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {v2, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 1448
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "gps"

    if-eqz v2, :cond_2

    .line 1449
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "android.hardware.location.gps"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 1453
    :cond_1
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 1454
    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1455
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1456
    sget v2, Lorg/telegram/messenger/R$raw;->permission_request_location:I

    const/16 v6, 0x48

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v2, v6, v4, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v2, "GpsDisabledAlertText"

    .line 1457
    sget v6, Lorg/telegram/messenger/R$string;->GpsDisabledAlertText:I

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v2, "ConnectingToProxyEnable"

    .line 1458
    sget v6, Lorg/telegram/messenger/R$string;->ConnectingToProxyEnable:I

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v2, "Cancel"

    .line 1468
    sget v6, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1469
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1473
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1477
    :cond_2
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_3

    const-string v1, "network"

    .line 1479
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    :cond_3
    if-nez p1, :cond_4

    const-string v1, "passive"

    .line 1482
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1485
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    if-eqz p2, :cond_6

    .line 1488
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->startLocationUpdate()V

    if-nez p1, :cond_6

    return-void

    .line 1493
    :cond_6
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLatitude:D

    .line 1494
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    sput-wide p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLongitude:D

    .line 1495
    sget-wide p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLatitude:D

    sget-wide v0, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLongitude:D

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/messenger/time/SunDate;->calculateSunriseSunset(DD)[I

    move-result-object p1

    .line 1496
    aget p2, p1, v4

    sput p2, Lorg/telegram/ui/ActionBar/Theme;->autoNightSunriseTime:I

    const/4 p2, 0x1

    .line 1497
    aget p1, p1, p2

    sput p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightSunsetTime:I

    .line 1498
    sput-object v3, Lorg/telegram/ui/ActionBar/Theme;->autoNightCityName:Ljava/lang/String;

    .line 1499
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x5

    .line 1501
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sput p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightLastSunCheckDay:I

    .line 1502
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1530
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationInfoRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_7

    .line 1531
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_7

    .line 1532
    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->getLocationSunString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1534
    :cond_7
    sget-boolean p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz p1, :cond_8

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne p1, p2, :cond_8

    .line 1535
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    :cond_8
    return-void
.end method


# virtual methods
.method public checkCurrentDayNight()V
    .locals 3

    .line 2710
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2713
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDay()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2714
    iget-boolean v1, p0, Lorg/telegram/ui/ThemeActivity;->lastIsDarkTheme:Z

    const/4 v2, 0x0

    if-eq v1, v0, :cond_2

    .line 2715
    iput-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->lastIsDarkTheme:Z

    .line 2716
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

    .line 2717
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 2719
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    if-ltz v0, :cond_4

    .line 2720
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 2721
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell;

    if-eqz v0, :cond_3

    .line 2722
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/DefaultThemesPreviewCell;

    .line 2723
    invoke-virtual {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->updateDayNightMode()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    .line 906
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDay()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->lastIsDarkTheme:Z

    .line 908
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 909
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 910
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 913
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->BrowseThemes:I

    const-string v4, "BrowseThemes"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 915
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 916
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

    .line 917
    iget-boolean v3, p0, Lorg/telegram/ui/ThemeActivity;->lastIsDarkTheme:Z

    if-eqz v3, :cond_1

    .line 918
    invoke-virtual {v10}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v10, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_0

    .line 920
    :cond_1
    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 922
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    const/4 v3, 0x5

    .line 923
    iget-object v4, p0, Lorg/telegram/ui/ThemeActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 925
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->ChatSettings:I

    const-string v5, "ChatSettings"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 926
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 927
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 928
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v5, "AccDescrMoreOptions"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x2

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v6, Lorg/telegram/messenger/R$string;->ShareTheme:I

    const-string v7, "ShareTheme"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 930
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    sget v5, Lorg/telegram/messenger/R$string;->EditThemeColors:I

    const-string v6, "EditThemeColors"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 931
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_palette:I

    sget v4, Lorg/telegram/messenger/R$string;->CreateNewThemeMenu:I

    const-string v5, "CreateNewThemeMenu"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x4

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_reset:I

    sget v5, Lorg/telegram/messenger/R$string;->ThemeResetToDefaults:I

    const-string v6, "ThemeResetToDefaults"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto :goto_1

    .line 934
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->AutoNightTheme:I

    const-string v4, "AutoNightTheme"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 937
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ThemeActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemeActivity$1;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1046
    new-instance v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ThemeActivity$ListAdapter;-><init>(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    .line 1048
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1049
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1050
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 1052
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1053
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1054
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1055
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1056
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1057
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1369
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-nez p1, :cond_4

    .line 1370
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x15e

    .line 1371
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 1372
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1373
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1374
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 1375
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1378
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 852
    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 853
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    goto/16 :goto_3

    .line 854
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    if-eq p1, p2, :cond_b

    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    goto/16 :goto_2

    .line 859
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->themeAccentListUpdated:I

    if-ne p1, p2, :cond_2

    .line 860
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    if-eqz p1, :cond_d

    iget p2, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_d

    .line 861
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 863
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->themeListUpdated:I

    if-ne p1, p2, :cond_3

    .line 864
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    goto/16 :goto_3

    .line 865
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->themeUploadedToServer:I

    const/4 v1, 0x0

    if-ne p1, p2, :cond_5

    .line 866
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 867
    aget-object p2, p3, v0

    check-cast p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 868
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity;->sharingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-ne p1, p3, :cond_d

    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity;->sharingAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-ne p2, p3, :cond_d

    .line 869
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

    if-eqz p2, :cond_4

    iget-object p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    goto :goto_0

    :cond_4
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    :goto_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->slug:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 870
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

    .line 871
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_d

    .line 872
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    goto/16 :goto_3

    .line 875
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->themeUploadError:I

    if-ne p1, p2, :cond_6

    .line 876
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 877
    aget-object p2, p3, v0

    check-cast p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 878
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity;->sharingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-ne p1, p3, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-ne p2, p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-nez p1, :cond_d

    .line 879
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    goto :goto_3

    .line 881
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->needShareTheme:I

    if-ne p1, p2, :cond_9

    .line 882
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-eqz p1, :cond_7

    goto :goto_1

    .line 885
    :cond_7
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 886
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 887
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 888
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 889
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance p2, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_3

    :cond_8
    :goto_1
    return-void

    .line 894
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    if-ne p1, p2, :cond_a

    .line 895
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->updateMenuItem()V

    .line 896
    invoke-virtual {p0}, Lorg/telegram/ui/ThemeActivity;->checkCurrentDayNight()V

    goto :goto_3

    .line 897
    :cond_a
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiPreviewThemesChanged:I

    if-ne p1, p2, :cond_d

    .line 898
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    if-ltz p1, :cond_d

    .line 899
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_3

    .line 855
    :cond_b
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_c

    .line 856
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 858
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->updateMenuItem()V

    :cond_d
    :goto_3
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2578
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2580
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/16 v2, 0x10

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

    const-class v2, Lorg/telegram/ui/Cells/BrightnessControlCell;

    const/4 v14, 0x3

    aput-object v2, v5, v14

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

    const-class v6, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    aput-object v6, v5, v2

    const/16 v2, 0xd

    const-class v6, Lorg/telegram/ui/Components/SwipeGestureSettingsView;

    aput-object v6, v5, v2

    const/16 v2, 0xe

    const-class v6, Lorg/telegram/ui/DefaultThemesPreviewCell;

    aput-object v6, v5, v2

    const/16 v2, 0xf

    const-class v6, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    aput-object v6, v5, v2

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move/from16 v9, v22

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2581
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2583
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move/from16 v38, v30

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2584
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2585
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2586
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2587
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2588
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2589
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2590
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v25, v4, v5

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2592
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2594
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v11

    sget-object v27, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v25, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2596
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v4, v11

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move/from16 v38, v30

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2598
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v4, v11

    const/16 v27, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2599
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v4, v11

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v35

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v33, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2601
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v25, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move/from16 v31, v6

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2602
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v7, v4, v11

    const-string v7, "valueTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v35

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move/from16 v39, v8

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2604
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v9, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2606
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v36

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    const/16 v34, 0x0

    const/16 v39, 0x0

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v35, v4

    move/from16 v40, v31

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2607
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v4, v11

    const-string v9, "imageView"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v27

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2609
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v9, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v32

    const/16 v30, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v4

    move/from16 v36, v6

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2610
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v9, v4, v11

    const-string v9, "checkBox"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v40

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move-object/from16 v39, v4

    move/from16 v44, v10

    invoke-direct/range {v36 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2611
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v15, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v15, v4, v11

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v27

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move/from16 v31, v15

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2613
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v16, Lorg/telegram/ui/Cells/BrightnessControlCell;

    aput-object v16, v4, v11

    const-string v16, "leftImageView"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v35

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move/from16 v39, v16

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2614
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v17, Lorg/telegram/ui/Cells/BrightnessControlCell;

    aput-object v17, v4, v11

    const-string v17, "rightImageView"

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v27

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move/from16 v31, v16

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2615
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v16, Lorg/telegram/ui/Cells/BrightnessControlCell;

    aput-object v16, v4, v11

    const-string v16, "seekBarView"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v35

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressBackground:I

    const/16 v33, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move/from16 v39, v17

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2616
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v18, Lorg/telegram/ui/Cells/BrightnessControlCell;

    aput-object v18, v4, v11

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v27

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move/from16 v31, v16

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2618
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v18, Lorg/telegram/ui/Cells/ThemeTypeCell;

    aput-object v18, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v32

    const/16 v30, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v4

    move/from16 v36, v6

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2619
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v18, Lorg/telegram/ui/Cells/ThemeTypeCell;

    aput-object v18, v4, v11

    const-string v18, "checkImage"

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v40

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    const/16 v38, 0x0

    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move-object/from16 v39, v4

    invoke-direct/range {v36 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2621
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v30, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v18, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v18, v4, v11

    const-string v18, "sizeBar"

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v32

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v4

    move/from16 v36, v16

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2622
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v19, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v19, v4, v11

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v27

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move/from16 v31, v17

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2624
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v30, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v19, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    aput-object v19, v4, v11

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v32

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v4

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2625
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v16, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    aput-object v16, v4, v11

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move/from16 v31, v17

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2627
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v16, Lorg/telegram/ui/Cells/ChatListCell;

    aput-object v16, v4, v11

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2628
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v16, Lorg/telegram/ui/Cells/ChatListCell;

    aput-object v16, v4, v11

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    const/16 v27, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2630
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v16, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v16, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v32

    const/16 v30, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v4

    move/from16 v36, v6

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2631
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v5, v4, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v40

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v38, 0x0

    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move-object/from16 v39, v4

    invoke-direct/range {v36 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2632
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v5, v4, v11

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move/from16 v31, v10

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2633
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v5, v4, v11

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v32

    const/16 v30, 0x0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v4

    move/from16 v36, v15

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2634
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    new-array v5, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v5, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v5, v12

    sget v43, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    const/16 v40, 0x0

    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    invoke-direct/range {v36 .. v43}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2635
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    new-array v5, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v5, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v5, v12

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2636
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v36

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    const/16 v33, 0x0

    const/16 v37, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move/from16 v38, v5

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2637
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v7, v4, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move/from16 v30, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2638
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v7, v4, v11

    new-array v7, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v7, v11

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v7, v12

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v33, v4

    move-object/from16 v35, v7

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2639
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v7, v4, v11

    new-array v7, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v7, v11

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v7, v12

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v7

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2640
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v7, v4, v11

    new-array v7, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v7, v11

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v7, v12

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move-object/from16 v36, v7

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2641
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v7, v4, v11

    new-array v7, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v7, v11

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v7, v12

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v7

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2642
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v7, v4, v11

    new-array v7, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v7, v11

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v7, v12

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move-object/from16 v36, v7

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2643
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v7, v4, v11

    new-array v7, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v7, v11

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v7, v12

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleShadow:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v7

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2644
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v7, v4, v11

    new-array v7, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v7, v11

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v7, v12

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v7

    move/from16 v30, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2645
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextIn:I

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v33, v4

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2646
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextOut:I

    const/16 v28, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2647
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v11

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheck:I

    const/16 v33, 0x0

    const/16 v37, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move-object/from16 v36, v5

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2648
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v11

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckSelected:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2649
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    new-array v5, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v12

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckRead:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move-object/from16 v36, v5

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2650
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    new-array v5, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v12

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckReadSelected:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2651
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    new-array v5, v13, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v12

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaSentCheck:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move-object/from16 v36, v5

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2652
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    const/16 v28, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2653
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    const/16 v36, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2654
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2655
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyNameText:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2656
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMessageText:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2657
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMessageText:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2658
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMediaMessageSelectedText:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2659
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageSelectedText:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2660
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeText:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2661
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeText:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2662
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeSelectedText:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2663
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v5, v4, v11

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeSelectedText:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2665
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    aput-object v5, v4, v11

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2666
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    aput-object v5, v4, v11

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v4

    move/from16 v35, v6

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2667
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    aput-object v5, v4, v11

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v22, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2668
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    aput-object v7, v4, v11

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move/from16 v30, v8

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2669
    new-instance v2, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    new-array v3, v14, [I

    aput v5, v3, v11

    aput v6, v3, v12

    aput v8, v3, v13

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 816
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 817
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 818
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 819
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeAccentListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 820
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 821
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShareTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 822
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 823
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiPreviewThemesChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 824
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeUploadedToServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 825
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeUploadError:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 826
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-nez v0, :cond_0

    .line 827
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->loadRemoteThemes(IZ)V

    .line 828
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->checkCurrentRemoteTheme(Z)V

    .line 830
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 835
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 836
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->stopLocationUpdate()V

    .line 837
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 838
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 839
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 840
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeAccentListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 841
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 842
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShareTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 843
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 844
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiPreviewThemesChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 845
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeUploadedToServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 846
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeUploadError:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 847
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->saveAutoNightThemeConfig()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1401
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1402
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1403
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1410
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 1411
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->setAdjustResizeToNothing(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
