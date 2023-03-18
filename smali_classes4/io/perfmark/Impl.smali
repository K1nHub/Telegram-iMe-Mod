.class public Lio/perfmark/Impl;
.super Ljava/lang/Object;
.source "Impl.java"


# static fields
.field static final NO_LINK:Lio/perfmark/Link;

.field static final NO_TAG:Lio/perfmark/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lio/perfmark/Tag;

    const-string v1, ""

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v1, v2, v3}, Lio/perfmark/Tag;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lio/perfmark/Impl;->NO_TAG:Lio/perfmark/Tag;

    .line 31
    new-instance v0, Lio/perfmark/Link;

    invoke-direct {v0, v2, v3}, Lio/perfmark/Link;-><init>(J)V

    sput-object v0, Lio/perfmark/Impl;->NO_LINK:Lio/perfmark/Link;

    return-void
.end method

.method protected constructor <init>(Lio/perfmark/Tag;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lio/perfmark/Impl;->NO_TAG:Lio/perfmark/Tag;

    if-ne p1, v0, :cond_0

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "nope"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method protected createTag(Ljava/lang/String;J)Lio/perfmark/Tag;
    .locals 0

    .line 63
    sget-object p1, Lio/perfmark/Impl;->NO_TAG:Lio/perfmark/Tag;

    return-object p1
.end method

.method protected event(Ljava/lang/String;Lio/perfmark/Tag;)V
    .locals 0

    return-void
.end method

.method protected linkIn(Lio/perfmark/Link;)V
    .locals 0

    return-void
.end method

.method protected linkOut()Lio/perfmark/Link;
    .locals 1

    .line 55
    sget-object v0, Lio/perfmark/Impl;->NO_LINK:Lio/perfmark/Link;

    return-object v0
.end method

.method protected startTask(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected startTask(Ljava/lang/String;Lio/perfmark/Tag;)V
    .locals 0

    return-void
.end method

.method protected stopTask(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V
    .locals 0

    return-void
.end method
