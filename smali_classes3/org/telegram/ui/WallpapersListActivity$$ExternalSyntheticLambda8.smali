.class public final synthetic Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/WallpapersListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/WallpapersListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/WallpapersListActivity;

    return-void
.end method


# virtual methods
.method public final didSetNewBackground()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    return-void
.end method
