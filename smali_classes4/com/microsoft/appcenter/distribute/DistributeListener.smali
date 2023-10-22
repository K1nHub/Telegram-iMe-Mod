.class public interface abstract Lcom/microsoft/appcenter/distribute/DistributeListener;
.super Ljava/lang/Object;
.source "DistributeListener.java"


# virtual methods
.method public abstract onNoReleaseAvailable(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract onReleaseAvailable(Landroid/app/Activity;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "releaseDetails"
        }
    .end annotation
.end method
