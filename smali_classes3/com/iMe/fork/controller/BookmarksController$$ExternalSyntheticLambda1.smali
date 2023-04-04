.class public final synthetic Lcom/iMe/fork/controller/BookmarksController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/iMe/fork/controller/BookmarksController;

.field public final synthetic f$1:Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/fork/controller/BookmarksController;Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/BookmarksController$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/fork/controller/BookmarksController;

    iput-object p2, p0, Lcom/iMe/fork/controller/BookmarksController$$ExternalSyntheticLambda1;->f$1:Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/iMe/fork/controller/BookmarksController$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/fork/controller/BookmarksController;

    iget-object v1, p0, Lcom/iMe/fork/controller/BookmarksController$$ExternalSyntheticLambda1;->f$1:Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;

    invoke-static {v0, v1}, Lcom/iMe/fork/controller/BookmarksController;->$r8$lambda$52gJKOC1ywd8olxzY23WgaWumro(Lcom/iMe/fork/controller/BookmarksController;Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;)V

    return-void
.end method
