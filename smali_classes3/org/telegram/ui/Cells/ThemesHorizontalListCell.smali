.class public Lorg/telegram/ui/Cells/ThemesHorizontalListCell;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "ThemesHorizontalListCell.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;,
        Lorg/telegram/ui/Cells/ThemesHorizontalListCell$ThemesListAdapter;
    }
.end annotation


# static fields
.field public static bytes:[B


# instance fields
.field private adapter:Lorg/telegram/ui/Cells/ThemesHorizontalListCell$ThemesListAdapter;

.field private currentType:I

.field private customThemes:Ljava/util/ArrayList;
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

.field private drawDivider:Z

.field private horizontalLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private loadingThemes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private loadingWallpapers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prevCount:I

.field private prevThemeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;


# direct methods
.method public static synthetic $r8$lambda$-82WOISeRSyIxQTVVyudO__7Juo(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->lambda$didReceivedNotification$3(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HFYg0x2tMqdiGnWTV4i3i3S12X8(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->lambda$didReceivedNotification$2(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IfKgX01UbtcApEBc2Je_0we27LM(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->lambda$new$1(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fUgCnz-BWyIo5ZQtd0exNBVnn5Y(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 67
    sput-object v0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->bytes:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;",
            ">;)V"
        }
    .end annotation

    .line 687
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->loadingThemes:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->loadingWallpapers:Ljava/util/HashMap;

    .line 689
    iput-object p4, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->customThemes:Ljava/util/ArrayList;

    .line 690
    iput-object p3, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->defaultThemes:Ljava/util/ArrayList;

    .line 691
    iput p2, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->currentType:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    const-string p2, "dialogBackground"

    .line 694
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const-string p2, "windowBackgroundWhite"

    .line 696
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->setBackgroundColor(I)V

    :goto_0
    const/4 p2, 0x0

    .line 698
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 699
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 700
    new-instance p2, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$1;-><init>(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->horizontalLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p2, 0x0

    .line 706
    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 707
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 708
    iget-object p3, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->horizontalLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 709
    iget-object p2, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->horizontalLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 710
    new-instance p2, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$ThemesListAdapter;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$ThemesListAdapter;-><init>(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->adapter:Lorg/telegram/ui/Cells/ThemesHorizontalListCell$ThemesListAdapter;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 711
    new-instance p1, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 721
    new-instance p1, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;)Ljava/util/ArrayList;
    .locals 0

    .line 65
    iget-object p0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->defaultThemes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;)Ljava/util/ArrayList;
    .locals 0

    .line 65
    iget-object p0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->customThemes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;I)I
    .locals 0

    .line 65
    iput p1, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->prevCount:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;)I
    .locals 0

    .line 65
    iget p0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->currentType:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;)Ljava/util/HashMap;
    .locals 0

    .line 65
    iget-object p0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->loadingWallpapers:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;)Ljava/util/HashMap;
    .locals 0

    .line 65
    iget-object p0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->loadingThemes:Ljava/util/HashMap;

    return-object p0
.end method

.method private checkVisibleTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 5

    .line 849
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 851
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 852
    instance-of v3, v2, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;

    if-eqz v3, :cond_0

    .line 853
    check-cast v2, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;

    .line 854
    invoke-static {v2}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;->access$600(Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 855
    invoke-static {v2}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;->access$700(Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 856
    invoke-static {v2}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;->access$600(Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeLoaded:Z

    .line 857
    invoke-static {v2}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;->access$800(Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$2(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    .line 836
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->checkVisibleTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$3(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Ljava/io/File;)V
    .locals 1

    .line 835
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToWallpaper:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->createBackground(Ljava/io/File;Ljava/lang/String;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->badWallpaper:Z

    .line 836
    new-instance p2, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 1

    .line 712
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;

    invoke-static {p2}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;->access$600(Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->selectTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    .line 713
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    .line 714
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    const/4 v0, 0x0

    if-gez p2, :cond_0

    const/16 p1, 0x8

    .line 716
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 717
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    if-le p1, p2, :cond_1

    .line 718
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)Z
    .locals 0

    .line 722
    check-cast p1, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;

    .line 723
    invoke-static {p1}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;->access$600(Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->showOptionsForTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 827
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 828
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x1

    .line 829
    aget-object p2, p3, p2

    check-cast p2, Ljava/io/File;

    .line 830
    iget-object p3, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->loadingThemes:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-eqz p3, :cond_2

    .line 832
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->loadingThemes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    iget-object p1, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->loadingWallpapers:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 834
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p2}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/ThemesHorizontalListCell;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 839
    :cond_0
    invoke-direct {p0, p3}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->checkVisibleTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    goto :goto_0

    .line 842
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-ne p1, p2, :cond_2

    .line 843
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 844
    iget-object p2, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->loadingThemes:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyDataSetChanged(I)V
    .locals 2

    .line 775
    iget v0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->prevCount:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->adapter:Lorg/telegram/ui/Cells/ThemesHorizontalListCell$ThemesListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$ThemesListAdapter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 778
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->adapter:Lorg/telegram/ui/Cells/ThemesHorizontalListCell$ThemesListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 779
    iget v0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->currentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 780
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->prevThemeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-eq v1, v0, :cond_2

    const/4 v0, 0x0

    .line 781
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->scrollToCurrentTheme(IZ)V

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 809
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onAttachedToWindow()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 811
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 812
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 818
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 820
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 821
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 795
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 796
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->drawDivider:Z

    if-eqz v0, :cond_2

    .line 797
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x14

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    move v3, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 787
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 790
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    return-void
.end method

.method public scrollToCurrentTheme(IZ)V
    .locals 2

    if-nez p1, :cond_0

    .line 866
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 874
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->currentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->prevThemeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 875
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->defaultThemes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    .line 877
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->customThemes:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->prevThemeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->defaultThemes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-gez v0, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_4

    .line 883
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_1

    .line 885
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->horizontalLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/16 v1, 0x4c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_1
    return-void
.end method

.method public selectTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 7

    .line 729
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 730
    iget-boolean v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeLoaded:Z

    if-nez v3, :cond_0

    return-void

    .line 733
    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_1

    .line 734
    new-instance v0, Lorg/telegram/ui/ThemeSetUrlActivity;

    invoke-direct {v0, p1, v1, v2}, Lorg/telegram/ui/ThemeSetUrlActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 738
    :cond_1
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 739
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->createLoader(Z)V

    .line 742
    :cond_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "themeconfig"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 743
    iget v4, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->currentType:I

    if-eq v4, v2, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v4, "lastDayTheme"

    goto :goto_1

    :cond_4
    :goto_0
    const-string v4, "lastDarkTheme"

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 744
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 746
    iget v0, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->currentType:I

    if-ne v0, v2, :cond_6

    .line 747
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    if-ne p1, v0, :cond_5

    return-void

    .line 750
    :cond_5
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->setCurrentNightTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    goto :goto_2

    .line 752
    :cond_6
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-void

    .line 755
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->themeChanged:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 756
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v5, v2

    const/4 v2, 0x2

    aput-object v1, v5, v2

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 758
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->updateRows()V

    .line 760
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_3
    if-ge v3, v0, :cond_9

    .line 762
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 763
    instance-of v2, v1, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;

    if-eqz v2, :cond_8

    .line 764
    check-cast v1, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView;->updateCurrentThemeCheck()V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 767
    :cond_9
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->saveCustomTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;I)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 803
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 804
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void
.end method

.method public setDrawDivider(Z)V
    .locals 0

    .line 771
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->drawDivider:Z

    return-void
.end method

.method protected showOptionsForTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    return-void
.end method

.method protected updateRows()V
    .locals 0

    return-void
.end method
