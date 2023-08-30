.class public Lorg/telegram/ui/Stories/recorder/DownloadButton;
.super Landroid/widget/ImageView;
.source "DownloadButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;,
        Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;
    }
.end annotation


# instance fields
.field private buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

.field private container:Landroid/widget/FrameLayout;

.field private currentAccount:I

.field private currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field private downloading:Z

.field private downloadingVideo:Z

.field private prepare:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private preparing:Z

.field private progressDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private savedToGalleryUri:Landroid/net/Uri;

.field private toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

.field private wasImageDownloading:Z

.field private wasVideoDownloading:Z


# direct methods
.method public static synthetic $r8$lambda$-o4u-iO_5FUKx4gjpoO9ndd91kU(Lorg/telegram/ui/Stories/recorder/DownloadButton;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$7(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4vnmMfpq0wnYG1JZURSktcJBntY(Lorg/telegram/ui/Stories/recorder/DownloadButton;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$8(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5R_J9RqTDaqZemMNiFRg-TNTQcg(Lorg/telegram/ui/Stories/recorder/DownloadButton;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$3(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6QL4jZnfY_GrbS88oqTErka-Guw(Lorg/telegram/ui/Stories/recorder/DownloadButton;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$6(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$85e9dVUYMV-6kZyAyU8VCR2Q4aY(Lorg/telegram/ui/Stories/recorder/DownloadButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Aa1jKxSHTxAs4miFhJXE4iwni8M(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClick$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$HPC3yeTFvKN1PfGzuYj43fnQV_M(Lorg/telegram/ui/Stories/recorder/DownloadButton;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$2(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ItNUIIBNb5w1pQfhIQgaqnBQMns(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->onClickInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$mgWvvgzTufV0bRXHKJThC-91tzc(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$xeVyU8FHifIEAC3ItiQoo8g5FM0(Lorg/telegram/ui/Stories/recorder/DownloadButton;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$4(Ljava/lang/Float;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/Utilities$Callback;ILandroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Runnable;",
            ">;I",
            "Landroid/widget/FrameLayout;",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 242
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->wasImageDownloading:Z

    .line 243
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->wasVideoDownloading:Z

    .line 70
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->prepare:Lorg/telegram/messenger/Utilities$Callback;

    .line 71
    iput p3, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentAccount:I

    .line 72
    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->container:Landroid/widget/FrameLayout;

    .line 73
    iput-object p5, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 75
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const p1, 0x20ffffff

    .line 77
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x8

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 81
    new-instance p1, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance p1, Lorg/telegram/ui/Components/CircularProgressDrawable;

    const/16 p2, 0x12

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    const/4 p4, 0x2

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    invoke-direct {p1, p2, p4, p3}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(FFI)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->progressDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    .line 85
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->onClick()V

    return-void
.end method

.method private synthetic lambda$onClick$1()V
    .locals 3

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->preparing:Z

    .line 153
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 154
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->stop(Z)V

    const/4 v1, 0x0

    .line 155
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    .line 157
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->hide()V

    .line 160
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    .line 161
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    return-void
.end method

.method private synthetic lambda$onClickInternal$2(Landroid/net/Uri;)V
    .locals 4

    .line 188
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    sget v1, Lorg/telegram/messenger/R$raw;->ic_save_to_gallery:I

    const-string v2, "VideoSavedHint"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setDone(ILjava/lang/CharSequence;I)V

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    .line 193
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    .line 195
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onClickInternal$3(Ljava/io/File;)V
    .locals 8

    .line 184
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onClickInternal$4(Ljava/lang/Float;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setProgress(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onClickInternal$5()V
    .locals 4

    .line 202
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    const-string v2, "VideoConvertFail"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setDone(ILjava/lang/CharSequence;I)V

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    .line 207
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onClickInternal$6(Landroid/net/Uri;)V
    .locals 4

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    .line 225
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->hide()V

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    .line 230
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    .line 231
    sget v1, Lorg/telegram/messenger/R$raw;->ic_save_to_gallery:I

    const-string v2, "PhotoSavedHint"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setDone(ILjava/lang/CharSequence;I)V

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 234
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    return-void
.end method

.method private synthetic lambda$onClickInternal$7(Ljava/io/File;)V
    .locals 7

    .line 223
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Z)V

    return-void
.end method

.method private synthetic lambda$onClickInternal$8(Ljava/io/File;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->buildPhoto(Ljava/io/File;)V

    .line 219
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;Ljava/io/File;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onClick()V
    .locals 3

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x71

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    return-void

    .line 118
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v1, :cond_3

    goto/16 :goto_3

    .line 121
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4

    .line 123
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    .line 124
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    const/16 v1, 0x1d

    if-ge v0, v1, :cond_5

    .line 127
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 129
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 131
    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    .line 136
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v1, :cond_6

    .line 137
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->hide()V

    .line 138
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    .line 140
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    if-eqz v1, :cond_7

    .line 141
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->stop(Z)V

    .line 142
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    .line 144
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->prepare:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v1, :cond_8

    .line 145
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->preparing:Z

    .line 146
    new-instance v2, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    invoke-interface {v1, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 148
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 149
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloadingVideo:Z

    .line 150
    new-instance v1, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    .line 151
    new-instance v2, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setOnCancelListener(Ljava/lang/Runnable;)V

    .line 163
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->container:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    .line 165
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloadingVideo:Z

    .line 167
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    .line 168
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->prepare:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v1, :cond_a

    .line 169
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->preparing:Z

    .line 170
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    invoke-interface {v1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_3

    .line 172
    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->onClickInternal()V

    :cond_b
    :goto_3
    return-void
.end method

.method private onClickInternal()V
    .locals 9

    .line 177
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->preparing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 180
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->preparing:Z

    .line 181
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath()Ljava/io/File;

    move-result-object v5

    .line 183
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentAccount:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    new-instance v6, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, v5}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;Ljava/io/File;)V

    new-instance v7, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda9;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    new-instance v8, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;-><init>(ILorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/io/File;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    goto :goto_0

    :cond_1
    const-string v0, "png"

    .line 210
    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath(ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    sget v2, Lorg/telegram/messenger/R$raw;->error:I

    const-string v3, "UnknownError"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xdac

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setDone(ILjava/lang/CharSequence;I)V

    .line 213
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    .line 214
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    return-void

    .line 217
    :cond_2
    sget-object v1, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 239
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateImage()V
    .locals 5

    .line 246
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->wasImageDownloading:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloadingVideo:Z

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eq v0, v4, :cond_3

    if-eqz v1, :cond_1

    .line 247
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloadingVideo:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->wasImageDownloading:Z

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->progressDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 250
    :cond_2
    sget v0, Lorg/telegram/messenger/R$drawable;->media_download:I

    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    .line 253
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->wasVideoDownloading:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloadingVideo:Z

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    if-eq v0, v1, :cond_7

    .line 254
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 255
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloadingVideo:Z

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->wasVideoDownloading:Z

    if-eqz v2, :cond_6

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_5

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    return-void
.end method


# virtual methods
.method public setEntry(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 3

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    .line 94
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 95
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 96
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->stop(Z)V

    .line 97
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    .line 99
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->hide()V

    .line 101
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    .line 105
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    :cond_2
    return-void
.end method

.method public showFailedVideo()V
    .locals 2

    .line 270
    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    const-string v1, "VideoConvertFail"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->showToast(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public showToast(ILjava/lang/CharSequence;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->hide()V

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    .line 264
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    const/16 v1, 0xdac

    .line 265
    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setDone(ILjava/lang/CharSequence;I)V

    .line 266
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->container:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
