.class public abstract Lcom/google/android/aidl/BaseProxy;
.super Ljava/lang/Object;
.source "BaseProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final mDescriptor:Ljava/lang/String;

.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method protected constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "remote",
            "descriptor"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/aidl/BaseProxy;->mRemote:Landroid/os/IBinder;

    .line 20
    iput-object p2, p0, Lcom/google/android/aidl/BaseProxy;->mDescriptor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/aidl/BaseProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method protected obtainAndWriteInterfaceToken()Landroid/os/Parcel;
    .locals 2

    .line 29
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/google/android/aidl/BaseProxy;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method protected transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/google/android/aidl/BaseProxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    :try_start_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
