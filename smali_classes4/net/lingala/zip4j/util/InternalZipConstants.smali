.class public interface abstract Lnet/lingala/zip4j/util/InternalZipConstants;
.super Ljava/lang/Object;
.source "InternalZipConstants.java"


# static fields
.field public static final FILE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "file.encoding"

    .line 165
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "file.separator"

    .line 167
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    return-void
.end method
