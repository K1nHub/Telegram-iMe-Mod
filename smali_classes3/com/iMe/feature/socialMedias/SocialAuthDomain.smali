.class public final Lcom/iMe/feature/socialMedias/SocialAuthDomain;
.super Ljava/lang/Object;
.source "SocialDomain.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/iMe/feature/socialMedias/SocialAuthDomain;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final authToken:Ljava/lang/String;

.field private final authUrl:Ljava/lang/String;

.field private final socialType:Lcom/iMe/feature/socialMedias/SocialType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/feature/socialMedias/SocialAuthDomain$Creator;

    invoke-direct {v0}, Lcom/iMe/feature/socialMedias/SocialAuthDomain$Creator;-><init>()V

    sput-object v0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/iMe/feature/socialMedias/SocialAuthDomain;-><init>(Lcom/iMe/feature/socialMedias/SocialType;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/feature/socialMedias/SocialType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "socialType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->socialType:Lcom/iMe/feature/socialMedias/SocialType;

    .line 29
    iput-object p2, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->authUrl:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->authToken:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/feature/socialMedias/SocialType;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 28
    sget-object p1, Lcom/iMe/feature/socialMedias/SocialType;->EMPTY:Lcom/iMe/feature/socialMedias/SocialType;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const-string v0, ""

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 27
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/feature/socialMedias/SocialAuthDomain;-><init>(Lcom/iMe/feature/socialMedias/SocialType;Ljava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Lcom/iMe/feature/socialMedias/SocialAuthDomain;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/feature/socialMedias/SocialAuthDomain;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->socialType:Lcom/iMe/feature/socialMedias/SocialType;

    iget-object v3, p1, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->socialType:Lcom/iMe/feature/socialMedias/SocialType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->authUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->authUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->authToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->authToken:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAuthToken()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthUrl()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->authUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSocialType()Lcom/iMe/feature/socialMedias/SocialType;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->socialType:Lcom/iMe/feature/socialMedias/SocialType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->socialType:Lcom/iMe/feature/socialMedias/SocialType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->authUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->authToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialAuthDomain(socialType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->socialType:Lcom/iMe/feature/socialMedias/SocialType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->authUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->socialType:Lcom/iMe/feature/socialMedias/SocialType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->authUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->authToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
