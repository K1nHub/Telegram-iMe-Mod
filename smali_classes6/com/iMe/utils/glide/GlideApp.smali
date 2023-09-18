.class public final Lcom/iMe/utils/glide/GlideApp;
.super Ljava/lang/Object;
.source "GlideApp.java"


# direct methods
.method public static with(Landroid/content/Context;)Lcom/iMe/utils/glide/GlideRequests;
    .locals 0

    .line 95
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lcom/iMe/utils/glide/GlideRequests;

    return-object p0
.end method
