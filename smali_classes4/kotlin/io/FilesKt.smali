.class public final Lkotlin/io/FilesKt;
.super Lkotlin/io/FilesKt__UtilsKt;


# direct methods
.method public static bridge synthetic getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lkotlin/io/FilesKt__UtilsKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic readBytes(Ljava/io/File;)[B
    .locals 0

    invoke-static {p0}, Lkotlin/io/FilesKt__FileReadWriteKt;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlin/io/FilesKt__FileReadWriteKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic writeBytes(Ljava/io/File;[B)V
    .locals 0

    invoke-static {p0, p1}, Lkotlin/io/FilesKt__FileReadWriteKt;->writeBytes(Ljava/io/File;[B)V

    return-void
.end method
