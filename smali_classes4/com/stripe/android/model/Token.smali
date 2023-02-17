.class public Lcom/stripe/android/model/Token;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/Token$TokenType;
    }
.end annotation


# static fields
.field public static final TYPE_CARD:Ljava/lang/String; = "card"


# instance fields
.field private final mCard:Lcom/stripe/android/model/Card;

.field private final mCreated:Ljava/util/Date;

.field private final mId:Ljava/lang/String;

.field private final mLivemode:Z

.field private final mType:Ljava/lang/String;

.field private final mUsed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/Date;Ljava/lang/Boolean;Lcom/stripe/android/model/Card;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/android/model/Token;->mId:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/stripe/android/model/Token;->mType:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/stripe/android/model/Token;->mCreated:Ljava/util/Date;

    .line 40
    iput-boolean p2, p0, Lcom/stripe/android/model/Token;->mLivemode:Z

    .line 41
    iput-object p5, p0, Lcom/stripe/android/model/Token;->mCard:Lcom/stripe/android/model/Card;

    .line 42
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/stripe/android/model/Token;->mUsed:Z

    return-void
.end method


# virtual methods
.method public getCard()Lcom/stripe/android/model/Card;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/stripe/android/model/Token;->mCard:Lcom/stripe/android/model/Card;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/stripe/android/model/Token;->mCreated:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/stripe/android/model/Token;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLivemode()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/stripe/android/model/Token;->mLivemode:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/stripe/android/model/Token;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUsed()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/stripe/android/model/Token;->mUsed:Z

    return v0
.end method
