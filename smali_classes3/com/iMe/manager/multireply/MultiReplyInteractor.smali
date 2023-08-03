.class public final Lcom/iMe/manager/multireply/MultiReplyInteractor;
.super Ljava/lang/Object;
.source "MultiReplyInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiReplyInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiReplyInteractor.kt\ncom/iMe/manager/multireply/MultiReplyInteractor\n+ 2 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n*L\n1#1,101:1\n20#2:102\n13579#3:103\n13580#3:108\n76#4,4:104\n*S KotlinDebug\n*F\n+ 1 MultiReplyInteractor.kt\ncom/iMe/manager/multireply/MultiReplyInteractor\n*L\n33#1:102\n47#1:103\n47#1:108\n48#1:104,4\n*E\n"
.end annotation


# instance fields
.field private final multiReplyRepo:Lcom/iMe/manager/multireply/data/MultiReplyRepository;


# direct methods
.method public static synthetic $r8$lambda$kpOZ9WuclzgfT1QIGtD_MecoETQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/multireply/MultiReplyInteractor;->buildMultiReplyMessage$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/manager/multireply/data/MultiReplyRepository;)V
    .locals 1

    const-string v0, "multiReplyRepo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/iMe/manager/multireply/MultiReplyInteractor;->multiReplyRepo:Lcom/iMe/manager/multireply/data/MultiReplyRepository;

    return-void
.end method

.method public static final synthetic access$buildMultiReplyMessageForMessageObject(Lcom/iMe/manager/multireply/MultiReplyInteractor;Lorg/telegram/messenger/MessageObject;Lcom/iMe/manager/multireply/message/MessageLinkPattern;)Ljava/lang/CharSequence;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/iMe/manager/multireply/MultiReplyInteractor;->buildMultiReplyMessageForMessageObject(Lorg/telegram/messenger/MessageObject;Lcom/iMe/manager/multireply/message/MessageLinkPattern;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private final addUrlSpan(Landroid/text/SpannableString;Ljava/lang/String;II)V
    .locals 1

    .line 86
    :try_start_0
    new-instance v0, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x21

    .line 87
    invoke-virtual {p1, v0, p3, p4, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic addUrlSpan$default(Lcom/iMe/manager/multireply/MultiReplyInteractor;Landroid/text/SpannableString;Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p3, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 84
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result p4

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/manager/multireply/MultiReplyInteractor;->addUrlSpan(Landroid/text/SpannableString;Ljava/lang/String;II)V

    return-void
.end method

.method private final buildMessageLink(Lorg/telegram/messenger/MessageObject;Lcom/iMe/manager/multireply/message/MessageLinkPattern;)Ljava/lang/CharSequence;
    .locals 8

    .line 79
    new-instance v7, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p2, p1}, Lcom/iMe/manager/multireply/message/MessageLinkPatternKt;->buildMessageLink(Lcom/iMe/manager/multireply/message/MessageLinkPattern;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    invoke-static/range {v0 .. v6}, Lcom/iMe/manager/multireply/MultiReplyInteractor;->addUrlSpan$default(Lcom/iMe/manager/multireply/MultiReplyInteractor;Landroid/text/SpannableString;Ljava/lang/String;IIILjava/lang/Object;)V

    :cond_0
    return-object v7
.end method

.method private static final buildMultiReplyMessage$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method

.method private final buildMultiReplyMessageForMessageObject(Lorg/telegram/messenger/MessageObject;Lcom/iMe/manager/multireply/message/MessageLinkPattern;)Ljava/lang/CharSequence;
    .locals 7

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/iMe/manager/multireply/MultiReplyInteractor;->buildMessageLink(Lorg/telegram/messenger/MessageObject;Lcom/iMe/manager/multireply/message/MessageLinkPattern;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 60
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 61
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/iMe/manager/multireply/MultiReplyInteractor;->buildSpannableStringUser(Lorg/telegram/tgnet/TLRPC$User;)Landroid/text/SpannableString;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v2, p1

    :cond_0
    aput-object v2, v0, v3

    aput-object p2, v0, v1

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "concat(\n                \u2026messageLink\n            )"

    .line 63
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 67
    :cond_1
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/manager/multireply/MultiReplyInteractor;->buildSpannableStringChat(Lorg/telegram/tgnet/TLRPC$Chat;)Landroid/text/SpannableString;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v2, p1

    :cond_2
    aput-object v2, v0, v3

    aput-object p2, v0, v1

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "concat(\n                \u2026    messageLink\n        )"

    .line 69
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final buildSpannableStringChat(Lorg/telegram/tgnet/TLRPC$Chat;)Landroid/text/SpannableString;
    .locals 2

    .line 76
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/iMe/utils/extentions/model/telegram/UserExtKt;->getPrivacySafeName(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private final buildSpannableStringUser(Lorg/telegram/tgnet/TLRPC$User;)Landroid/text/SpannableString;
    .locals 2

    .line 74
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/iMe/utils/extentions/model/telegram/UserExtKt;->getPrivacySafeName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
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
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    const-string v0, "selectedMessages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentChat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "just(this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/iMe/manager/multireply/MultiReplyInteractor;->multiReplyRepo:Lcom/iMe/manager/multireply/data/MultiReplyRepository;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1, p2}, Lcom/iMe/manager/multireply/data/MultiReplyRepository;->requestPattern(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Single;

    move-result-object p2

    new-instance v0, Lcom/iMe/manager/multireply/MultiReplyInteractor$buildMultiReplyMessage$1;

    invoke-direct {v0, p1, p0}, Lcom/iMe/manager/multireply/MultiReplyInteractor$buildMultiReplyMessage$1;-><init>(Ljava/util/List;Lcom/iMe/manager/multireply/MultiReplyInteractor;)V

    new-instance p1, Lcom/iMe/manager/multireply/MultiReplyInteractor$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/iMe/manager/multireply/MultiReplyInteractor$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "fun buildMultiReplyMessa\u2026        }\n        }\n    }"

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

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13579
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 76
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    .line 77
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 49
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
