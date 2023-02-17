.class final Lorg/fork/controller/BookmarksController$loadBookmarks$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BookmarksController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/controller/BookmarksController;->loadBookmarks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/data/locale/db/model/bookmarks/BookmarksDb;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fork/controller/BookmarksController$loadBookmarks$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/fork/controller/BookmarksController$loadBookmarks$1;

    invoke-direct {v0}, Lorg/fork/controller/BookmarksController$loadBookmarks$1;-><init>()V

    sput-object v0, Lorg/fork/controller/BookmarksController$loadBookmarks$1;->INSTANCE:Lorg/fork/controller/BookmarksController$loadBookmarks$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/data/locale/db/model/bookmarks/BookmarksDb;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/smedialink/storage/data/locale/db/model/bookmarks/BookmarksDb;->getMessageIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lcom/smedialink/storage/data/locale/db/model/bookmarks/BookmarksDb;

    invoke-virtual {p0, p1}, Lorg/fork/controller/BookmarksController$loadBookmarks$1;->invoke(Lcom/smedialink/storage/data/locale/db/model/bookmarks/BookmarksDb;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
