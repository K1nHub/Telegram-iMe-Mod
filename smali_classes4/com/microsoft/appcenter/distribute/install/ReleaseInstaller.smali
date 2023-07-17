.class public interface abstract Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;
.super Ljava/lang/Object;
.source "ReleaseInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract install(Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localUri"
        }
    .end annotation
.end method
