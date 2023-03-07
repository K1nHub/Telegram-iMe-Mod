.class public final Lio/grpc/android/AndroidChannelBuilder;
.super Lio/grpc/ForwardingChannelBuilder;
.source "AndroidChannelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ForwardingChannelBuilder<",
        "Lio/grpc/android/AndroidChannelBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final delegateBuilder:Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 58
    invoke-static {}, Lio/grpc/android/AndroidChannelBuilder;->findOkHttp()Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Lio/grpc/ManagedChannelBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder;-><init>()V

    const-string v0, "delegateBuilder"

    .line 128
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ManagedChannelBuilder;

    iput-object p1, p0, Lio/grpc/android/AndroidChannelBuilder;->delegateBuilder:Lio/grpc/ManagedChannelBuilder;

    return-void
.end method

.method private static findOkHttp()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 62
    :try_start_0
    const-class v0, Lio/grpc/okhttp/OkHttpChannelBuilder;

    sget v1, Lio/grpc/okhttp/OkHttpChannelBuilder;->$r8$clinit:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static usingBuilder(Lio/grpc/ManagedChannelBuilder;)Lio/grpc/android/AndroidChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;)",
            "Lio/grpc/android/AndroidChannelBuilder;"
        }
    .end annotation

    .line 109
    new-instance v0, Lio/grpc/android/AndroidChannelBuilder;

    invoke-direct {v0, p0}, Lio/grpc/android/AndroidChannelBuilder;-><init>(Lio/grpc/ManagedChannelBuilder;)V

    return-object v0
.end method


# virtual methods
.method public build()Lio/grpc/ManagedChannel;
    .locals 3

    .line 149
    new-instance v0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;

    iget-object v1, p0, Lio/grpc/android/AndroidChannelBuilder;->delegateBuilder:Lio/grpc/ManagedChannelBuilder;

    invoke-virtual {v1}, Lio/grpc/ManagedChannelBuilder;->build()Lio/grpc/ManagedChannel;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/android/AndroidChannelBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;-><init>(Lio/grpc/ManagedChannel;Landroid/content/Context;)V

    return-object v0
.end method

.method public context(Landroid/content/Context;)Lio/grpc/android/AndroidChannelBuilder;
    .locals 0

    .line 135
    iput-object p1, p0, Lio/grpc/android/AndroidChannelBuilder;->context:Landroid/content/Context;

    return-object p0
.end method

.method protected delegate()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lio/grpc/android/AndroidChannelBuilder;->delegateBuilder:Lio/grpc/ManagedChannelBuilder;

    return-object v0
.end method
