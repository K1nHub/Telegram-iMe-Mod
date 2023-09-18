.class public final Lcom/iMe/utils/debug/FileLogTree;
.super Ltimber/log/Timber$Tree;
.source "FileLogTree.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ltimber/log/Timber$Tree;-><init>()V

    return-void
.end method


# virtual methods
.method protected log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const-string p2, "message"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    .line 15
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    .line 14
    new-instance p4, Ljava/lang/Exception;

    invoke-direct {p4, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-static {p4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
