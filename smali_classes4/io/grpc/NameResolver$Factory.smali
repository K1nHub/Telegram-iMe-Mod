.class public abstract Lio/grpc/NameResolver$Factory;
.super Ljava/lang/Object;
.source "NameResolver.java"


# static fields
.field public static final PARAMS_DEFAULT_PORT:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "params-default-port"

    .line 145
    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/NameResolver$Factory;->PARAMS_DEFAULT_PORT:Lio/grpc/Attributes$Key;

    const-string/jumbo v0, "params-proxy-detector"

    .line 157
    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    const-string/jumbo v0, "params-sync-context"

    .line 161
    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    const-string/jumbo v0, "params-parser"

    .line 165
    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
