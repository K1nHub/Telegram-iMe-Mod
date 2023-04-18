.class public Lorg/telegram/messenger/ApplicationLoaderImpl;
.super Lorg/telegram/messenger/ApplicationLoader;
.source "ApplicationLoaderImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/telegram/messenger/ApplicationLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected onGetApplicationId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.iMe.android"

    return-object v0
.end method

.method protected onGetVersionCode()I
    .locals 1

    const v0, 0xe8219

    return v0
.end method

.method protected onGetVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "9.5.8"

    return-object v0
.end method
