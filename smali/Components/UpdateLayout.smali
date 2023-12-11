.class public LComponents/UpdateLayout;
.super Lorg/telegram/ui/IUpdateLayout;
.source "UpdateLayout.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private dialogContainerView:Landroid/view/ViewGroup;

.field private isDialogMode:Z

.field private sideMenu:Landroid/view/ViewGroup;

.field private sideMenuContainer:Landroid/view/ViewGroup;

.field private updateLayout:Landroid/widget/FrameLayout;

.field private updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

.field private updateSizeTextView:Landroid/widget/TextView;

.field private updateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$-cotOj6v3MxU9Jx8yFAVW11P4xI(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, LComponents/UpdateLayout;->lambda$updateAppUpdateViews$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U664L6jYxVY2mcn5ik0h4OT4wOI(LComponents/UpdateLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, LComponents/UpdateLayout;->lambda$createUpdateUI$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ajJnjORRuyQvn7ec_3p-pPPbpYY(LComponents/UpdateLayout;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, LComponents/UpdateLayout;->lambda$createUpdateUI$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lcPqcUcMEx0i4akV2MAGeXz_wk8(LComponents/UpdateLayout;)V
    .locals 0

    invoke-direct {p0}, LComponents/UpdateLayout;->lambda$createUpdateUI$0()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/IUpdateLayout;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 83
    iput-object p1, p0, LComponents/UpdateLayout;->activity:Landroid/app/Activity;

    .line 84
    iput-object p2, p0, LComponents/UpdateLayout;->sideMenu:Landroid/view/ViewGroup;

    .line 85
    iput-object p3, p0, LComponents/UpdateLayout;->sideMenuContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(LComponents/UpdateLayout;)Lorg/telegram/ui/Components/RadialProgress2;
    .locals 0

    .line 39
    iget-object p0, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    return-object p0
.end method

.method static synthetic access$100(LComponents/UpdateLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 39
    iget-object p0, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private synthetic lambda$createUpdateUI$0()V
    .locals 4

    .line 174
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    iget-object v1, p0, LComponents/UpdateLayout;->activity:Landroid/app/Activity;

    sget-object v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/telegram/messenger/ApplicationLoader;->showUpdateAppPopup(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;ILorg/telegram/ui/IUpdateLayout;)Z

    return-void
.end method

.method private synthetic lambda$createUpdateUI$1(Landroid/view/View;)Z
    .locals 2

    .line 170
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 173
    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    .line 174
    new-instance p1, LComponents/UpdateLayout$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, LComponents/UpdateLayout$$ExternalSyntheticLambda2;-><init>(LComponents/UpdateLayout;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$createUpdateUI$2(Landroid/view/View;)V
    .locals 4

    .line 180
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAppUpdateAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 189
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateInProgress:Z

    .line 190
    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    .line 191
    invoke-static {v2}, Lorg/telegram/messenger/ApplicationLoader;->checkForUpdates(Z)V

    .line 192
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 200
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    .line 201
    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateInProgress:Z

    .line 202
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageLoader;->cancelLoadHttpFile(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 208
    :cond_2
    sget-object p1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    const-string v0, "apk"

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LComponents/UpdateLayout;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    :goto_0
    return-void
.end method

.method private static synthetic lambda$updateAppUpdateViews$3(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 320
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createUpdateUI(IZ)V
    .locals 11

    .line 104
    iget-object p1, p0, LComponents/UpdateLayout;->sideMenuContainer:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    iput-boolean p2, p0, LComponents/UpdateLayout;->isDialogMode:Z

    .line 108
    new-instance p1, LComponents/UpdateLayout$1;

    iget-object v0, p0, LComponents/UpdateLayout;->activity:Landroid/app/Activity;

    invoke-direct {p1, p0, v0, p2}, LComponents/UpdateLayout$1;-><init>(LComponents/UpdateLayout;Landroid/content/Context;Z)V

    iput-object p1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 153
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 p1, 0x2c

    if-nez p2, :cond_1

    .line 156
    iget-object v1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 157
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 158
    iget-object v1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    const v2, 0x40ffffff    # 7.9999995f

    invoke-static {v2, v0}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/16 v0, 0x53

    const/4 v1, -0x1

    if-eqz p2, :cond_3

    .line 162
    iget-object v2, p0, LComponents/UpdateLayout;->dialogContainerView:Landroid/view/ViewGroup;

    iget-object v3, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x32

    invoke-static {v1, v4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 164
    :cond_3
    iget-object v2, p0, LComponents/UpdateLayout;->sideMenuContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, p1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    if-eqz p2, :cond_4

    .line 167
    iget-object v4, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41b80000    # 23.0f

    const/4 v8, 0x0

    const/high16 v9, 0x41b80000    # 23.0f

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->addFrameParams(Landroid/view/View;IIFFFF)V

    goto :goto_1

    .line 169
    :cond_4
    iget-object v0, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    new-instance v2, LComponents/UpdateLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, LComponents/UpdateLayout$$ExternalSyntheticLambda1;-><init>(LComponents/UpdateLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 179
    :goto_1
    iget-object v0, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    new-instance v2, LComponents/UpdateLayout$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, LComponents/UpdateLayout$$ExternalSyntheticLambda0;-><init>(LComponents/UpdateLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v0, Lorg/telegram/ui/Components/RadialProgress2;

    iget-object v2, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;)V

    iput-object v0, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    .line 214
    invoke-virtual {v0, v1, v1, v1, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setColors(IIII)V

    .line 215
    iget-object v0, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    const/16 v2, 0x16

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0xb

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/16 v5, 0x21

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v2, v4, p1, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    const/4 p1, 0x3

    if-eqz p2, :cond_5

    .line 218
    iget-object p2, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 221
    :cond_5
    iget-object p2, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RadialProgress2;->setCircleRadius(I)V

    .line 222
    iget-object p2, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RadialProgress2;->setAsMini()V

    .line 224
    new-instance p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, LComponents/UpdateLayout;->activity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, LComponents/UpdateLayout;->updateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0xf

    .line 225
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 226
    iget-object p2, p0, LComponents/UpdateLayout;->updateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 227
    iget-object p2, p0, LComponents/UpdateLayout;->updateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v2, 0x7f110232

    const-string v3, "AppUpdate"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 228
    iget-object p2, p0, LComponents/UpdateLayout;->updateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 229
    iget-object p2, p0, LComponents/UpdateLayout;->updateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 230
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    iget-object p2, p0, LComponents/UpdateLayout;->updateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x10

    const/16 v5, 0x4a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, LComponents/UpdateLayout;->activity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    .line 233
    invoke-virtual {p1, p2, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 234
    iget-object p1, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 235
    iget-object p1, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 236
    iget-object p1, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    iget-object p2, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x11

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public moveToDialog(ILandroid/view/ViewGroup;)V
    .locals 0

    .line 54
    iput-object p2, p0, LComponents/UpdateLayout;->dialogContainerView:Landroid/view/ViewGroup;

    .line 55
    iget-object p2, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    const/4 p2, 0x1

    .line 56
    invoke-virtual {p0, p1, p2}, LComponents/UpdateLayout;->createUpdateUI(IZ)V

    const/4 p2, 0x0

    .line 57
    invoke-virtual {p0, p1, p2}, LComponents/UpdateLayout;->updateAppUpdateViews(IZ)V

    return-void
.end method

.method public moveToSideMenu(I)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, LComponents/UpdateLayout;->dialogContainerView:Landroid/view/ViewGroup;

    .line 63
    iget-object v0, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0}, LComponents/UpdateLayout;->createUpdateUI(IZ)V

    .line 65
    invoke-virtual {p0, p1, v0}, LComponents/UpdateLayout;->updateAppUpdateViews(IZ)V

    return-void
.end method

.method public updateAppUpdateViews(IZ)V
    .locals 12

    .line 241
    iget-object v0, p0, LComponents/UpdateLayout;->sideMenuContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAppUpdateAvailable()Z

    move-result v0

    const/16 v1, 0x2c

    const/4 v2, 0x0

    const-wide/16 v3, 0xb4

    const/4 v5, 0x0

    if-eqz v0, :cond_f

    .line 245
    iget-object v0, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    .line 247
    iget-boolean v6, p0, LComponents/UpdateLayout;->isDialogMode:Z

    if-nez v6, :cond_1

    .line 248
    invoke-virtual {p0, p1, v5}, LComponents/UpdateLayout;->createUpdateUI(IZ)V

    .line 249
    :cond_1
    iget-object p1, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    sget-object v6, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    sget-object p1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    const-string v6, "apk"

    .line 256
    invoke-static {p1, v6}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 259
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 260
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    const/16 v6, 0xf

    invoke-virtual {p1, v6, v7, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 261
    iget-object p1, p0, LComponents/UpdateLayout;->updateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v6, 0x7f110236

    const-string v9, "AppUpdateNow"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :goto_0
    move p1, v5

    goto/16 :goto_3

    .line 265
    :cond_2
    sget-boolean v6, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateInProgress:Z

    const/4 v9, 0x3

    if-eqz v6, :cond_3

    .line 266
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v9, v7, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 267
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {p1, v6, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 268
    iget-object p1, p0, LComponents/UpdateLayout;->updateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v6, 0x7f110732

    const-string v9, "Checking"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 271
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/telegram/messenger/ImageLoader;->isLoadingHttpFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 272
    iget-object v6, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v6, v9, v7, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 273
    iget-object v6, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v6, v8, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 274
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    .line 275
    iget-object v6, p0, LComponents/UpdateLayout;->updateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v9, 0x7f110235

    new-array v10, v7, [Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_1

    :cond_4
    move p1, v8

    :goto_1
    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr p1, v11

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v10, v5

    const-string p1, "AppUpdateDownloading"

    invoke-static {p1, v9, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 278
    :cond_5
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v6, 0x2

    invoke-virtual {p1, v6, v7, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 279
    iget-object p1, p0, LComponents/UpdateLayout;->updateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v6, p0, LComponents/UpdateLayout;->isDialogMode:Z

    if-eqz v6, :cond_6

    const v6, 0x7f11000c

    const-string v9, "AccActionDownload"

    goto :goto_2

    :cond_6
    const v6, 0x7f110232

    const-string v9, "AppUpdate"

    :goto_2
    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    move p1, v7

    :goto_3
    if-eqz p1, :cond_8

    .line 284
    iget-object p1, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_7

    .line 286
    iget-object v6, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 287
    iget-object v6, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    .line 289
    :cond_7
    iget-object v6, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 290
    iget-object v6, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 291
    iget-object v6, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_4

    .line 295
    :cond_8
    iget-object p1, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a

    if-eqz p2, :cond_9

    .line 297
    iget-object p1, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 298
    iget-object p1, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    .line 300
    :cond_9
    iget-object p1, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 301
    iget-object p1, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setScaleX(F)V

    .line 302
    iget-object p1, p0, LComponents/UpdateLayout;->updateSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setScaleY(F)V

    .line 306
    :cond_a
    :goto_4
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    return-void

    .line 309
    :cond_b
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 311
    iget-boolean p1, p0, LComponents/UpdateLayout;->isDialogMode:Z

    if-eqz p1, :cond_c

    return-void

    .line 315
    :cond_c
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    if-eqz p2, :cond_d

    .line 317
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, LComponents/UpdateLayout$$ExternalSyntheticLambda3;

    invoke-direct {p2, v0}, LComponents/UpdateLayout$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    .line 324
    :cond_d
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    if-eqz v0, :cond_e

    .line 326
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 327
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 330
    :cond_e
    :goto_5
    iget-object p1, p0, LComponents/UpdateLayout;->sideMenu:Landroid/view/ViewGroup;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, v5, v5, v5, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_7

    .line 332
    :cond_f
    iget-boolean p1, p0, LComponents/UpdateLayout;->isDialogMode:Z

    if-nez p1, :cond_12

    iget-object p1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_7

    .line 335
    :cond_10
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    if-eqz p2, :cond_11

    .line 337
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, LComponents/UpdateLayout$2;

    invoke-direct {p2, p0}, LComponents/UpdateLayout$2;-><init>(LComponents/UpdateLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 344
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_6

    .line 346
    :cond_11
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 347
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayout:Landroid/widget/FrameLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 349
    :goto_6
    iget-object p1, p0, LComponents/UpdateLayout;->sideMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_12
    :goto_7
    return-void
.end method

.method public updateFileProgress([Ljava/lang/Object;)V
    .locals 5

    .line 89
    iget-object v0, p0, LComponents/UpdateLayout;->updateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAppUpdateAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 90
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/String;

    .line 92
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 94
    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x2

    .line 95
    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Long;

    .line 96
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float p1, v3

    div-float/2addr v2, p1

    .line 97
    iget-object p1, p0, LComponents/UpdateLayout;->updateLayoutIcon:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 98
    iget-object p1, p0, LComponents/UpdateLayout;->updateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v3, 0x7f110235

    new-array v1, v1, [Ljava/lang/Object;

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "AppUpdateDownloading"

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :cond_0
    return-void
.end method
