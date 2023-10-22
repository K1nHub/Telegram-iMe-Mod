.class public final Lcom/iMe/utils/extentions/common/ThrowableExtKt;
.super Ljava/lang/Object;
.source "ThrowableExt.kt"


# direct methods
.method public static final showToast(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    sget p0, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    const-string v0, "ErrorOccurred"

    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string/jumbo v0, "localizedMessage ?: Loca\u2026, R.string.ErrorOccurred)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    return-void
.end method
