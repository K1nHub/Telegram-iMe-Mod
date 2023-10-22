.class public final Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$ShowMenu;
.super Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;
.source "SocialSideEffects.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShowMenu"
.end annotation


# instance fields
.field private final socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;


# direct methods
.method public constructor <init>(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 1

    const-string v0, "socialNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$ShowMenu;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$ShowMenu;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$ShowMenu;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$ShowMenu;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    iget-object p1, p1, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$ShowMenu;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getSocialNetwork()Lcom/iMe/feature/socialMedias/SocialNetwork;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$ShowMenu;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$ShowMenu;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v0}, Lcom/iMe/feature/socialMedias/SocialNetwork;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowMenu(socialNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$ShowMenu;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
