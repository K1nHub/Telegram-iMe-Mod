.class public Lorg/web3j/utils/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public static isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .locals 1

    .line 54
    new-instance v0, Ljava/lang/String;

    new-array p1, p1, [C

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u0000"

    invoke-virtual {v0, p1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zeros(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x30

    .line 50
    invoke-static {v0, p0}, Lorg/web3j/utils/Strings;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
