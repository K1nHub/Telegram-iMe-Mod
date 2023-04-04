.class public final Lcom/iMe/fork/ui/view/SocialNetworksRowView;
.super Landroid/widget/LinearLayout;
.source "SocialNetworksRowView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/view/SocialNetworksRowView$Companion;,
        Lcom/iMe/fork/ui/view/SocialNetworksRowView$OnSocialNetworkClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSocialNetworksRowView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SocialNetworksRowView.kt\ncom/iMe/fork/ui/view/SocialNetworksRowView\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,58:1\n13579#2,2:59\n*S KotlinDebug\n*F\n+ 1 SocialNetworksRowView.kt\ncom/iMe/fork/ui/view/SocialNetworksRowView\n*L\n23#1:59,2\n*E\n"
.end annotation


# instance fields
.field private listener:Lcom/iMe/fork/ui/view/SocialNetworksRowView$OnSocialNetworkClickListener;


# direct methods
.method public static synthetic $r8$lambda$ErvqN3ksIs16zUaXG6frimDuvHw(Lcom/iMe/fork/ui/view/SocialNetworksRowView;Lcom/iMe/fork/enums/DrawerSocialNetwork;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/view/SocialNetworksRowView;->lambda$4$lambda$2$lambda$1(Lcom/iMe/fork/ui/view/SocialNetworksRowView;Lcom/iMe/fork/enums/DrawerSocialNetwork;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_KFnZ54P2u2suzYZYUGBZjMaV0w(Lcom/iMe/fork/ui/view/SocialNetworksRowView;Lcom/iMe/fork/enums/DrawerSocialNetwork;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/view/SocialNetworksRowView;->lambda$4$lambda$2$lambda$0(Lcom/iMe/fork/ui/view/SocialNetworksRowView;Lcom/iMe/fork/enums/DrawerSocialNetwork;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/view/SocialNetworksRowView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/SocialNetworksRowView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 23
    invoke-static {}, Lcom/iMe/fork/enums/DrawerSocialNetwork;->values()[Lcom/iMe/fork/enums/DrawerSocialNetwork;

    move-result-object v1

    .line 13579
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 24
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v6, "listSelectorSDK21"

    .line 25
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    new-instance v6, Lcom/iMe/fork/ui/view/SocialNetworksRowView$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v4}, Lcom/iMe/fork/ui/view/SocialNetworksRowView$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/view/SocialNetworksRowView;Lcom/iMe/fork/enums/DrawerSocialNetwork;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    new-instance v6, Lcom/iMe/fork/ui/view/SocialNetworksRowView$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v4}, Lcom/iMe/fork/ui/view/SocialNetworksRowView$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/view/SocialNetworksRowView;Lcom/iMe/fork/enums/DrawerSocialNetwork;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 32
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 34
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    const-string v8, "chats_menuItemIcon"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 35
    invoke-virtual {v4}, Lcom/iMe/fork/enums/DrawerSocialNetwork;->getIconResId()I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v4, 0x11

    const/4 v7, -0x2

    .line 37
    invoke-static {v7, v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 38
    invoke-static {v0, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final lambda$4$lambda$2$lambda$0(Lcom/iMe/fork/ui/view/SocialNetworksRowView;Lcom/iMe/fork/enums/DrawerSocialNetwork;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$network"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p0, p0, Lcom/iMe/fork/ui/view/SocialNetworksRowView;->listener:Lcom/iMe/fork/ui/view/SocialNetworksRowView$OnSocialNetworkClickListener;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/iMe/fork/ui/view/SocialNetworksRowView$OnSocialNetworkClickListener;->onSocialNetworkClick(Lcom/iMe/fork/enums/DrawerSocialNetwork;Z)V

    :cond_0
    return-void
.end method

.method private static final lambda$4$lambda$2$lambda$1(Lcom/iMe/fork/ui/view/SocialNetworksRowView;Lcom/iMe/fork/enums/DrawerSocialNetwork;Landroid/view/View;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$network"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Lcom/iMe/fork/ui/view/SocialNetworksRowView;->listener:Lcom/iMe/fork/ui/view/SocialNetworksRowView$OnSocialNetworkClickListener;

    const/4 p2, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/iMe/fork/ui/view/SocialNetworksRowView$OnSocialNetworkClickListener;->onSocialNetworkClick(Lcom/iMe/fork/enums/DrawerSocialNetwork;Z)V

    :cond_0
    return p2
.end method


# virtual methods
.method public final getListener()Lcom/iMe/fork/ui/view/SocialNetworksRowView$OnSocialNetworkClickListener;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/fork/ui/view/SocialNetworksRowView;->listener:Lcom/iMe/fork/ui/view/SocialNetworksRowView$OnSocialNetworkClickListener;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final setListener(Lcom/iMe/fork/ui/view/SocialNetworksRowView$OnSocialNetworkClickListener;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/iMe/fork/ui/view/SocialNetworksRowView;->listener:Lcom/iMe/fork/ui/view/SocialNetworksRowView$OnSocialNetworkClickListener;

    return-void
.end method
