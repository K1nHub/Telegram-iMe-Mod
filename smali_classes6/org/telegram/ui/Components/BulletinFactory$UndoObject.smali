.class public Lorg/telegram/ui/Components/BulletinFactory$UndoObject;
.super Ljava/lang/Object;
.source "BulletinFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/BulletinFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoObject"
.end annotation


# instance fields
.field public onAction:Ljava/lang/Runnable;

.field public onUndo:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
