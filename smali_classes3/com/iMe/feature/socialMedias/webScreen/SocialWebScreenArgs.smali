.class public Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;
.super Ljava/lang/Object;
.source "SocialWebScreenArgs.java"

# interfaces
.implements Landroidx/navigation/NavArgs;


# instance fields
.field private final arguments:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;->arguments:Ljava/util/HashMap;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;
    .locals 4

    .line 34
    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;

    invoke-direct {v0}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;-><init>()V

    .line 35
    const-class v1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "socialNetwork"

    .line 36
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    const-class v2, Landroid/os/Parcelable;

    const-class v3, Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Ljava/io/Serializable;

    const-class v3, Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must implement Parcelable or Serializable or must be an Enum."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/feature/socialMedias/SocialNetwork;

    if-eqz p0, :cond_2

    .line 46
    iget-object v2, v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 44
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \"socialNetwork\" is marked as non-null but was passed a null value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required argument \"socialNetwork\" is missing and does not have an android:defaultValue"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 116
    const-class v2, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    check-cast p1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;

    .line 120
    iget-object v2, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;->arguments:Ljava/util/HashMap;

    const-string v3, "socialNetwork"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;->getSocialNetwork()Lcom/iMe/feature/socialMedias/SocialNetwork;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;->getSocialNetwork()Lcom/iMe/feature/socialMedias/SocialNetwork;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;->getSocialNetwork()Lcom/iMe/feature/socialMedias/SocialNetwork;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;->getSocialNetwork()Lcom/iMe/feature/socialMedias/SocialNetwork;

    move-result-object p1

    if-eqz p1, :cond_4

    :goto_0
    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getSocialNetwork()Lcom/iMe/feature/socialMedias/SocialNetwork;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;->arguments:Ljava/util/HashMap;

    const-string v1, "socialNetwork"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/socialMedias/SocialNetwork;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;->getSocialNetwork()Lcom/iMe/feature/socialMedias/SocialNetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;->getSocialNetwork()Lcom/iMe/feature/socialMedias/SocialNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/feature/socialMedias/SocialNetwork;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialWebScreenArgs{socialNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenArgs;->getSocialNetwork()Lcom/iMe/feature/socialMedias/SocialNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
