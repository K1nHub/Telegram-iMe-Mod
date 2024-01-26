.class public final Lcom/iMe/feature/navigation/NavigationBundle;
.super Ljava/lang/Object;
.source "NavigationBundle.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/feature/navigation/NavigationBundle$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/iMe/feature/navigation/NavigationBundle<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final data:Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final navDirection:Lcom/iMe/feature/navigation/NavDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/feature/navigation/NavigationBundle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/navigation/NavigationBundle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/iMe/feature/navigation/NavigationBundle$Creator;

    invoke-direct {v0}, Lcom/iMe/feature/navigation/NavigationBundle$Creator;-><init>()V

    sput-object v0, Lcom/iMe/feature/navigation/NavigationBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/iMe/feature/navigation/NavDirection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/iMe/feature/navigation/NavDirection;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navDirection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/feature/navigation/NavigationBundle;->data:Landroid/os/Parcelable;

    .line 9
    iput-object p2, p0, Lcom/iMe/feature/navigation/NavigationBundle;->navDirection:Lcom/iMe/feature/navigation/NavDirection;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/feature/navigation/NavigationBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/feature/navigation/NavigationBundle;

    iget-object v1, p0, Lcom/iMe/feature/navigation/NavigationBundle;->data:Landroid/os/Parcelable;

    iget-object v3, p1, Lcom/iMe/feature/navigation/NavigationBundle;->data:Landroid/os/Parcelable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/feature/navigation/NavigationBundle;->navDirection:Lcom/iMe/feature/navigation/NavDirection;

    iget-object p1, p1, Lcom/iMe/feature/navigation/NavigationBundle;->navDirection:Lcom/iMe/feature/navigation/NavDirection;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getData()Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/iMe/feature/navigation/NavigationBundle;->data:Landroid/os/Parcelable;

    return-object v0
.end method

.method public final getNavDirection()Lcom/iMe/feature/navigation/NavDirection;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/feature/navigation/NavigationBundle;->navDirection:Lcom/iMe/feature/navigation/NavDirection;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/feature/navigation/NavigationBundle;->data:Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/feature/navigation/NavigationBundle;->navDirection:Lcom/iMe/feature/navigation/NavDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigationBundle(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/feature/navigation/NavigationBundle;->data:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", navDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/feature/navigation/NavigationBundle;->navDirection:Lcom/iMe/feature/navigation/NavDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/feature/navigation/NavigationBundle;->data:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/iMe/feature/navigation/NavigationBundle;->navDirection:Lcom/iMe/feature/navigation/NavDirection;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
