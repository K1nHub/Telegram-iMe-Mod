.class public final Lcom/iMe/feature/navigation/NavigationScreen;
.super Landroidx/fragment/app/FragmentActivity;
.source "NavigationScreen.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/feature/navigation/NavigationScreen$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationScreen.kt\ncom/iMe/feature/navigation/NavigationScreen\n+ 2 ParcelableExt.kt\ncom/iMe/utils/extentions/common/ParcelableExtKt\n*L\n1#1,55:1\n8#2,4:56\n*S KotlinDebug\n*F\n+ 1 NavigationScreen.kt\ncom/iMe/feature/navigation/NavigationScreen\n*L\n26#1:56,4\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private final startDestination(Lcom/iMe/feature/navigation/NavigationBundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/navigation/NavigationBundle<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/iMe/feature/navigation/NavigationBundle;->getNavDirection()Lcom/iMe/feature/navigation/NavDirection;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 32
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$id;->main_content:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/navigation/fragment/NavHostFragment;

    .line 33
    invoke-virtual {v2}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/navigation/NavController;->getNavInflater()Landroidx/navigation/NavInflater;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$navigation;->fork_main_nav_graph:I

    invoke-virtual {v3, v4}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object v3

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start new destination with: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/iMe/feature/navigation/NavigationBundle;->getNavDirection()Lcom/iMe/feature/navigation/NavDirection;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {p1}, Lcom/iMe/feature/navigation/NavigationBundle;->getNavDirection()Lcom/iMe/feature/navigation/NavDirection;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/iMe/feature/navigation/NavigationScreen$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    :goto_2
    const/4 v4, 0x1

    if-eq v0, v4, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NavDirection is skipped: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 50
    :cond_4
    sget p1, Lorg/telegram/messenger/R$id;->devSettings:I

    invoke-virtual {v3, p1}, Landroidx/navigation/NavGraph;->setStartDestination(I)V

    goto :goto_3

    .line 44
    :cond_5
    sget v0, Lorg/telegram/messenger/R$id;->socialWebScreen:I

    invoke-virtual {v3, v0}, Landroidx/navigation/NavGraph;->setStartDestination(I)V

    .line 45
    invoke-virtual {v2}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p1}, Lcom/iMe/feature/navigation/NavigationBundle;->getData()Landroid/os/Parcelable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.iMe.feature.socialMedias.SocialNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-static {p1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenDirections;->toSocialWeb(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenDirections$ToSocialWeb;

    move-result-object p1

    const-string v0, "toSocialWeb(navBundle.data as SocialNetwork)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    goto :goto_3

    .line 38
    :cond_6
    sget v0, Lorg/telegram/messenger/R$id;->socialAuthScreen:I

    invoke-virtual {v3, v0}, Landroidx/navigation/NavGraph;->setStartDestination(I)V

    .line 39
    invoke-virtual {v2}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p1}, Lcom/iMe/feature/navigation/NavigationBundle;->getData()Landroid/os/Parcelable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.iMe.feature.socialMedias.SocialAuthDomain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/feature/socialMedias/SocialAuthDomain;

    invoke-static {p1}, Lcom/iMe/feature/socialMedias/auth/AuthScreenDirections;->toSocialAuth(Lcom/iMe/feature/socialMedias/SocialAuthDomain;)Lcom/iMe/feature/socialMedias/auth/AuthScreenDirections$ToSocialAuth;

    move-result-object p1

    const-string v0, "toSocialAuth(navBundle.data as SocialAuthDomain)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 22
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 24
    sget p1, Lorg/telegram/messenger/R$layout;->fork_navigation_screen:I

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "nav_bundle"

    const/16 v2, 0x21

    if-lt v0, v2, :cond_0

    const-class v0, Lcom/iMe/feature/navigation/NavigationBundle;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Lcom/iMe/feature/navigation/NavigationBundle;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Lcom/iMe/feature/navigation/NavigationBundle;

    .line 26
    :goto_0
    check-cast p1, Lcom/iMe/feature/navigation/NavigationBundle;

    .line 27
    invoke-direct {p0, p1}, Lcom/iMe/feature/navigation/NavigationScreen;->startDestination(Lcom/iMe/feature/navigation/NavigationBundle;)V

    return-void
.end method
