.class public abstract Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksService$Stub;
.super Landroid/os/Binder;
.source "IDynamicLinksService.java"

# interfaces
.implements Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.firebase.dynamiclinks.internal.IDynamicLinksService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
