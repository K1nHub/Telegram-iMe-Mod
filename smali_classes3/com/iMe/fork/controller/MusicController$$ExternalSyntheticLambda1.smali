.class public final synthetic Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/iMe/fork/controller/MusicController;

.field public final synthetic f$1:Lcom/iMe/storage/domain/model/music/PlaylistModel;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/fork/controller/MusicController;Lcom/iMe/storage/domain/model/music/PlaylistModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/fork/controller/MusicController;

    iput-object p2, p0, Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda1;->f$1:Lcom/iMe/storage/domain/model/music/PlaylistModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/fork/controller/MusicController;

    iget-object v1, p0, Lcom/iMe/fork/controller/MusicController$$ExternalSyntheticLambda1;->f$1:Lcom/iMe/storage/domain/model/music/PlaylistModel;

    invoke-static {v0, v1}, Lcom/iMe/fork/controller/MusicController;->$r8$lambda$0zxUmEEyOfEQXFs0Bx6mv1vc_kk(Lcom/iMe/fork/controller/MusicController;Lcom/iMe/storage/domain/model/music/PlaylistModel;)V

    return-void
.end method
