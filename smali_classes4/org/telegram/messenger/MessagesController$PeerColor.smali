.class public Lorg/telegram/messenger/MessagesController$PeerColor;
.super Ljava/lang/Object;
.source "MessagesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerColor"
.end annotation


# instance fields
.field private color1:I

.field private color2:I

.field private color3:I

.field private darkColor1:I

.field private darkColor2:I

.field private darkColor3:I

.field public id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MessagesController$PeerColor;)I
    .locals 0

    .line 3959
    iget p0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color1:I

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/MessagesController$PeerColor;I)I
    .locals 0

    .line 3959
    iput p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color1:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MessagesController$PeerColor;)I
    .locals 0

    .line 3959
    iget p0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor1:I

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/messenger/MessagesController$PeerColor;I)I
    .locals 0

    .line 3959
    iput p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor1:I

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/messenger/MessagesController$PeerColor;I)I
    .locals 0

    .line 3959
    iput p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color2:I

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/messenger/MessagesController$PeerColor;I)I
    .locals 0

    .line 3959
    iput p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor2:I

    return p1
.end method

.method static synthetic access$402(Lorg/telegram/messenger/MessagesController$PeerColor;I)I
    .locals 0

    .line 3959
    iput p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color3:I

    return p1
.end method

.method static synthetic access$502(Lorg/telegram/messenger/MessagesController$PeerColor;I)I
    .locals 0

    .line 3959
    iput p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor3:I

    return p1
.end method

.method public static fromString(Ljava/lang/String;)Lorg/telegram/messenger/MessagesController$PeerColor;
    .locals 9

    const-string v0, ","

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    .line 4006
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v3, 0x7b

    .line 4008
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    return-object v1

    .line 4011
    :cond_1
    :try_start_0
    new-instance v4, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-direct {v4}, Lorg/telegram/messenger/MessagesController$PeerColor;-><init>()V

    const/4 v5, 0x1

    .line 4012
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    add-int/2addr v3, v5

    .line 4013
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v3, "@"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4014
    aget-object v3, p0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4015
    aget-object v6, v3, v2

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->color1:I

    .line 4016
    array-length v7, v3

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    aget-object v6, v3, v5

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_2
    iput v6, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->color2:I

    .line 4017
    array-length v6, v3

    const/4 v7, 0x3

    if-lt v6, v7, :cond_3

    aget-object v3, v3, v8

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_3
    iget v3, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->color1:I

    :goto_0
    iput v3, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->color3:I

    .line 4018
    array-length v6, p0

    if-lt v6, v8, :cond_6

    .line 4019
    aget-object p0, p0, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4020
    aget-object v0, p0, v2

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor1:I

    .line 4021
    array-length v0, p0

    if-lt v0, v8, :cond_4

    aget-object v0, p0, v5

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_4
    iget v0, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->color1:I

    :goto_1
    iput v0, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor2:I

    .line 4022
    array-length v0, p0

    if-lt v0, v7, :cond_5

    aget-object p0, p0, v8

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_5
    iget p0, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->color1:I

    :goto_2
    iput p0, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor3:I

    goto :goto_3

    .line 4024
    :cond_6
    iget p0, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->color1:I

    iput p0, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor1:I

    .line 4025
    iget p0, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->color2:I

    iput p0, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor2:I

    .line 4026
    iput v3, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor3:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v4

    :catch_0
    move-exception p0

    .line 4030
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    return-object v1
.end method


# virtual methods
.method public appendString(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "#"

    .line 3979
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3980
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    .line 3981
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3982
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color1:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3983
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color2:I

    iget v1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color1:I

    const-string v2, ","

    if-eq v0, v1, :cond_0

    .line 3984
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3985
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color2:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3986
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color3:I

    iget v1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color1:I

    if-eq v0, v1, :cond_0

    .line 3987
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3988
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color3:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3991
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor1:I

    iget v1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color1:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor2:I

    iget v1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color2:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor3:I

    iget v1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color3:I

    if-eq v0, v1, :cond_2

    :cond_1
    const-string v0, "@"

    .line 3992
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3993
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor1:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3994
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor2:I

    iget v1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor1:I

    if-eq v0, v1, :cond_2

    .line 3995
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3996
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor2:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3997
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor3:I

    iget v1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor1:I

    if-eq v0, v1, :cond_2

    .line 3998
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3999
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor3:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v0, "}"

    .line 4003
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getColor1()I
    .locals 1

    .line 3964
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor1:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color1:I

    :goto_0
    return v0
.end method

.method public getColor2()I
    .locals 1

    .line 3967
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor2:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color2:I

    :goto_0
    return v0
.end method

.method public getColor3()I
    .locals 1

    .line 3970
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColor3:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->color3:I

    :goto_0
    return v0
.end method

.method public hasColor2()Z
    .locals 2

    .line 3973
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor2()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasColor3()Z
    .locals 2

    .line 3976
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor3()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
