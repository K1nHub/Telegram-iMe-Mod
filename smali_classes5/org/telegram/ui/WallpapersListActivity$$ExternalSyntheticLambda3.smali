.class public final synthetic Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/WallpapersListActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/WallpapersListActivity;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/WallpapersListActivity;

    iput-object p2, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-boolean p3, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda3;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/WallpapersListActivity;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-boolean v2, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda3;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/WallpapersListActivity;->$r8$lambda$ROk5LtzpY6Az9GBjSmCs9_tvdTQ(Lorg/telegram/ui/WallpapersListActivity;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method
