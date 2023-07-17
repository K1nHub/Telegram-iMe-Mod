.class public interface abstract Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;
.super Ljava/lang/Object;
.source "ReleaseDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getReleaseDetails()Lcom/microsoft/appcenter/distribute/ReleaseDetails;
.end method

.method public abstract isDownloading()Z
.end method

.method public abstract resume()V
.end method
