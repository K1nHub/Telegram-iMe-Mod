.class public final Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;
.super Ljava/lang/Object;
.source "GsonExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGsonExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GsonExt.kt\ncom/smedialink/storage/data/utils/extentions/GsonExtKt\n*L\n1#1,27:1\n20#1,2:28\n20#1,2:30\n*S KotlinDebug\n*F\n+ 1 GsonExt.kt\ncom/smedialink/storage/data/utils/extentions/GsonExtKt\n*L\n10#1:28,2\n15#1:30,2\n*E\n"
.end annotation


# static fields
.field private static final globalGson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->globalGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static final getGlobalGson()Lcom/google/gson/Gson;
    .locals 1

    .line 6
    sget-object v0, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->globalGson:Lcom/google/gson/Gson;

    return-object v0
.end method
