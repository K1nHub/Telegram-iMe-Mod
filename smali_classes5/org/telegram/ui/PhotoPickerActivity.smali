.class public Lorg/telegram/ui/PhotoPickerActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PhotoPickerActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;,
        Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;,
        Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;
    }
.end annotation


# instance fields
.field private alertOnlyOnce:I

.field private allowCaption:Z

.field private allowIndices:Z

.field private allowOrder:Z

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private caption:Ljava/lang/CharSequence;

.field private chatActivity:Lorg/telegram/ui/ChatActivity;

.field protected commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

.field private delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

.field private final dialogBackgroundKey:I

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private flickerView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private final forceDarckTheme:Z

.field protected frameLayout2:Landroid/widget/FrameLayout;

.field private imageReqId:I

.field private imageSearchEndReached:Z

.field private initialSearchString:Ljava/lang/String;

.field private isDocumentsPicker:Z

.field private itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

.field private itemSize:I

.field private itemsPerRow:I

.field private lastSearchImageString:Ljava/lang/String;

.field private lastSearchString:Ljava/lang/String;

.field private lastSearchToken:I

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

.field private listSort:Z

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private maxSelectedPhotos:I

.field private needsBottomLayout:Z

.field private nextImagesSearchOffset:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;

.field private provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private recentSearches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rect:Landroid/graphics/RectF;

.field private searchDelegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private searching:Z

.field private searchingUser:Z

.field private selectPhotoType:I

.field private selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field protected selectedCountView:Landroid/view/View;

.field private selectedPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPhotosOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final selectorKey:I

.field private sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private sendPressed:Z

.field protected shadow:Landroid/view/View;

.field private shouldSelect:Z

.field private showAsListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private final textKey:I

.field private textPaint:Landroid/text/TextPaint;

.field private type:I

.field private writeButton:Landroid/widget/ImageView;

.field protected writeButtonContainer:Landroid/widget/FrameLayout;

.field private writeButtonDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$-EPh1wABTOIpRdOM-9wToDlUApc(Lorg/telegram/ui/PhotoPickerActivity;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$2(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0DQ1HJth2_CbUEWuuEk8sABs-Bw(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3uokvA3ZafPLU08u-pqmjL6j3U0(Lorg/telegram/ui/PhotoPickerActivity;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$5(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4LWBJwkGP-Qz6erIFI6ULpizPVo(Lorg/telegram/ui/PhotoPickerActivity;ILjava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$7(ILjava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G1bSEGSmBM0GDPgI0dRdeODWM8c(Lorg/telegram/ui/PhotoPickerActivity;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$searchBotUser$9(Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$OPRm_ci9Rgha4V6wnPadLeO6EJg(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QJDYa19hhgGrmjognDa5dl1OASk(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;IZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$searchImages$12(Ljava/lang/String;IZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UskNmlCxBxCwd701gdRoQ3WrQPQ(Lorg/telegram/ui/PhotoPickerActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WTN55-SH6KzEvu06KvDjoxMcCqc(Lorg/telegram/ui/PhotoPickerActivity;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e-xiim84sHpUXKmGE67b8aw5yPQ(Lorg/telegram/ui/PhotoPickerActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$8(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eksX2tcSCFQabHyOY43pJ2kPYiU(Lorg/telegram/ui/PhotoPickerActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$searchBotUser$10(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fMuTYCgyKRh8KtOm_6hn0CfAGKM(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;ILorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$searchImages$11(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lZgpYG711vajQg1F4jmIdXMt3gg(Lorg/telegram/ui/PhotoPickerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nw5X2H11HedLqIATxQhfS3slVP4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(ILorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/HashMap;Ljava/util/ArrayList;IZLorg/telegram/ui/ChatActivity;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;IZ",
            "Lorg/telegram/ui/ChatActivity;",
            "Z)V"
        }
    .end annotation

    .line 452
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageSearchEndReached:Z

    .line 169
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowOrder:Z

    const/16 v1, 0x64

    .line 180
    iput v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemSize:I

    const/4 v1, 0x3

    .line 198
    iput v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemsPerRow:I

    .line 199
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->textPaint:Landroid/text/TextPaint;

    .line 200
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->rect:Landroid/graphics/RectF;

    .line 201
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->paint:Landroid/graphics/Paint;

    .line 212
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->needsBottomLayout:Z

    .line 225
    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoPickerActivity$1;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 453
    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 454
    iput-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    .line 455
    iput-object p4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    .line 456
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    .line 457
    iput p5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectPhotoType:I

    .line 458
    iput-object p7, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 459
    iput-boolean p6, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowCaption:Z

    .line 460
    iput-boolean p8, p0, Lorg/telegram/ui/PhotoPickerActivity;->forceDarckTheme:Z

    if-nez p2, :cond_0

    .line 463
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->loadRecentSearch()V

    :cond_0
    if-eqz p8, :cond_1

    .line 467
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_dialogBackground:I

    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    .line 468
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    .line 469
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItemsSelector:I

    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectorKey:I

    goto :goto_0

    .line 471
    :cond_1
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    .line 472
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    .line 473
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectorKey:I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoPickerActivity;I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PhotoPickerActivity;ZILjava/lang/String;Z)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos(ZILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listSort:Z

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/PhotoPickerActivity;Z)Z
    .locals 0

    .line 109
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listSort:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PhotoPickerActivity;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->showAsListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageSearchEndReached:Z

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/PhotoPickerActivity;Z)Z
    .locals 0

    .line 109
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageSearchEndReached:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/PhotoPickerActivity;Z)Z
    .locals 0

    .line 109
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 109
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/PhotoPickerActivity;I)I
    .locals 0

    .line 109
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 109
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PhotoPickerActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->processSearch(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 109
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemsPerRow:I

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/PhotoPickerActivity;I)I
    .locals 0

    .line 109
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemsPerRow:I

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 109
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemSize:I

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/PhotoPickerActivity;I)I
    .locals 0

    .line 109
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemSize:I

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->shouldSelect:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 109
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->alertOnlyOnce:I

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/PhotoPickerActivity;I)I
    .locals 0

    .line 109
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->alertOnlyOnce:I

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 109
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextImagesSearchOffset:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PhotoPickerActivity;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoPickerActivity;->searchImages(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/text/TextPaint;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 109
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/graphics/Paint;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/graphics/RectF;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/PhotoPickerActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowCaption:Z

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowOrder:Z

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 109
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->maxSelectedPhotos:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 109
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectPhotoType:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->forceDarckTheme:Z

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 109
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowIndices:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateCheckedPhotoIndices()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/Object;I)I
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->addToSelectedPhotos(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method private addToRecentSearches(Ljava/lang/String;)V
    .locals 4

    .line 1408
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1409
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1410
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1411
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1415
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1416
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_2

    .line 1417
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1419
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->saveRecentSearch()V

    return-void
.end method

.method private addToSelectedPhotos(Ljava/lang/Object;I)I
    .locals 4

    .line 1573
    instance-of v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_0

    .line 1574
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 1575
    :cond_0
    instance-of v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_1

    .line 1576
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-nez v1, :cond_2

    return v2

    .line 1581
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1582
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 1585
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1587
    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowIndices:Z

    if-eqz v2, :cond_4

    .line 1588
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateCheckedPhotoIndices()V

    :cond_4
    if-ltz p2, :cond_7

    if-eqz v0, :cond_5

    .line 1592
    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    goto :goto_1

    .line 1593
    :cond_5
    instance-of v0, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v0, :cond_6

    .line 1594
    check-cast p1, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController$SearchImage;->reset()V

    .line 1596
    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {p1, p2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->updatePhotoAtIndex(I)V

    :cond_7
    return v1

    .line 1600
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method private applyCaption()V
    .locals 2

    .line 1298
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1301
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1302
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1303
    instance-of v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_1

    .line 1304
    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1305
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1306
    :cond_1
    instance-of v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_2

    .line 1307
    check-cast v0, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 1308
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    :cond_2
    :goto_0
    return-void
.end method

.method private getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .locals 5

    .line 1547
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1550
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1551
    instance-of v3, v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v3, :cond_2

    .line 1552
    check-cast v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 1553
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1554
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v4, :cond_0

    if-ltz v3, :cond_2

    .line 1555
    iget-object v4, v4, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    goto :goto_1

    :cond_0
    if-ltz v3, :cond_2

    .line 1559
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    if-ne v3, p1, :cond_2

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$createView$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 829
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchDelegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;

    if-eqz p1, :cond_0

    .line 830
    invoke-interface {p1}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;->shouldClearRecentSearch()V

    goto :goto_0

    .line 832
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity;->clearRecentSearch()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;I)V
    .locals 9

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 815
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_1

    .line 816
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 817
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchDelegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;

    if-eqz p2, :cond_0

    .line 818
    invoke-interface {p2, p1}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;->shouldSearchText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 820
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 822
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->processSearch(Landroid/widget/EditText;)V

    goto :goto_0

    .line 824
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v1

    if-ne p2, p1, :cond_2

    .line 825
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 826
    sget p2, Lorg/telegram/messenger/R$string;->ClearSearchAlertTitle:I

    const-string v0, "ClearSearchAlertTitle"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 827
    sget p2, Lorg/telegram/messenger/R$string;->ClearSearchAlert:I

    const-string v0, "ClearSearchAlert"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 828
    sget p2, Lorg/telegram/messenger/R$string;->ClearButton:I

    const-string v0, "ClearButton"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 835
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 836
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 837
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 838
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 840
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void

    .line 847
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v0, :cond_4

    .line 848
    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    goto :goto_1

    .line 850
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    :goto_1
    move-object v3, v0

    if-ltz p2, :cond_d

    .line 852
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_5

    goto :goto_3

    .line 855
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_6

    .line 856
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 858
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listSort:Z

    if-eqz v0, :cond_7

    .line 859
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->onListItemClick(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_3

    .line 862
    :cond_7
    iget p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectPhotoType:I

    sget v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_AVATAR:I

    if-eq p1, v0, :cond_c

    sget v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_AVATAR_VIDEO:I

    if-ne p1, v0, :cond_8

    goto :goto_2

    .line 864
    :cond_8
    sget v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_WALLPAPER:I

    if-ne p1, v0, :cond_9

    const/4 v1, 0x3

    goto :goto_2

    .line 866
    :cond_9
    sget v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_QR:I

    if-ne p1, v0, :cond_a

    const/16 v1, 0xa

    goto :goto_2

    .line 868
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-nez p1, :cond_b

    const/4 v1, 0x4

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_2
    move v5, v1

    .line 873
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 874
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->maxSelectedPhotos:I

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowOrder:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    .line 875
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->isDocumentsPicker:Z

    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    move v4, p2

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    :cond_d
    :goto_3
    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;I)Z
    .locals 3

    .line 880
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listSort:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->onListItemClick(Landroid/view/View;Ljava/lang/Object;)V

    return v1

    .line 884
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v0, :cond_1

    .line 885
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 886
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->shouldSelect:Z

    invoke-virtual {v2, p1, v1, p2, v0}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->setIsActive(Landroid/view/View;ZIZ)Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static synthetic lambda$createView$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 4

    .line 1089
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1090
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1092
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos(ZI)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1124
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1125
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$6(Ljava/lang/String;)V
    .locals 1

    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$7(ILjava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 1188
    iget-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1189
    iget-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 1192
    :cond_0
    sget p3, Lcom/iMe/common/IdFabric$Menu;->REACTIONS:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, p3, :cond_1

    .line 1193
    invoke-direct {p0, v2, v1, v0, v2}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos(ZILjava/lang/String;Z)V

    goto :goto_0

    .line 1194
    :cond_1
    sget p3, Lcom/iMe/common/IdFabric$Menu;->TRANSLATE:I

    if-ne p1, p3, :cond_2

    .line 1195
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    new-instance p3, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ChatActivity;->createTranslateOutgoingDialog(Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/TranslateAlert;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 1203
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide p2

    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-static {p1, p2, p3, v1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_0

    .line 1205
    :cond_3
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos(ZI)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1096
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    iget v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->maxSelectedPhotos:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_12

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v5, v3}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    .line 1099
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1100
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    const/4 v4, 0x0

    .line 1102
    iput-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1104
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1105
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 1106
    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v6, Lorg/telegram/ui/PhotoPickerActivity$14;

    invoke-direct {v6, v0}, Lorg/telegram/ui/PhotoPickerActivity$14;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1123
    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v6, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda10;

    invoke-direct {v6, v0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 1128
    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    const/4 v4, 0x2

    new-array v6, v4, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1130
    iput-object v6, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v6, 0x4

    new-array v7, v6, [I

    .line 1132
    sget v8, Lcom/iMe/common/IdFabric$Menu;->REACTIONS:I

    aput v8, v7, v3

    sget v8, Lcom/iMe/common/IdFabric$Menu;->TRANSLATE:I

    aput v8, v7, v5

    aput v3, v7, v4

    const/4 v8, 0x3

    aput v5, v7, v8

    new-array v9, v6, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1133
    iput-object v9, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1134
    iget-object v9, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move v10, v3

    :goto_0
    if-ge v10, v6, :cond_11

    .line 1139
    aget v11, v7, v10

    .line 1142
    sget v12, Lcom/iMe/common/IdFabric$Menu;->REACTIONS:I

    if-ne v11, v12, :cond_2

    .line 1143
    sget-boolean v13, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    if-eqz v13, :cond_1

    iget-object v13, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-eq v13, v5, :cond_3

    :cond_1
    :goto_1
    move v13, v5

    goto :goto_2

    .line 1146
    :cond_2
    sget v13, Lcom/iMe/common/IdFabric$Menu;->TRANSLATE:I

    if-ne v11, v13, :cond_3

    .line 1147
    sget-boolean v13, Lorg/telegram/messenger/SharedConfig;->isTranslateInSendPopupEnabled:Z

    if-eqz v13, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    move v13, v3

    :goto_2
    if-nez v11, :cond_4

    .line 1152
    iget-object v14, v0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/ChatActivity;->canScheduleMessage()Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    if-ne v11, v5, :cond_6

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_5
    move v13, v5

    :cond_6
    if-eqz v13, :cond_7

    goto/16 :goto_8

    .line 1163
    :cond_7
    iget-object v13, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v14, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v15

    if-nez v10, :cond_8

    move v6, v5

    goto :goto_3

    :cond_8
    move v6, v3

    :goto_3
    if-ne v10, v5, :cond_9

    move v4, v5

    goto :goto_4

    :cond_9
    move v4, v3

    :goto_4
    invoke-direct {v14, v15, v6, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    aput-object v14, v13, v10

    .line 1164
    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v4, v4, v10

    if-nez v10, :cond_a

    move v6, v5

    goto :goto_5

    :cond_a
    move v6, v3

    :goto_5
    if-ne v10, v8, :cond_b

    move v13, v5

    goto :goto_6

    :cond_b
    move v13, v3

    :goto_6
    invoke-virtual {v4, v6, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZ)V

    if-ne v11, v12, :cond_c

    .line 1167
    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v4, v4, v10

    sget v6, Lorg/telegram/messenger/R$string;->sending_settings_send_add_reactions:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    sget v12, Lorg/telegram/messenger/R$drawable;->fork_ic_reactions:I

    invoke-virtual {v4, v6, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto/16 :goto_7

    .line 1168
    :cond_c
    sget v4, Lcom/iMe/common/IdFabric$Menu;->TRANSLATE:I

    if-ne v11, v4, :cond_d

    .line 1169
    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v4, v4, v10

    sget v6, Lorg/telegram/messenger/R$string;->chat_long_action_translate:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    invoke-virtual {v4, v6, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_7

    :cond_d
    if-nez v11, :cond_f

    .line 1172
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1173
    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v4, v4, v10

    sget v6, Lorg/telegram/messenger/R$string;->SetReminder:I

    const-string v12, "SetReminder"

    invoke-static {v12, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    invoke-virtual {v4, v6, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_7

    .line 1175
    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v4, v4, v10

    sget v6, Lorg/telegram/messenger/R$string;->ScheduleMessage:I

    const-string v12, "ScheduleMessage"

    invoke-static {v12, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    invoke-virtual {v4, v6, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_7

    .line 1179
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabledForDialog(J)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1180
    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v4, v4, v10

    sget v6, Lorg/telegram/messenger/R$string;->send_with_sound:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    sget v12, Lorg/telegram/messenger/R$drawable;->input_notify_on:I

    invoke-virtual {v4, v6, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_7

    .line 1182
    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v4, v4, v10

    sget v6, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    const-string v12, "SendWithoutSound"

    invoke-static {v12, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget v12, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-virtual {v4, v6, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1184
    :goto_7
    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v4, v4, v10

    const/16 v6, 0xc4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 1186
    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v6, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v6, v6, v10

    const/4 v12, -0x1

    const/16 v13, 0x30

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v4, v6, v12}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1187
    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v4, v4, v10

    new-instance v6, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v11, v9}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PhotoPickerActivity;ILjava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_8
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x4

    goto/16 :goto_0

    .line 1209
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectorKey:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setupRadialSelectors(I)V

    .line 1211
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v6, -0x2

    invoke-direct {v2, v4, v6, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1212
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 1213
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v4, Lorg/telegram/messenger/R$style;->PopupContextAnimation2:I

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1214
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1215
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1216
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1217
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 1218
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1221
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v4, 0x3e8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1222
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v2, 0x2

    new-array v4, v2, [I

    .line 1224
    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1225
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v6, 0x33

    aget v7, v4, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v7, v9

    const/16 v9, 0x8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v7, v9

    aget v4, v4, v5

    iget-object v5, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v4, v9

    invoke-virtual {v2, v1, v6, v7, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1226
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    .line 1227
    invoke-virtual {v1, v8, v5}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_12
    :goto_9
    return v3
.end method

.method private synthetic lambda$searchBotUser$10(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1668
    new-instance p3, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$searchBotUser$9(Lorg/telegram/tgnet/TLObject;Z)V
    .locals 4

    .line 1669
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 1670
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1671
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1672
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1673
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchImageString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1674
    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchImageString:Ljava/lang/String;

    const-string v0, ""

    .line 1675
    invoke-direct {p0, p2, p1, v0, v2}, Lorg/telegram/ui/PhotoPickerActivity;->searchImages(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$searchImages$11(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLRPC$User;)V
    .locals 9

    .line 1720
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->addToRecentSearches(Ljava/lang/String;)V

    .line 1721
    iget p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I

    if-eq p2, p1, :cond_0

    return-void

    .line 1725
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_14

    .line 1728
    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    .line 1729
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->next_offset:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextImagesSearchOffset:Ljava/lang/String;

    .line 1731
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_11

    .line 1732
    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-nez p4, :cond_1

    .line 1733
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v6, "photo"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_1
    if-eqz p4, :cond_2

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v6, "gif"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_8

    .line 1736
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_8

    .line 1740
    :cond_3
    new-instance v5, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v5}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    if-eqz p4, :cond_7

    .line 1742
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_7

    move v6, v0

    .line 1743
    :goto_1
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 1744
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1745
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v8, :cond_5

    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1746
    :cond_5
    :goto_2
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 1747
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    .line 1751
    :cond_6
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1752
    iput v0, v5, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    .line 1753
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v6, :cond_f

    .line 1754
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemSize:I

    invoke-static {v6, v7, p2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 1756
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    or-int/2addr v7, p2

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    goto/16 :goto_7

    :cond_7
    if-nez p4, :cond_9

    .line 1760
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v6, :cond_9

    .line 1761
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    .line 1762
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v8, 0x140

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    if-nez v6, :cond_8

    goto/16 :goto_8

    .line 1766
    :cond_8
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 1767
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    .line 1768
    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1769
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1770
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    .line 1771
    iput-object v7, v5, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPhotoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_7

    .line 1773
    :cond_9
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez v6, :cond_a

    goto/16 :goto_8

    :cond_a
    move v6, v0

    .line 1776
    :goto_3
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 1777
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1778
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-eqz v8, :cond_b

    .line 1779
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 1780
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    goto :goto_4

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1784
    :cond_c
    :goto_4
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v6, :cond_d

    .line 1785
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    goto :goto_5

    :cond_d
    const/4 v6, 0x0

    .line 1787
    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    .line 1789
    :goto_5
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    iput-object v7, v5, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    if-eqz p4, :cond_e

    move v6, v0

    goto :goto_6

    .line 1790
    :cond_e
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->size:I

    :goto_6
    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    .line 1793
    :cond_f
    :goto_7
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    .line 1794
    iput p4, v5, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    .line 1795
    iput-object v4, v5, Lorg/telegram/messenger/MediaController$SearchImage;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 1796
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->params:Ljava/util/HashMap;

    .line 1797
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    const-string v7, "id"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    iget-object v4, v5, Lorg/telegram/messenger/MediaController$SearchImage;->params:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "query_id"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    iget-object v4, v5, Lorg/telegram/messenger/MediaController$SearchImage;->params:Ljava/util/HashMap;

    invoke-static {p5}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "bot_name"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;

    iget-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :cond_10
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1806
    :cond_11
    iget-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eq p1, p3, :cond_13

    iget-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextImagesSearchOffset:Ljava/lang/String;

    if-nez p3, :cond_12

    goto :goto_9

    :cond_12
    move p3, v0

    goto :goto_a

    :cond_13
    :goto_9
    move p3, p2

    :goto_a
    iput-boolean p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageSearchEndReached:Z

    goto :goto_b

    :cond_14
    move v3, v0

    .line 1808
    :goto_b
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    if-eqz v3, :cond_15

    .line 1810
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-virtual {p2, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_c

    .line 1811
    :cond_15
    iget-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageSearchEndReached:Z

    if-eqz p1, :cond_16

    .line 1812
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 1814
    :cond_16
    :goto_c
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_17

    .line 1815
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    :cond_17
    return-void
.end method

.method private synthetic lambda$searchImages$12(Ljava/lang/String;IZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 1719
    new-instance p6, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda6;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p5

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;ILorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadRecentSearch()V
    .locals 5

    .line 1396
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "web_recent_search"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "count"

    .line 1397
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1403
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private onListItemClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, -0x1

    .line 1314
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/PhotoPickerActivity;->addToSelectedPhotos(Ljava/lang/Object;I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1319
    :goto_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v0, :cond_1

    .line 1320
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1321
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1322
    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1323
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    .line 1325
    :goto_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->updatePhotosButton(I)V

    .line 1326
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->selectedPhotosChanged()V

    return-void
.end method

.method private processSearch(Landroid/widget/EditText;)V
    .locals 4

    .line 1423
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1426
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1427
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1428
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x1

    .line 1429
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageSearchEndReached:Z

    .line 1430
    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const-string v3, ""

    invoke-direct {p0, v1, p1, v3, v0}, Lorg/telegram/ui/PhotoPickerActivity;->searchImages(ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1431
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    .line 1432
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 1433
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    .line 1434
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoRecentSearches:I

    const-string v1, "NoRecentSearches"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1436
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->NoResultFoundFor:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "NoResultFoundFor"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V

    return-void
.end method

.method private saveRecentSearch()V
    .locals 5

    .line 1386
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "web_recent_search"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1387
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1388
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "count"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1389
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1392
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private searchBotUser(Z)V
    .locals 3

    .line 1660
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchingUser:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1663
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchingUser:Z

    .line 1664
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 1665
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->gifSearchBot:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->imageSearchBot:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 1666
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Z)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private searchImages(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 1682
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1683
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    .line 1684
    iget v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    if-eqz v2, :cond_0

    .line 1685
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    invoke-virtual {v2, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1686
    iput v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    .line 1690
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchImageString:Ljava/lang/String;

    .line 1691
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    .line 1693
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    if-eqz p1, :cond_1

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->gifSearchBot:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->imageSearchBot:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 1694
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_3

    if-eqz p4, :cond_2

    .line 1696
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->searchBotUser(Z)V

    :cond_2
    return-void

    .line 1700
    :cond_3
    move-object v8, v0

    check-cast v8, Lorg/telegram/tgnet/TLRPC$User;

    .line 1702
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    if-nez p2, :cond_4

    const-string v0, ""

    goto :goto_1

    :cond_4
    move-object v0, p2

    .line 1703
    :goto_1
    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 1704
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1705
    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 1707
    iget-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_6

    .line 1708
    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    .line 1709
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1710
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_2

    .line 1712
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_2

    .line 1715
    :cond_6
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1718
    :goto_2
    iget p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I

    add-int/lit8 v6, p3, 0x1

    iput v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I

    .line 1719
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda8;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p2

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;IZLorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {p3, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    .line 1818
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private sendSelectedPhotos(ZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos(ZILjava/lang/String;Z)V

    return-void
.end method

.method private sendSelectedPhotos(ZILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos(ZILjava/lang/String;Z)V

    return-void
.end method

.method private sendSelectedPhotos(ZILjava/lang/String;Z)V
    .locals 7

    .line 1830
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPressed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1833
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->applyCaption()V

    const/4 v0, 0x1

    .line 1834
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPressed:Z

    .line 1835
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->actionButtonPressed(ZZILjava/lang/String;Z)V

    .line 1836
    iget p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectPhotoType:I

    sget p2, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_WALLPAPER:I

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->canFinishFragment()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1837
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showCommentTextView(ZZ)Z
    .locals 10

    .line 1442
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1445
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-ne p1, v0, :cond_2

    return v1

    .line 1448
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 1449
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1451
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1452
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1453
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1455
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    if-eqz p1, :cond_6

    .line 1457
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1458
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_6
    const/16 v0, 0x30

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_f

    .line 1461
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1462
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1463
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v2, [F

    if-eqz p1, :cond_7

    move v9, v5

    goto :goto_2

    :cond_7
    move v9, v4

    :goto_2
    aput v9, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v2, [F

    if-eqz p1, :cond_8

    move v9, v5

    goto :goto_3

    :cond_8
    move v9, v4

    :goto_3
    aput v9, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1465
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v2, [F

    if-eqz p1, :cond_9

    move v9, v5

    goto :goto_4

    :cond_9
    move v9, v3

    :goto_4
    aput v9, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1466
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v2, [F

    if-eqz p1, :cond_a

    move v9, v5

    goto :goto_5

    :cond_a
    move v9, v4

    :goto_5
    aput v9, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v2, [F

    if-eqz p1, :cond_b

    move v4, v5

    :cond_b
    aput v4, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1468
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    move v5, v3

    :goto_6
    aput v5, v7, v1

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v2, [F

    if-eqz p1, :cond_d

    move v7, v3

    goto :goto_7

    :cond_d
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    :goto_7
    aput v7, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1470
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->shadow:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v2, [F

    if-eqz p1, :cond_e

    goto :goto_8

    :cond_e
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v3, v0

    :goto_8
    aput v3, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1472
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1473
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1474
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1475
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity$16;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoPickerActivity$16;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1494
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_10

    .line 1496
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_10

    move v1, v5

    goto :goto_9

    :cond_10
    move v1, v4

    :goto_9
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1497
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_11

    move v1, v5

    goto :goto_a

    :cond_11
    move v1, v4

    :goto_a
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1498
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_12

    move v1, v5

    goto :goto_b

    :cond_12
    move v1, v3

    :goto_b
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1499
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_13

    move v1, v5

    goto :goto_c

    :cond_13
    move v1, v4

    :goto_c
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1500
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_14

    move v4, v5

    :cond_14
    invoke-virtual {p2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1501
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_15

    goto :goto_d

    :cond_15
    move v5, v3

    :goto_d
    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1502
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_16

    move v1, v3

    goto :goto_e

    :cond_16
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    :goto_e
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1503
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->shadow:Landroid/view/View;

    if-eqz p1, :cond_17

    goto :goto_f

    :cond_17
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v3, v0

    :goto_f
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    if-nez p1, :cond_18

    .line 1505
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1506
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_18
    :goto_10
    return v2
.end method

.method private updateCheckedPhotoIndices()V
    .locals 7

    .line 1521
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowIndices:Z

    if-nez v0, :cond_0

    return-void

    .line 1524
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    .line 1526
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1527
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v4, :cond_4

    .line 1528
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 1529
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1530
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 v6, -0x1

    if-eqz v5, :cond_2

    .line 1531
    iget-object v5, v5, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1532
    iget-boolean v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowIndices:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    :cond_1
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setNum(I)V

    goto :goto_2

    .line 1534
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 1535
    iget-boolean v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowIndices:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    :cond_3
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setNum(I)V

    goto :goto_2

    .line 1537
    :cond_4
    instance-of v4, v3, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v4, :cond_6

    .line 1538
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1539
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1540
    check-cast v3, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1541
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private updateSearchInterface()V
    .locals 2

    .line 1649
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1650
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1652
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1655
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    goto :goto_1

    .line 1653
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public clearRecentSearch()V
    .locals 2

    .line 1330
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1331
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1332
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1334
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    .line 1335
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->saveRecentSearch()V

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    .line 503
    iput-boolean v8, v0, Lorg/telegram/ui/PhotoPickerActivity;->listSort:Z

    .line 505
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 506
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 507
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 508
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectorKey:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 509
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 510
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    const-string v2, "SearchGifsTitle"

    const-string v3, "SearchImagesTitle"

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    .line 511
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 512
    :cond_0
    iget v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-nez v1, :cond_1

    .line 513
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->SearchImagesTitle:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne v1, v9, :cond_2

    .line 515
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->SearchGifsTitle:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 517
    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/PhotoPickerActivity$2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/PhotoPickerActivity$2;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 541
    iget-boolean v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->isDocumentsPicker:Z

    const/4 v10, 0x2

    if-eqz v1, :cond_3

    .line 542
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 543
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v8, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    .line 544
    new-instance v4, Lorg/telegram/ui/PhotoPickerActivity$3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/PhotoPickerActivity$3;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;)V

    .line 555
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_list:I

    sget v5, Lorg/telegram/messenger/R$string;->ShowAsList:I

    const-string v6, "ShowAsList"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v9, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->showAsListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 556
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_openin:I

    sget v5, Lorg/telegram/messenger/R$string;->OpenInExternalApp:I

    const-string v6, "OpenInExternalApp"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v10, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 559
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v1, :cond_4

    .line 560
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 561
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v1, v8, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/PhotoPickerActivity$4;

    invoke-direct {v4, v0}, Lorg/telegram/ui/PhotoPickerActivity$4;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 601
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    .line 602
    iget v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 603
    iget v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 604
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelHint:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 607
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v1, :cond_6

    .line 608
    iget v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-nez v1, :cond_5

    .line 609
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->SearchImagesTitle:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    if-ne v1, v9, :cond_6

    .line 611
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->SearchGifsTitle:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 615
    :cond_6
    :goto_1
    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity$5;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/PhotoPickerActivity$5;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 784
    iget v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 785
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 787
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x6

    .line 788
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v11, 0x8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v5, 0x32

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 789
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 790
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 791
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 792
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 793
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 794
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$6;

    const/4 v12, 0x4

    invoke-direct {v2, v0, v7, v12}, Lorg/telegram/ui/PhotoPickerActivity$6;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;I)V

    iput-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 800
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$7;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PhotoPickerActivity$7;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 810
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x33

    const/4 v4, -0x1

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-direct {v2, v0, v7}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 812
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 813
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 878
    iget v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->maxSelectedPhotos:I

    if-eq v1, v9, :cond_7

    .line 879
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 892
    :cond_7
    new-instance v1, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$8;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PhotoPickerActivity$8;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;-><init>(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$RecyclerViewItemRangeSelectorDelegate;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    .line 934
    iget v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->maxSelectedPhotos:I

    if-eq v2, v9, :cond_8

    .line 935
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 938
    :cond_8
    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity$9;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/PhotoPickerActivity$9;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->flickerView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v13, 0x0

    .line 949
    invoke-virtual {v1, v13}, Landroid/view/View;->setAlpha(F)V

    .line 950
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->flickerView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 952
    new-instance v1, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->flickerView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v7, v2, v9, v3}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 953
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 954
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 955
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 956
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 957
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->flickerView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1, v2, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 958
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v1, :cond_9

    .line 960
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoPhotos:I

    const-string v3, "NoPhotos"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 964
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoRecentSearches:I

    const-string v3, "NoRecentSearches"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v8, v8}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 967
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/16 v18, 0x7e

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 969
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$10;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PhotoPickerActivity$10;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 994
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v1, :cond_a

    .line 995
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V

    .line 998
    :cond_a
    iget-boolean v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->needsBottomLayout:Z

    if-eqz v1, :cond_13

    .line 999
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->shadow:Landroid/view/View;

    .line 1000
    sget v2, Lorg/telegram/messenger/R$drawable;->header_shadow_reverse:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1001
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->shadow:Landroid/view/View;

    const/16 v2, 0x30

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1002
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->shadow:Landroid/view/View;

    const/4 v14, -0x1

    const/4 v15, 0x3

    const/16 v16, 0x53

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x30

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1004
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    .line 1005
    iget v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1006
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1007
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1008
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    const/16 v5, 0x53

    invoke-static {v4, v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1009
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    sget-object v2, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda4;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1011
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v1, :cond_b

    .line 1012
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    .line 1014
    :cond_b
    new-instance v14, Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    iput-object v14, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    new-array v1, v9, [Landroid/text/InputFilter;

    .line 1016
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->maxCaptionLength:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v8

    .line 1017
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setFilters([Landroid/text/InputFilter;)V

    .line 1018
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v2, Lorg/telegram/messenger/R$string;->AddCaption:I

    const-string v3, "AddCaption"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 1019
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 1020
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    .line 1021
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1022
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1023
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x54

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1024
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->caption:Ljava/lang/CharSequence;

    if-eqz v1, :cond_c

    .line 1025
    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$11;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PhotoPickerActivity$11;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1046
    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity$12;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/PhotoPickerActivity$12;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    .line 1056
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1057
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 1058
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1059
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1060
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1061
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1062
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/16 v14, 0x3c

    const/16 v15, 0x3c

    const/16 v16, 0x55

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xc

    const/16 v20, 0xa

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1064
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    const/16 v1, 0x38

    .line 1065
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v6, v12, :cond_d

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButtonPressed:I

    :cond_d
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v3, v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ge v6, v12, :cond_e

    .line 1067
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->floating_shadow_profile:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1068
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v5, -0x1000000

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1069
    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    iget-object v5, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v3, v5, v8, v8}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1070
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 1071
    iput-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 1073
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->attach_send:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1075
    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 1076
    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingIcon:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1077
    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-lt v6, v12, :cond_f

    .line 1079
    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/PhotoPickerActivity$13;

    invoke-direct {v4, v0}, Lorg/telegram/ui/PhotoPickerActivity$13;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1087
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    const/16 v5, 0x3c

    if-lt v6, v12, :cond_10

    move v14, v1

    goto :goto_3

    :cond_10
    move v14, v5

    :goto_3
    if-lt v6, v12, :cond_11

    move v15, v1

    goto :goto_4

    :cond_11
    move v15, v5

    :goto_4
    const/16 v16, 0x33

    if-lt v6, v12, :cond_12

    move/from16 v17, v10

    goto :goto_5

    :cond_12
    move/from16 v17, v8

    :goto_5
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1088
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1232
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->textPaint:Landroid/text/TextPaint;

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1233
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->textPaint:Landroid/text/TextPaint;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1235
    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity$15;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/PhotoPickerActivity$15;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    .line 1256
    invoke-virtual {v1, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1257
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1258
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1259
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    const/16 v12, 0x2a

    const/16 v13, 0x18

    const/16 v14, 0x55

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x2

    const/16 v18, 0x9

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1260
    iget v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectPhotoType:I

    sget v2, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_ALL:I

    if-eq v1, v2, :cond_13

    .line 1261
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1264
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v1, :cond_14

    iget v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-eqz v1, :cond_14

    if-ne v1, v9, :cond_15

    :cond_14
    iget-boolean v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->allowOrder:Z

    if-eqz v1, :cond_15

    move v1, v9

    goto :goto_6

    :cond_15
    move v1, v8

    :goto_6
    iput-boolean v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->allowIndices:Z

    .line 1266
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1267
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v9, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 1268
    invoke-virtual {v0, v8}, Lorg/telegram/ui/PhotoPickerActivity;->updatePhotosButton(I)V

    .line 1270
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1365
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 1366
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    :cond_0
    return-void
.end method

.method public getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 1371
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2044
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2046
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    iget v9, v0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2048
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    iget v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    move/from16 v18, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2049
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    iget v11, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2050
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    iget v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    const/16 v18, 0x0

    move-object v12, v2

    move/from16 v19, v3

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2051
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    iget v11, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectorKey:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2052
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    iget v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    move-object v12, v2

    move/from16 v19, v3

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2053
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelHint:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2054
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v13, v3

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    move-object v12, v2

    move/from16 v19, v3

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2056
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2058
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v14, 0x0

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    const/4 v5, 0x0

    aput-object v4, v15, v5

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v5

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachEmptyImage:I

    move-object v12, v2

    move-object/from16 v17, v4

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2059
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v22, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v3, v5

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPhotoBackground:I

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v23, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isLightStatusBar()Z
    .locals 2

    .line 2066
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1615
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1616
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    const/4 v0, 0x0

    return v0

    .line 1619
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 483
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 484
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 489
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 490
    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    if-eqz v0, :cond_0

    .line 491
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 492
    iput v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    .line 494
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    .line 497
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1360
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1340
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1341
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1342
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1344
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 1345
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 1347
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 1348
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->openSearch(Z)V

    .line 1349
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->initialSearchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->initialSearchString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldText(Ljava/lang/CharSequence;Z)V

    const/4 v0, 0x0

    .line 1351
    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->initialSearchString:Ljava/lang/String;

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoPickerActivity;->processSearch(Landroid/widget/EditText;)V

    .line 1354
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_3
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1608
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_0

    .line 1609
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public setCaption(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1375
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->caption:Ljava/lang/CharSequence;

    .line 1376
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 1377
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V
    .locals 0

    .line 1822
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    return-void
.end method

.method public setDocumentsPicker(Z)V
    .locals 0

    .line 478
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->isDocumentsPicker:Z

    return-void
.end method

.method public setInitialSearchString(Ljava/lang/String;)V
    .locals 0

    .line 1382
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->initialSearchString:Ljava/lang/String;

    return-void
.end method

.method public setLayoutViews(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;Lorg/telegram/ui/Components/EditTextEmoji;)V
    .locals 0

    .line 1289
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    .line 1290
    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    .line 1291
    iput-object p5, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    .line 1292
    iput-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    .line 1293
    iput-object p4, p0, Lorg/telegram/ui/PhotoPickerActivity;->shadow:Landroid/view/View;

    const/4 p1, 0x0

    .line 1294
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->needsBottomLayout:Z

    return-void
.end method

.method public setMaxSelectedPhotos(IZ)V
    .locals 0

    .line 1513
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->maxSelectedPhotos:I

    .line 1514
    iput-boolean p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowOrder:Z

    if-lez p1, :cond_0

    .line 1515
    iget p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1516
    iput p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->maxSelectedPhotos:I

    :cond_0
    return-void
.end method

.method public setSearchDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;)V
    .locals 0

    .line 1826
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchDelegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;

    return-void
.end method

.method public updatePhotosButton(I)V
    .locals 11

    .line 1623
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1626
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1627
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1628
    :goto_0
    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/PhotoPickerActivity;->showCommentTextView(ZZ)Z

    goto/16 :goto_4

    .line 1630
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1631
    :goto_1
    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/PhotoPickerActivity;->showCommentTextView(ZZ)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    .line 1632
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    const/16 v1, 0x15

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1633
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1634
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v4, v1, [Landroid/animation/Animator;

    .line 1635
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v1, [F

    const v8, 0x3f8ccccd    # 1.1f

    const v9, 0x3f666666    # 0.9f

    if-ne p1, v3, :cond_3

    move v10, v8

    goto :goto_2

    :cond_3
    move v10, v9

    :goto_2
    aput v10, v7, v2

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v7, v3

    .line 1636
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v1, [F

    if-ne p1, v3, :cond_4

    goto :goto_3

    :cond_4
    move v8, v9

    :goto_3
    aput v8, v1, v2

    aput v10, v1, v3

    .line 1637
    invoke-static {v5, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v4, v3

    .line 1635
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1638
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xb4

    .line 1639
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1640
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    .line 1642
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1643
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    :goto_4
    return-void
.end method
