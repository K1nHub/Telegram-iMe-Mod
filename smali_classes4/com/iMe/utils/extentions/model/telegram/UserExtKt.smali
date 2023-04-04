.class public final Lcom/iMe/utils/extentions/model/telegram/UserExtKt;
.super Ljava/lang/Object;
.source "UserExt.kt"


# direct methods
.method public static final getFullName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getPrivacySafeName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_2

    .line 10
    :cond_3
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_2
    return-object p0
.end method
