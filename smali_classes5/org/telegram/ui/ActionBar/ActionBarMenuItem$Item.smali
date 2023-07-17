.class public Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public dismiss:Z

.field public icon:I

.field private iconColor:Ljava/lang/Integer;

.field public iconDrawable:Landroid/graphics/drawable/Drawable;

.field public id:I

.field public needCheck:Z

.field private overrideClickListener:Landroid/view/View$OnClickListener;

.field private rightIconVisibility:I

.field public text:Ljava/lang/CharSequence;

.field private textColor:Ljava/lang/Integer;

.field private view:Landroid/view/View;

.field public viewToSwipeBack:Landroid/view/View;

.field public viewType:I

.field private visibility:I


# direct methods
.method public static synthetic $r8$lambda$6SCP8cchGojbcgY7nt4GwBbI4Yw(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->lambda$add$1(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$flYmdBmN1VSvyLdCnAnYJwesCgo(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->lambda$add$0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pONE2wM9BAw4TUCCvuSR48vdGEs(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->lambda$add$2(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 2238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2234
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->visibility:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    .line 2239
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->viewType:I

    return-void
.end method

.method static synthetic access$2700(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 0

    .line 2222
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->asSwipeBackItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 0

    .line 2222
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->asSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900()Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 1

    .line 2222
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->asColoredGap()Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;
    .locals 0

    .line 2222
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->add(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private add(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;
    .locals 13

    .line 2265
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2100(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    .line 2266
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2267
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2268
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->viewType:I

    const/4 v1, 0x5

    const/16 v2, 0x30

    const/16 v3, 0xc4

    const/4 v4, -0x1

    if-nez v0, :cond_3

    .line 2269
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->needCheck:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2200(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2270
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    iget v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 2271
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 2272
    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2273
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 2274
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 2275
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    .line 2276
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2278
    :cond_1
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2279
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2280
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2281
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2297
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textColor:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 2298
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2300
    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x1

    if-ne v0, v5, :cond_4

    .line 2302
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2200(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 2303
    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 2304
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2305
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x2

    if-ne v0, v6, :cond_7

    .line 2307
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2200(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2308
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    iget v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 2309
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 2310
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 2311
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v3

    iget v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2312
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 2313
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 2314
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_5

    .line 2315
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2317
    :cond_5
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2318
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2319
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2320
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->viewToSwipeBack:Landroid/view/View;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v1

    .line 2321
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBackLayout:Ljava/lang/Runnable;

    .line 2326
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2329
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    iput-boolean v5, p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    .line 2330
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textColor:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 2331
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2333
    :cond_6
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    .line 2335
    :cond_7
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 2336
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->visibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2337
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->overrideClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_8

    .line 2338
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2341
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    return-object p1
.end method

.method private static asColoredGap()Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 2

    .line 2253
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;-><init>(I)V

    return-object v0
.end method

.method private static asSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 2

    .line 2243
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;-><init>(I)V

    .line 2244
    iput p0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->id:I

    .line 2245
    iput p1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    .line 2246
    iput-object p2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2247
    iput-object p3, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    .line 2248
    iput-boolean p4, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->dismiss:Z

    .line 2249
    iput-boolean p5, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->needCheck:Z

    return-object v0
.end method

.method private static asSwipeBackItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 2

    .line 2256
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;-><init>(I)V

    .line 2257
    iput p0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    .line 2258
    iput-object p1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2259
    iput-object p2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    .line 2260
    iput-object p3, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->viewToSwipeBack:Landroid/view/View;

    return-object v0
.end method

.method private synthetic lambda$add$0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 2

    .line 2282
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2300(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2300(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2283
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->dismiss:Z

    if-eqz v0, :cond_1

    .line 2284
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2400(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2287
    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2402(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Z)Z

    .line 2288
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2300(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2500(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    .line 2291
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$1600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2292
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$1600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    goto :goto_0

    .line 2293
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2294
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$2600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;->onItemClick(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$add$1(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V
    .locals 1

    .line 2322
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2323
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$add$2(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    .line 2327
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBack()V

    return-void
.end method


# virtual methods
.method public openSwipeBack()V
    .locals 2

    .line 2359
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_0

    .line 2360
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBack()V

    :cond_0
    return-void
.end method

.method public setColors(II)V
    .locals 2

    .line 2390
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 2391
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textColor:Ljava/lang/Integer;

    .line 2392
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    .line 2393
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_1

    .line 2394
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :cond_1
    return-void
.end method

.method public setIcon(I)V
    .locals 2

    .line 2372
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    if-eq p1, v0, :cond_0

    .line 2373
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    .line 2374
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_0

    .line 2375
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(I)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 2352
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->overrideClickListener:Landroid/view/View$OnClickListener;

    .line 2353
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2354
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setRightIconVisibility(I)V
    .locals 1

    .line 2381
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    if-eq v0, p1, :cond_0

    .line 2382
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    .line 2383
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_0

    .line 2384
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 2365
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    .line 2366
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_0

    .line 2367
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 2345
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->visibility:I

    .line 2346
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2347
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
