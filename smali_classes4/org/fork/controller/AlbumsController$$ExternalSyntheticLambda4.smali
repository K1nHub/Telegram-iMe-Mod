.class public final synthetic Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/controller/AlbumsController;

.field public final synthetic f$1:Lorg/fork/models/backup/Backup;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/controller/AlbumsController;Lorg/fork/models/backup/Backup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda4;->f$0:Lorg/fork/controller/AlbumsController;

    iput-object p2, p0, Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda4;->f$1:Lorg/fork/models/backup/Backup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda4;->f$0:Lorg/fork/controller/AlbumsController;

    iget-object v1, p0, Lorg/fork/controller/AlbumsController$$ExternalSyntheticLambda4;->f$1:Lorg/fork/models/backup/Backup;

    invoke-static {v0, v1}, Lorg/fork/controller/AlbumsController;->$r8$lambda$m07aBLKFmQJhsxzdzg7j9Ogei5s(Lorg/fork/controller/AlbumsController;Lorg/fork/models/backup/Backup;)V

    return-void
.end method
