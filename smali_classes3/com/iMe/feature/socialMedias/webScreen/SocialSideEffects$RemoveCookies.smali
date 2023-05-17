.class public final Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$RemoveCookies;
.super Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;
.source "SocialSideEffects.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoveCookies"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$RemoveCookies;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$RemoveCookies;

    invoke-direct {v0}, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$RemoveCookies;-><init>()V

    sput-object v0, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$RemoveCookies;->INSTANCE:Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$RemoveCookies;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
