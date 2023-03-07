.class Lorg/telegram/ui/ThemePreviewActivity$5;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 12

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 564
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$1900(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 565
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2000(Lorg/telegram/ui/ThemePreviewActivity;Z)V

    goto/16 :goto_6

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt p1, v3, :cond_1

    if-gt p1, v2, :cond_1

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2100(Lorg/telegram/ui/ThemePreviewActivity;I)V

    goto/16 :goto_6

    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_9

    .line 570
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2200(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 571
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->resetCustomWallpaper(Z)V

    .line 573
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->getPathToWallpaper()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 575
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 577
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemePreviewActivity;->access$2400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemePreviewActivity;->access$2400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v5, ""

    :goto_0
    iput-object v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    .line 578
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemePreviewActivity;->access$2500(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v5

    iput v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    .line 579
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemePreviewActivity;->access$2600(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v5

    iput-boolean v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternMotion:Z

    .line 580
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iget-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int p1, v5

    const-wide v5, 0x100000000L

    if-nez p1, :cond_5

    .line 581
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iput-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    .line 583
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iget-wide v7, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int p1, v7

    if-nez p1, :cond_6

    .line 584
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iput-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    .line 586
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iget-wide v7, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int p1, v7

    if-nez p1, :cond_7

    .line 587
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iput-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    .line 589
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iget-wide v7, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int p1, v7

    if-nez p1, :cond_8

    .line 590
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iput-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    .line 592
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2700(Lorg/telegram/ui/ThemePreviewActivity;)V

    .line 593
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    sget v6, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    invoke-virtual {p1, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 594
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2800(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-static {p1, v3, v1, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->saveThemeAccents(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZZ)V

    .line 595
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyPreviousTheme()V

    .line 596
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v5, Lorg/telegram/messenger/NotificationCenter;->themeChanged:I

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 597
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v5, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemePreviewActivity;->access$2800(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v6

    aput-object v6, v4, v1

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2900(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v3

    const/4 v1, 0x2

    const/4 v3, 0x0

    aput-object v3, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {p1, v5, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 598
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_6

    :cond_9
    const/4 v0, 0x5

    if-ne p1, v0, :cond_14

    .line 600
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 604
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$3000(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "blur"

    .line 606
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$2600(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 609
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_c

    const-string v0, "+"

    .line 610
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string v0, "motion"

    .line 612
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$3100(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_f

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$3100(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$3200(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bg/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?mode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e
    :goto_1
    move-object v7, v0

    goto/16 :goto_5

    .line 620
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$3100(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz p1, :cond_11

    .line 621
    new-instance p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$2400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$2400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    goto :goto_2

    :cond_10
    const-string v0, "c"

    :goto_2
    move-object v3, v0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$3300(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$3400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$3500(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v6

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$3600(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$3700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v8

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$2500(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v9

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$2600(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v10

    const/4 v11, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;IIIIIFZLjava/io/File;)V

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$2400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 623
    invoke-virtual {p1}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 625
    :cond_11
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz p1, :cond_14

    .line 626
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 628
    new-instance v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iget-wide v4, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v4, v4

    iget-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v5, v5

    iget-wide v6, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v6, v6

    iget-wide v7, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v7, v7

    iget v8, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    iget v9, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iget-boolean v10, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternMotion:Z

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;IIIIIFZLjava/io/File;)V

    .line 629
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$3800(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_13

    .line 630
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemePreviewActivity;->access$3800(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 631
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v4, :cond_12

    .line 632
    iget-object v4, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 633
    iput-object v3, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    goto :goto_4

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 638
    :cond_13
    :goto_4
    invoke-virtual {v0}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 646
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$5$1;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v5, v7

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ThemePreviewActivity$5$1;-><init>(Lorg/telegram/ui/ThemePreviewActivity$5;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    nop

    :cond_14
    :goto_6
    return-void
.end method
