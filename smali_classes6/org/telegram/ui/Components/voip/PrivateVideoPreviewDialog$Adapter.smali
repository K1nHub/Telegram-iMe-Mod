.class Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$Adapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "PrivateVideoPreviewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$Adapter;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;)V
    .locals 0

    .line 502
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$Adapter;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 559
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$Adapter;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$700(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)[Landroid/widget/TextView;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 11

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$Adapter;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 512
    new-instance p2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$Adapter;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 513
    new-instance v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const v4, -0xded1c6

    const v5, -0xd4a4b3

    const v6, -0xdba79d

    const v7, -0xd8baa8

    const/4 v8, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIZ)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 516
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$Adapter;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 517
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 518
    sget v3, Lorg/telegram/messenger/R$drawable;->screencast_big:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v4, 0x52

    const/16 v5, 0x52

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3c

    .line 519
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$Adapter;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 522
    sget v3, Lorg/telegram/messenger/R$string;->VoipVideoPrivateScreenSharing:I

    const-string v4, "VoipVideoPrivateScreenSharing"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    .line 523
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 524
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/4 v1, -0x1

    .line 525
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 526
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "fonts/rmedium.ttf"

    .line 527
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x11

    const/16 v5, 0x15

    const/16 v6, 0x1c

    const/16 v7, 0x15

    .line 528
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 530
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$Adapter;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 531
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 535
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cthumb"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    if-ne p2, v2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$Adapter;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {p2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".jpg"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, v5, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 536
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    if-eqz v3, :cond_3

    .line 541
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 543
    :cond_3
    sget p2, Lorg/telegram/messenger/R$drawable;->icplaceholder:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 546
    :goto_0
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object p2, v0

    .line 549
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 550
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 551
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    const/4 v0, 0x0

    .line 553
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 569
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 564
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 584
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
