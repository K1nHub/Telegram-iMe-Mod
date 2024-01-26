.class public final Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;
.super Ljava/lang/Object;
.source "SocketOptionsPlatformCapabilities.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSocketOptionsPlatformCapabilities.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SocketOptionsPlatformCapabilities.kt\nio/ktor/network/sockets/SocketOptionsPlatformCapabilities\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n3792#2:102\n4307#2,2:103\n1282#2,2:111\n1282#2,2:113\n1282#2,2:115\n1194#3,2:105\n1222#3,4:107\n*S KotlinDebug\n*F\n+ 1 SocketOptionsPlatformCapabilities.kt\nio/ktor/network/sockets/SocketOptionsPlatformCapabilities\n*L\n19#1:102\n19#1:103,2\n34#1:111,2\n51#1:113,2\n69#1:115,2\n24#1:105,2\n24#1:107,4\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;

.field private static final channelSetOption:Ljava/lang/reflect/Method;

.field private static final datagramSetOption:Ljava/lang/reflect/Method;

.field private static final serverChannelSetOption:Ljava/lang/reflect/Method;

.field private static final standardSocketOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-class v0, Ljava/lang/Object;

    const-string/jumbo v1, "setOption"

    const-string/jumbo v2, "socketChannelClass.methods"

    const-string/jumbo v3, "java.net.SocketOption"

    new-instance v4, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;

    invoke-direct {v4}, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;-><init>()V

    sput-object v4, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->INSTANCE:Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "java.net.StandardSocketOptions"

    .line 17
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 18
    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3792
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4307
    array-length v8, v6

    move v9, v5

    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v10, v6, v9

    .line 20
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 21
    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move v11, v4

    goto :goto_1

    :cond_0
    move v11, v5

    :goto_1
    if-eqz v11, :cond_1

    .line 4307
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const/16 v6, 0xa

    .line 1194
    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v6

    const/16 v8, 0x10

    invoke-static {v6, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6

    .line 1195
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1222
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1223
    move-object v9, v7

    check-cast v9, Ljava/lang/reflect/Field;

    .line 24
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "it.name"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1223
    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 25
    :cond_3
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 27
    :catchall_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v8

    .line 16
    :cond_4
    :goto_3
    sput-object v8, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->standardSocketOptions:Ljava/util/Map;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 31
    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "java.nio.channels.SocketChannel"

    .line 32
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 34
    invoke-virtual {v9}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1282
    array-length v11, v10

    move v12, v5

    :goto_4
    if-ge v12, v11, :cond_8

    aget-object v13, v10, v12

    .line 35
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v14

    .line 36
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-nez v14, :cond_5

    move v14, v4

    goto :goto_5

    :cond_5
    move v14, v5

    :goto_5
    if-eqz v14, :cond_6

    .line 37
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 38
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    if-ne v14, v6, :cond_6

    .line 39
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 40
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    aget-object v14, v14, v5

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 41
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    aget-object v14, v14, v4

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v14, :cond_6

    move v14, v4

    goto :goto_6

    :cond_6
    move v14, v5

    :goto_6
    if-eqz v14, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :catchall_1
    :cond_8
    move-object v13, v7

    .line 30
    :goto_7
    sput-object v13, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->channelSetOption:Ljava/lang/reflect/Method;

    .line 48
    :try_start_2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "java.nio.channels.ServerSocketChannel"

    .line 49
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 51
    invoke-virtual {v9}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1282
    array-length v11, v10

    move v12, v5

    :goto_8
    if-ge v12, v11, :cond_c

    aget-object v13, v10, v12

    .line 52
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v14

    .line 53
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-nez v14, :cond_9

    move v14, v4

    goto :goto_9

    :cond_9
    move v14, v5

    :goto_9
    if-eqz v14, :cond_a

    .line 55
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 56
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    if-ne v14, v6, :cond_a

    .line 57
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 58
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    aget-object v14, v14, v5

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 59
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    aget-object v14, v14, v4

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v14, :cond_a

    move v14, v4

    goto :goto_a

    :cond_a
    move v14, v5

    :goto_a
    if-eqz v14, :cond_b

    goto :goto_b

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :catchall_2
    :cond_c
    move-object v13, v7

    .line 47
    :goto_b
    sput-object v13, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->serverChannelSetOption:Ljava/lang/reflect/Method;

    .line 66
    :try_start_3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v8, "java.nio.channels.DatagramChannel"

    .line 67
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 69
    invoke-virtual {v8}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1282
    array-length v2, v9

    move v10, v5

    :goto_c
    if-ge v10, v2, :cond_10

    aget-object v11, v9, v10

    .line 70
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    .line 71
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-nez v12, :cond_d

    move v12, v4

    goto :goto_d

    :cond_d
    move v12, v5

    :goto_d
    if-eqz v12, :cond_e

    .line 73
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 74
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-ne v12, v6, :cond_e

    .line 75
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 76
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    aget-object v12, v12, v5

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 77
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v12, :cond_e

    move v12, v4

    goto :goto_e

    :cond_e
    move v12, v5

    :goto_e
    if-eqz v12, :cond_f

    move-object v7, v11

    goto :goto_f

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 65
    :catchall_3
    :cond_10
    :goto_f
    sput-object v7, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->datagramSetOption:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final socketOption(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 99
    sget-object v0, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->standardSocketOptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final setReusePort(Ljava/nio/channels/DatagramChannel;)V
    .locals 4

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SO_REUSEPORT"

    .line 94
    invoke-direct {p0, v0}, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->socketOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    sget-object v1, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->datagramSetOption:Ljava/lang/reflect/Method;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setReusePort(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 4

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SO_REUSEPORT"

    .line 89
    invoke-direct {p0, v0}, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->socketOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    sget-object v1, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->serverChannelSetOption:Ljava/lang/reflect/Method;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setReusePort(Ljava/nio/channels/SocketChannel;)V
    .locals 4

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SO_REUSEPORT"

    .line 84
    invoke-direct {p0, v0}, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->socketOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    sget-object v1, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->channelSetOption:Ljava/lang/reflect/Method;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
