.class Lorg/telegram/ui/ArticleViewer$15;
.super Lorg/telegram/ui/Components/CloseProgressDrawable2;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 3569
    invoke-direct {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCurrentColor()I
    .locals 1

    const-string v0, "windowBackgroundWhiteBlackText"

    .line 3572
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
