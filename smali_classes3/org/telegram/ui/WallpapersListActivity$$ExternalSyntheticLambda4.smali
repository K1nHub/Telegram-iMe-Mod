.class public final synthetic Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/WallpapersListActivity;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/WallpapersListActivity;JLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/WallpapersListActivity;

    iput-wide p2, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda4;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda4;->f$3:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/WallpapersListActivity;

    iget-wide v1, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda4;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/telegram/ui/WallpapersListActivity$$ExternalSyntheticLambda4;->f$3:Z

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/WallpapersListActivity;->$r8$lambda$78-2xeXDv6dCniWruDCg_NLLJFc(Lorg/telegram/ui/WallpapersListActivity;JLjava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
