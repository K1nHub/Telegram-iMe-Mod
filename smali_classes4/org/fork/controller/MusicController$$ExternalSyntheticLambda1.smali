.class public final synthetic Lorg/fork/controller/MusicController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/controller/MusicController;

.field public final synthetic f$1:Lcom/smedialink/storage/domain/model/music/PlaylistModel;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/controller/MusicController;Lcom/smedialink/storage/domain/model/music/PlaylistModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/MusicController$$ExternalSyntheticLambda1;->f$0:Lorg/fork/controller/MusicController;

    iput-object p2, p0, Lorg/fork/controller/MusicController$$ExternalSyntheticLambda1;->f$1:Lcom/smedialink/storage/domain/model/music/PlaylistModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/fork/controller/MusicController$$ExternalSyntheticLambda1;->f$0:Lorg/fork/controller/MusicController;

    iget-object v1, p0, Lorg/fork/controller/MusicController$$ExternalSyntheticLambda1;->f$1:Lcom/smedialink/storage/domain/model/music/PlaylistModel;

    invoke-static {v0, v1}, Lorg/fork/controller/MusicController;->$r8$lambda$A1P3lZ3Ex8FvNc18YQw5b35OCV8(Lorg/fork/controller/MusicController;Lcom/smedialink/storage/domain/model/music/PlaylistModel;)V

    return-void
.end method
