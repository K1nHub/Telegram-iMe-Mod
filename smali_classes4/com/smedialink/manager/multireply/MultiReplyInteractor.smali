.class public final Lcom/smedialink/manager/multireply/MultiReplyInteractor;
.super Ljava/lang/Object;
.source "MultiReplyInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiReplyInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiReplyInteractor.kt\ncom/smedialink/manager/multireply/MultiReplyInteractor\n+ 2 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,100:1\n20#2:101\n13536#3:102\n13537#3:107\n76#4,4:103\n1858#5,3:108\n8#6:111\n*S KotlinDebug\n*F\n+ 1 MultiReplyInteractor.kt\ncom/smedialink/manager/multireply/MultiReplyInteractor\n*L\n34#1:101\n54#1:102\n54#1:107\n55#1:103,4\n40#1:108,3\n48#1:111\n*E\n"
.end annotation


# instance fields
.field private final multiReplyRepo:Lcom/smedialink/manager/multireply/data/MultiReplyRepository;


# direct methods
.method public static synthetic $r8$lambda$pp077w3E4L7aBa1a9-KMNw9sDkg(Ljava/util/List;Lcom/smedialink/manager/multireply/MultiReplyInteractor;Lcom/smedialink/manager/multireply/message/MessageLinkPattern;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/manager/multireply/MultiReplyInteractor;->buildMultiReplyMessage$lambda-1(Ljava/util/List;Lcom/smedialink/manager/multireply/MultiReplyInteractor;Lcom/smedialink/manager/multireply/message/MessageLinkPattern;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/smedialink/manager/multireply/data/MultiReplyRepository;)V
    .locals 1

    const-string v0, "multiReplyRepo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/smedialink/manager/multireply/MultiReplyInteractor;->multiReplyRepo:Lcom/smedialink/manager/multireply/data/MultiReplyRepository;

    return-void
.end method

.method private final addUrlSpan(Landroid/text/SpannableString;Ljava/lang/String;II)V
    .locals 1

    .line 85
    :try_start_0
    new-instance v0, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x21

    .line 86
    invoke-virtual {p1, v0, p3, p4, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic addUrlSpan$default(Lcom/smedialink/manager/multireply/MultiReplyInteractor;Landroid/text/SpannableString;Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p3, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 83
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result p4

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smedialink/manager/multireply/MultiReplyInteractor;->addUrlSpan(Landroid/text/SpannableString;Ljava/lang/String;II)V

    return-void
.end method

.method private final addUserNameSpan(Landroid/text/SpannableString;Ljava/lang/String;II)V
    .locals 2

    .line 94
    :try_start_0
    new-instance v0, Lorg/telegram/ui/Components/URLSpanUserMention;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;I)V

    const/16 p2, 0x21

    .line 95
    invoke-virtual {p1, v0, p3, p4, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic addUserNameSpan$default(Lcom/smedialink/manager/multireply/MultiReplyInteractor;Landroid/text/SpannableString;Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result p4

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smedialink/manager/multireply/MultiReplyInteractor;->addUserNameSpan(Landroid/text/SpannableString;Ljava/lang/String;II)V

    return-void
.end method

.method private final buildMessageLink(Lorg/telegram/messenger/MessageObject;Lcom/smedialink/manager/multireply/message/MessageLinkPattern;)Ljava/lang/CharSequence;
    .locals 8

    .line 78
    new-instance v7, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, " "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p2, p1}, Lcom/smedialink/manager/multireply/message/MessageLinkPatternKt;->buildMessageLink(Lcom/smedialink/manager/multireply/message/MessageLinkPattern;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    invoke-static/range {v0 .. v6}, Lcom/smedialink/manager/multireply/MultiReplyInteractor;->addUrlSpan$default(Lcom/smedialink/manager/multireply/MultiReplyInteractor;Landroid/text/SpannableString;Ljava/lang/String;IIILjava/lang/Object;)V

    :cond_0
    return-object v7
.end method

.method private static final buildMultiReplyMessage$lambda-1(Ljava/util/List;Lcom/smedialink/manager/multireply/MultiReplyInteractor;Lcom/smedialink/manager/multireply/message/MessageLinkPattern;)Lcom/smedialink/storage/domain/model/Result;
    .locals 5

    const-string v0, "$selectedMessages"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pattern"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1859
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v1, v2, v0

    .line 43
    invoke-direct {p1, v3, p2}, Lcom/smedialink/manager/multireply/MultiReplyInteractor;->buildMultiReplyMessageForMessageObject(Lorg/telegram/messenger/MessageObject;Lcom/smedialink/manager/multireply/message/MessageLinkPattern;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "\n"

    const/4 v3, 0x2

    .line 44
    invoke-static {v1, v3}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "concat(\n                \u2026                        )"

    .line 43
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v4

    goto :goto_0

    .line 8
    :cond_1
    sget-object p0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p0, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private final buildMultiReplyMessageForMessageObject(Lorg/telegram/messenger/MessageObject;Lcom/smedialink/manager/multireply/message/MessageLinkPattern;)Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 67
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/smedialink/manager/multireply/MultiReplyInteractor;->buildSpannableStringUser(Lorg/telegram/tgnet/TLRPC$User;)Landroid/text/SpannableString;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/smedialink/manager/multireply/MultiReplyInteractor;->buildMessageLink(Lorg/telegram/messenger/MessageObject;Lcom/smedialink/manager/multireply/message/MessageLinkPattern;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v0, v1

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "concat(\n                \u2026ssage, pattern)\n        )"

    .line 67
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final buildSpannableStringUser(Lorg/telegram/tgnet/TLRPC$User;)Landroid/text/SpannableString;
    .locals 8

    .line 73
    new-instance v7, Landroid/text/SpannableString;

    invoke-static {p1}, Lcom/smedialink/utils/extentions/model/telegram/UserExtKt;->getPrivacySafeName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 74
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    invoke-static/range {v0 .. v6}, Lcom/smedialink/manager/multireply/MultiReplyInteractor;->addUserNameSpan$default(Lcom/smedialink/manager/multireply/MultiReplyInteractor;Landroid/text/SpannableString;Ljava/lang/String;IIILjava/lang/Object;)V

    return-object v7
.end method


# virtual methods
.method public final buildMultiReplyMessage(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    const-string v0, "selectedMessages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentChat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object p1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "just(this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/smedialink/manager/multireply/MultiReplyInteractor;->multiReplyRepo:Lcom/smedialink/manager/multireply/data/MultiReplyRepository;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1, p2}, Lcom/smedialink/manager/multireply/data/MultiReplyRepository;->requestPattern(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Single;

    move-result-object p2

    .line 37
    new-instance v0, Lcom/smedialink/manager/multireply/MultiReplyInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/smedialink/manager/multireply/MultiReplyInteractor$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/smedialink/manager/multireply/MultiReplyInteractor;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "{\n            multiReply\u2026              }\n        }"

    .line 35
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final prepareSelectedMessages([Landroid/util/SparseArray;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation

    const-string v0, "selectedMessagesId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13536
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 76
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v7, v6, 0x1

    .line 77
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 56
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v7, v5, :cond_0

    goto :goto_2

    :cond_0
    move v6, v7

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
