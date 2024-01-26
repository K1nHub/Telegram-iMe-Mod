.class public abstract Lorg/telegram/ui/IUpdateLayout;
.super Ljava/lang/Object;
.source "IUpdateLayout.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract moveToDialog(ILandroid/view/ViewGroup;)V
.end method

.method public abstract moveToSideMenu(I)V
.end method

.method public abstract updateAppUpdateViews(IZ)V
.end method

.method public abstract updateFileProgress([Ljava/lang/Object;)V
.end method
