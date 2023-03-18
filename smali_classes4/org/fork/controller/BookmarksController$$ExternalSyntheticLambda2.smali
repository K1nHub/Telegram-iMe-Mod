.class public final synthetic Lorg/fork/controller/BookmarksController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/controller/BookmarksController;

.field public final synthetic f$1:Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/controller/BookmarksController;Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/BookmarksController$$ExternalSyntheticLambda2;->f$0:Lorg/fork/controller/BookmarksController;

    iput-object p2, p0, Lorg/fork/controller/BookmarksController$$ExternalSyntheticLambda2;->f$1:Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/fork/controller/BookmarksController$$ExternalSyntheticLambda2;->f$0:Lorg/fork/controller/BookmarksController;

    iget-object v1, p0, Lorg/fork/controller/BookmarksController$$ExternalSyntheticLambda2;->f$1:Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;

    invoke-static {v0, v1}, Lorg/fork/controller/BookmarksController;->$r8$lambda$hbcfIYyOqmdPS7R77eGLO_ZcE0I(Lorg/fork/controller/BookmarksController;Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;)V

    return-void
.end method
