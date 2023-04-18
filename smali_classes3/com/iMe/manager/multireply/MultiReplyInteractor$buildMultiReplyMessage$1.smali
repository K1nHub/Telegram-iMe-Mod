.class final Lcom/iMe/manager/multireply/MultiReplyInteractor$buildMultiReplyMessage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MultiReplyInteractor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/multireply/MultiReplyInteractor;->buildMultiReplyMessage(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/manager/multireply/message/MessageLinkPattern;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/CharSequence;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiReplyInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiReplyInteractor.kt\ncom/iMe/manager/multireply/MultiReplyInteractor$buildMultiReplyMessage$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,102:1\n1864#2,3:103\n9#3:106\n*S KotlinDebug\n*F\n+ 1 MultiReplyInteractor.kt\ncom/iMe/manager/multireply/MultiReplyInteractor$buildMultiReplyMessage$1\n*L\n37#1:103,3\n40#1:106\n*E\n"
.end annotation


# instance fields
.field final synthetic $selectedMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iMe/manager/multireply/MultiReplyInteractor;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/iMe/manager/multireply/MultiReplyInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lcom/iMe/manager/multireply/MultiReplyInteractor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/manager/multireply/MultiReplyInteractor$buildMultiReplyMessage$1;->$selectedMessages:Ljava/util/List;

    iput-object p2, p0, Lcom/iMe/manager/multireply/MultiReplyInteractor$buildMultiReplyMessage$1;->this$0:Lcom/iMe/manager/multireply/MultiReplyInteractor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/manager/multireply/message/MessageLinkPattern;)Lcom/iMe/storage/domain/model/Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/manager/multireply/message/MessageLinkPattern;",
            ")",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/iMe/manager/multireply/MultiReplyInteractor$buildMultiReplyMessage$1;->$selectedMessages:Ljava/util/List;

    iget-object v1, p0, Lcom/iMe/manager/multireply/MultiReplyInteractor$buildMultiReplyMessage$1;->this$0:Lcom/iMe/manager/multireply/MultiReplyInteractor;

    .line 1865
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, ""

    move v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v5, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v3, v4, v2

    .line 38
    invoke-static {v1, v5, p1}, Lcom/iMe/manager/multireply/MultiReplyInteractor;->access$buildMultiReplyMessageForMessageObject(Lcom/iMe/manager/multireply/MultiReplyInteractor;Lorg/telegram/messenger/MessageObject;Lcom/iMe/manager/multireply/message/MessageLinkPattern;)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "\n"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "concat(totalMessage, bui\u2026mbols.NEW_LINE.repeat(2))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move v4, v6

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v3}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lcom/iMe/manager/multireply/message/MessageLinkPattern;

    invoke-virtual {p0, p1}, Lcom/iMe/manager/multireply/MultiReplyInteractor$buildMultiReplyMessage$1;->invoke(Lcom/iMe/manager/multireply/message/MessageLinkPattern;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
