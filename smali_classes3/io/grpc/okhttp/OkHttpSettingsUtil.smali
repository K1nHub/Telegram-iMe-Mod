.class Lio/grpc/okhttp/OkHttpSettingsUtil;
.super Ljava/lang/Object;
.source "OkHttpSettingsUtil.java"


# direct methods
.method public static get(Lio/grpc/okhttp/internal/framed/Settings;I)I
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/internal/framed/Settings;->get(I)I

    move-result p0

    return p0
.end method

.method public static isSet(Lio/grpc/okhttp/internal/framed/Settings;I)Z
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public static set(Lio/grpc/okhttp/internal/framed/Settings;II)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, v0, p2}, Lio/grpc/okhttp/internal/framed/Settings;->set(III)Lio/grpc/okhttp/internal/framed/Settings;

    return-void
.end method
