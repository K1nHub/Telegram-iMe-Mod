.class public final Lcom/smedialink/model/multireply/MessageLinkModelKt;
.super Ljava/lang/Object;
.source "MessageLinkModel.kt"


# direct methods
.method public static final getMessageLinkWithNewMessageId(Lcom/smedialink/model/multireply/MessageLinkModel;I)Ljava/lang/String;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/smedialink/model/multireply/MessageLinkModel;->getMessageLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smedialink/model/multireply/MessageLinkModel;->getMessageId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
