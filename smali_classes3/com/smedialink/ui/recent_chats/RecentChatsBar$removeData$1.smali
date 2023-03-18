.class final Lcom/smedialink/ui/recent_chats/RecentChatsBar$removeData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecentChatsBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/recent_chats/RecentChatsBar;->removeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/HistoryDialogModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/ui/recent_chats/RecentChatsBar$removeData$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/ui/recent_chats/RecentChatsBar$removeData$1;

    invoke-direct {v0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar$removeData$1;-><init>()V

    sput-object v0, Lcom/smedialink/ui/recent_chats/RecentChatsBar$removeData$1;->INSTANCE:Lcom/smedialink/ui/recent_chats/RecentChatsBar$removeData$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/domain/model/HistoryDialogModel;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/recent_chats/RecentChatsBar$removeData$1;->invoke(Lcom/smedialink/storage/domain/model/HistoryDialogModel;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
