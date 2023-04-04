.class Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;
.super Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;
.source "CacheControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CacheControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearCacheButtonInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;


# direct methods
.method public static synthetic $r8$lambda$-den1wkdxNHc9mAo9NyBFjBoZIE(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;[F[Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->lambda$new$0(Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;[F[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$4pIYF-3H9PhBIDDxMkuFYx62tck([F[ZLjava/lang/Runnable;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->lambda$new$2([F[ZLjava/lang/Runnable;Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MrUzQdmSGmaUIsTGVRgDN1iwcHQ([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->lambda$new$3([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$haL-BgVjzVUriUrKWWFm2WsWvL8(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;[ZLorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->lambda$new$1([ZLorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$inc9wJiv4cBWeI-HU5NqytFztw4(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r_2DC4ytNUDQRVDz3S0Yfz74qQw([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->lambda$new$4([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V
    .locals 0

    .line 1905
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    .line 1906
    invoke-direct {p0, p2}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;-><init>(Landroid/content/Context;)V

    .line 1907
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p2, 0x5

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1908
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    new-instance p2, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;[F[Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1925
    aget p2, p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;->setProgress(F)V

    .line 1926
    aget-boolean p1, p3, v0

    if-eqz p1, :cond_0

    .line 1927
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$3100(Lorg/telegram/ui/CacheControlActivity;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1([ZLorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1932
    aget-boolean p1, p1, v0

    if-nez p1, :cond_0

    .line 1933
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$2([F[ZLjava/lang/Runnable;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 1

    .line 1939
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v0, 0x0

    aput p3, p0, v0

    .line 1940
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    aput-boolean p0, p1, v0

    .line 1941
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1942
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$new$3([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1945
    aput-boolean v1, p0, v0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1946
    invoke-virtual {p1, p0}, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;->setProgress(F)V

    .line 1947
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$new$4([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 1

    .line 1944
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda3;-><init>([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 8

    .line 1909
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$1;-><init>(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;Landroid/content/Context;Z)V

    .line 1915
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 1916
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    .line 1917
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1918
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    .line 1919
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    const/4 v2, 0x1

    new-array v3, v2, [Z

    aput-boolean v1, v3, v1

    new-array v4, v2, [F

    const/4 v5, 0x0

    aput v5, v4, v1

    new-array v2, v2, [Z

    aput-boolean v1, v2, v1

    .line 1924
    new-instance v1, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, v4, v2}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;[F[Z)V

    .line 1931
    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3, p1}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;[ZLorg/telegram/ui/ActionBar/BottomSheet;)V

    const-wide/16 v6, 0x96

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1937
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    new-instance v6, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda5;

    invoke-direct {v6, v4, v2, v1}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda5;-><init>([F[ZLjava/lang/Runnable;)V

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda4;

    invoke-direct {v1, v3, v0, p1}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda4;-><init>([ZLorg/telegram/ui/CacheControlActivity$ClearingCacheView;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-static {v5, v6, v1}, Lorg/telegram/ui/CacheControlActivity;->access$3000(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public updateSize()V
    .locals 7

    .line 1955
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2100(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 1956
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x1

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2200(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v1

    :goto_1
    add-long/2addr v3, v5

    .line 1957
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x2

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_2

    :cond_2
    move-wide v5, v1

    :goto_2
    add-long/2addr v3, v5

    .line 1958
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x3

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2400(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_3

    :cond_3
    move-wide v5, v1

    :goto_3
    add-long/2addr v3, v5

    .line 1959
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x4

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2500(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_4

    :cond_4
    move-wide v5, v1

    :goto_4
    add-long/2addr v3, v5

    .line 1960
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x5

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2600(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_5

    :cond_5
    move-wide v5, v1

    :goto_5
    add-long/2addr v3, v5

    .line 1961
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x6

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2700(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v5

    goto :goto_6

    :cond_6
    move-wide v5, v1

    :goto_6
    add-long/2addr v3, v5

    .line 1962
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v0

    const/4 v5, 0x7

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2800(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v1

    :cond_7
    add-long/2addr v3, v1

    .line 1964
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->this$0:Lorg/telegram/ui/CacheControlActivity;

    .line 1965
    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$2900(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result v0

    .line 1964
    invoke-virtual {p0, v0, v3, v4}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->setSize(ZJ)V

    return-void
.end method
