.class public final Lorg/fork/models/DrawerHeaderSettings;
.super Ljava/lang/Object;
.source "DrawerHeaderSettings.kt"


# instance fields
.field private isShowArchive:Z

.field private isShowAvatar:Z

.field private isShowSubtitle:Z

.field private isShowTitle:Z

.field private subtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

.field private title:Lcom/smedialink/ui/drawer/DrawerAccountData;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/drawer/DrawerAccountData;Lcom/smedialink/ui/drawer/DrawerAccountData;ZZZZ)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/fork/models/DrawerHeaderSettings;->title:Lcom/smedialink/ui/drawer/DrawerAccountData;

    .line 7
    iput-object p2, p0, Lorg/fork/models/DrawerHeaderSettings;->subtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    .line 8
    iput-boolean p3, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowTitle:Z

    .line 9
    iput-boolean p4, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowSubtitle:Z

    .line 10
    iput-boolean p5, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowAvatar:Z

    .line 11
    iput-boolean p6, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowArchive:Z

    return-void
.end method

.method public static synthetic copy$default(Lorg/fork/models/DrawerHeaderSettings;Lcom/smedialink/ui/drawer/DrawerAccountData;Lcom/smedialink/ui/drawer/DrawerAccountData;ZZZZILjava/lang/Object;)Lorg/fork/models/DrawerHeaderSettings;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lorg/fork/models/DrawerHeaderSettings;->title:Lcom/smedialink/ui/drawer/DrawerAccountData;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lorg/fork/models/DrawerHeaderSettings;->subtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowTitle:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowSubtitle:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowAvatar:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-boolean p6, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowArchive:Z

    :cond_5
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lorg/fork/models/DrawerHeaderSettings;->copy(Lcom/smedialink/ui/drawer/DrawerAccountData;Lcom/smedialink/ui/drawer/DrawerAccountData;ZZZZ)Lorg/fork/models/DrawerHeaderSettings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/ui/drawer/DrawerAccountData;
    .locals 1

    iget-object v0, p0, Lorg/fork/models/DrawerHeaderSettings;->title:Lcom/smedialink/ui/drawer/DrawerAccountData;

    return-object v0
.end method

.method public final component2()Lcom/smedialink/ui/drawer/DrawerAccountData;
    .locals 1

    iget-object v0, p0, Lorg/fork/models/DrawerHeaderSettings;->subtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowTitle:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowSubtitle:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowAvatar:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowArchive:Z

    return v0
.end method

.method public final copy(Lcom/smedialink/ui/drawer/DrawerAccountData;Lcom/smedialink/ui/drawer/DrawerAccountData;ZZZZ)Lorg/fork/models/DrawerHeaderSettings;
    .locals 8

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fork/models/DrawerHeaderSettings;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/fork/models/DrawerHeaderSettings;-><init>(Lcom/smedialink/ui/drawer/DrawerAccountData;Lcom/smedialink/ui/drawer/DrawerAccountData;ZZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fork/models/DrawerHeaderSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fork/models/DrawerHeaderSettings;

    iget-object v1, p0, Lorg/fork/models/DrawerHeaderSettings;->title:Lcom/smedialink/ui/drawer/DrawerAccountData;

    iget-object v3, p1, Lorg/fork/models/DrawerHeaderSettings;->title:Lcom/smedialink/ui/drawer/DrawerAccountData;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fork/models/DrawerHeaderSettings;->subtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    iget-object v3, p1, Lorg/fork/models/DrawerHeaderSettings;->subtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowTitle:Z

    iget-boolean v3, p1, Lorg/fork/models/DrawerHeaderSettings;->isShowTitle:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowSubtitle:Z

    iget-boolean v3, p1, Lorg/fork/models/DrawerHeaderSettings;->isShowSubtitle:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowAvatar:Z

    iget-boolean v3, p1, Lorg/fork/models/DrawerHeaderSettings;->isShowAvatar:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowArchive:Z

    iget-boolean p1, p1, Lorg/fork/models/DrawerHeaderSettings;->isShowArchive:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getSubtitle()Lcom/smedialink/ui/drawer/DrawerAccountData;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/fork/models/DrawerHeaderSettings;->subtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    return-object v0
.end method

.method public final getTitle()Lcom/smedialink/ui/drawer/DrawerAccountData;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/fork/models/DrawerHeaderSettings;->title:Lcom/smedialink/ui/drawer/DrawerAccountData;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/fork/models/DrawerHeaderSettings;->title:Lcom/smedialink/ui/drawer/DrawerAccountData;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fork/models/DrawerHeaderSettings;->subtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowTitle:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowSubtitle:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowAvatar:Z

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowArchive:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final isShowArchive()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowArchive:Z

    return v0
.end method

.method public final isShowAvatar()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowAvatar:Z

    return v0
.end method

.method public final isShowSubtitle()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowSubtitle:Z

    return v0
.end method

.method public final isShowTitle()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowTitle:Z

    return v0
.end method

.method public final setShowArchive(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowArchive:Z

    return-void
.end method

.method public final setShowAvatar(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowAvatar:Z

    return-void
.end method

.method public final setShowSubtitle(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowSubtitle:Z

    return-void
.end method

.method public final setShowTitle(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowTitle:Z

    return-void
.end method

.method public final setSubtitle(Lcom/smedialink/ui/drawer/DrawerAccountData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lorg/fork/models/DrawerHeaderSettings;->subtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    return-void
.end method

.method public final setTitle(Lcom/smedialink/ui/drawer/DrawerAccountData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lorg/fork/models/DrawerHeaderSettings;->title:Lcom/smedialink/ui/drawer/DrawerAccountData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawerHeaderSettings(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fork/models/DrawerHeaderSettings;->title:Lcom/smedialink/ui/drawer/DrawerAccountData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fork/models/DrawerHeaderSettings;->subtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isShowTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowTitle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShowSubtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowSubtitle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShowAvatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowAvatar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShowArchive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/fork/models/DrawerHeaderSettings;->isShowArchive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
