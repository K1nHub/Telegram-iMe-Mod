.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda238;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda238;->f$0:Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda238;->f$0:Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$QPvtx6--D1bpo0okzObBx6iLWDU(Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)I

    move-result p1

    return p1
.end method
