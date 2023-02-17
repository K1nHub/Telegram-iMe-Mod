.class public Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;
.super Ljava/lang/Object;
.source "INavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/INavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeAnimationSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;
    }
.end annotation


# instance fields
.field public final accentId:I

.field public afterAnimationRunnable:Ljava/lang/Runnable;

.field public afterStartDescriptionsAddedRunnable:Ljava/lang/Runnable;

.field public animationProgress:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

.field public applyTheme:Z

.field public beforeAnimationRunnable:Ljava/lang/Runnable;

.field public duration:J

.field public final instant:Z

.field public final nightTheme:Z

.field public onlyTopFragment:Z

.field public resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V
    .locals 2

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->applyTheme:Z

    const-wide/16 v0, 0xc8

    .line 363
    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->duration:J

    .line 367
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 368
    iput p2, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->accentId:I

    .line 369
    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->nightTheme:Z

    .line 370
    iput-boolean p4, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->instant:Z

    return-void
.end method
