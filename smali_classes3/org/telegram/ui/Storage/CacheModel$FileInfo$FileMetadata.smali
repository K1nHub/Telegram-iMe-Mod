.class public Lorg/telegram/ui/Storage/CacheModel$FileInfo$FileMetadata;
.super Ljava/lang/Object;
.source "CacheModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Storage/CacheModel$FileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileMetadata"
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public loading:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
