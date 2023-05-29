.class public final Lcom/iMe/feature/navigation/NavigationBundle$Creator;
.super Ljava/lang/Object;
.source "NavigationBundle.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/navigation/NavigationBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/iMe/feature/navigation/NavigationBundle<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/iMe/feature/navigation/NavigationBundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/iMe/feature/navigation/NavigationBundle<",
            "*>;"
        }
    .end annotation

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/feature/navigation/NavigationBundle;

    const-class v1, Lcom/iMe/feature/navigation/NavigationBundle;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/feature/navigation/NavDirection;->valueOf(Ljava/lang/String;)Lcom/iMe/feature/navigation/NavDirection;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/iMe/feature/navigation/NavigationBundle;-><init>(Landroid/os/Parcelable;Lcom/iMe/feature/navigation/NavDirection;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iMe/feature/navigation/NavigationBundle$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/iMe/feature/navigation/NavigationBundle;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/iMe/feature/navigation/NavigationBundle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/iMe/feature/navigation/NavigationBundle<",
            "*>;"
        }
    .end annotation

    new-array p1, p1, [Lcom/iMe/feature/navigation/NavigationBundle;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iMe/feature/navigation/NavigationBundle$Creator;->newArray(I)[Lcom/iMe/feature/navigation/NavigationBundle;

    move-result-object p1

    return-object p1
.end method
