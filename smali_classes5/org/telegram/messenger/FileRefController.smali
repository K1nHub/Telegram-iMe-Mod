.class public Lorg/telegram/messenger/FileRefController;
.super Lorg/telegram/messenger/BaseController;
.source "FileRefController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileRefController$Waiter;,
        Lorg/telegram/messenger/FileRefController$CachedResult;,
        Lorg/telegram/messenger/FileRefController$Requester;
    }
.end annotation


# static fields
.field private static volatile Instance:[Lorg/telegram/messenger/FileRefController;


# instance fields
.field private favStickersWaiter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileRefController$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field private lastCleanupTime:J

.field private locationRequester:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileRefController$Requester;",
            ">;>;"
        }
    .end annotation
.end field

.field private multiMediaCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private parentRequester:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileRefController$Requester;",
            ">;>;"
        }
    .end annotation
.end field

.field private recentStickersWaiter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileRefController$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field private responseCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileRefController$CachedResult;",
            ">;"
        }
    .end annotation
.end field

.field private savedGifsWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileRefController$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field private wallpaperWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileRefController$Waiter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3YQ4tcADYnj_HypLeIsdQU6YGNc(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$11(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$42owymMjUPbcw0fPfyX73pZyJXQ(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4RfxhRhs7tw7ZHVVv5986ogGMjY(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$9(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4kRGYwZSFfl0X6lswdn1dtJ_pac(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$8(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6J9vhVVDl9YReQ3-1amxR1dIX3g(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onUpdateObjectReference$30(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AG9PyrAKiJHpTY1N0i4VTv2ZoIA(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$12(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AK9Wz2RW6Xq9S18lXRPde78c93M(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->lambda$onUpdateObjectReference$25(Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D9lvHOWS20t_AQcMFYxp_w7_o2g(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$24(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EGg8BmUyy0kEVl4mptub9P343bQ(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$1(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IH7DJEf3JC1_7mw4IyELHLDXdLY(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$2(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JqKZ6vhCVMAlMZltQnIXVLBKm_U(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onUpdateObjectReference$28(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K-ZyrR3wvA_NEL9jzNHJKHidKQU(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$21(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KMGs4ifZ1a_T-DP3m7D1QwbJFCE(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->lambda$sendErrorToObject$31(Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Odl7CRzfdNVb5Pw_a5HDaK7GWZw(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$18(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q9tRdsHUi4UvO-I6Mm-C9z-cqvY(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$22(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RQHxVjP3xoLCJ8O1SSm3uvMt9pE(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$19(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S9hJs80BkM5vOBflc-kXis2vaFI(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onRequestComplete$34(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YXFl6ERJ1XALKonem1ok6fH1Jkg(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$7(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z5k-6TK9zqduZGst78eSRRsslvg(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onRequestComplete$35(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aHpdAvW0LRqRS__tijlbXQopClM(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$0(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cFqty5QLxuSaws86XZxxA1pxrm4(Lorg/telegram/messenger/FileRefController;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$sendErrorToObject$32([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eHEcXFDJbvtkeHwYE31yNwfP5EU(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$17(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$esHQkutwtaWjog6kQAJKoOQro3U(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f1WwAh63OxXByXLWPxRXPOH98pY(Lorg/telegram/tgnet/TLRPC$TL_theme;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/FileRefController;->lambda$onRequestComplete$33(Lorg/telegram/tgnet/TLRPC$TL_theme;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fUT4NRhokmggwIZ9BCwqfqC9jGw(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$20(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hdy5JLeqWCDjTarpYZa724cIjjQ(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mJRhDur0fhQrd1OdhEfFliapi4w(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$3(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nRq-mQT1M4tSDdCDch4HlOO-DPE(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$6(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p603gEm-FOLdBtM0GkQdhtvJRKU(Lorg/telegram/messenger/FileRefController;Lorg/telegram/messenger/FileRefController$Requester;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onUpdateObjectReference$26(Lorg/telegram/messenger/FileRefController$Requester;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qdx6NJVqZYYBdD6ZAtl4p2C1ABc(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$23(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sTTuw77NIbzPyFcJ0dd6b9pck9Q(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onRequestComplete$37(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t8uBkP0psAtivdXtHFhwkNqkXRo(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$thvOooozSiJJzt4FE-PV0Id4034(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$5(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uC3n57mvck4vXC7UuLiQbHk9HNc(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$10(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w2wDNRKS0820TSlSxEHqwVkWuzQ(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$4(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xEl1Y0Rg3Ub7C56vP9nl0MO2_-w(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onRequestComplete$36(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yb6uUsegFQ9ceB1zZEOh7ATraI0(Lorg/telegram/messenger/FileRefController;Lorg/telegram/messenger/FileRefController$Requester;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onUpdateObjectReference$27(Lorg/telegram/messenger/FileRefController$Requester;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zEPRyIMZ-4ZCF2pmFTZeuE0VIOo(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onUpdateObjectReference$29(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/FileRefController;

    .line 52
    sput-object v0, Lorg/telegram/messenger/FileRefController;->Instance:[Lorg/telegram/messenger/FileRefController;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 68
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->locationRequester:Ljava/util/HashMap;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->parentRequester:Ljava/util/HashMap;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/FileRefController;->lastCleanupTime:J

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->wallpaperWaiters:Ljava/util/ArrayList;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->savedGifsWaiters:Ljava/util/ArrayList;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->recentStickersWaiter:Ljava/util/ArrayList;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->favStickersWaiter:Ljava/util/ArrayList;

    return-void
.end method

.method private broadcastWaitersData(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileRefController$Waiter;",
            ">;",
            "Lorg/telegram/tgnet/TLObject;",
            ")V"
        }
    .end annotation

    .line 314
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 315
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FileRefController$Waiter;

    .line 316
    invoke-static {v3}, Lorg/telegram/messenger/FileRefController$Waiter;->access$500(Lorg/telegram/messenger/FileRefController$Waiter;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lorg/telegram/messenger/FileRefController$Waiter;->access$600(Lorg/telegram/messenger/FileRefController$Waiter;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x0

    move-object v4, p0

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private cleanupCache()V
    .locals 10

    .line 1002
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/FileRefController;->lastCleanupTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 1005
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/FileRefController;->lastCleanupTime:J

    const/4 v0, 0x0

    .line 1008
    iget-object v1, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1009
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/FileRefController$CachedResult;

    .line 1010
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v5}, Lorg/telegram/messenger/FileRefController$CachedResult;->access$800(Lorg/telegram/messenger/FileRefController$CachedResult;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-ltz v7, :cond_1

    if-nez v0, :cond_2

    .line 1012
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 1018
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_4

    .line 1019
    iget-object v3, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private getCachedResponse(Ljava/lang/String;)Lorg/telegram/messenger/FileRefController$CachedResult;
    .locals 6

    .line 1025
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileRefController$CachedResult;

    if-eqz v0, :cond_0

    .line 1026
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0}, Lorg/telegram/messenger/FileRefController$CachedResult;->access$800(Lorg/telegram/messenger/FileRefController$CachedResult;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 1027
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private getFileReference(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1126
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_4

    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    if-nez v2, :cond_0

    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1129
    :cond_0
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 1130
    aput-boolean v1, p3, v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p4

    move-object v10, p3

    .line 1131
    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/FileRefController;->getPeerReferenceReplacement(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$InputFileLocation;[Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v3, [B

    return-object p1

    :cond_1
    return-object v0

    .line 1136
    :cond_2
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0, v0, p2, p3}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B

    move-result-object v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p4

    move-object v10, p3

    .line 1137
    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/FileRefController;->getPeerReferenceReplacement(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$InputFileLocation;[Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array p1, v3, [B

    return-object p1

    :cond_3
    if-nez v0, :cond_4

    .line 1141
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0, v0, p2, p3}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B

    move-result-object v0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p4

    move-object v10, p3

    .line 1142
    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/FileRefController;->getPeerReferenceReplacement(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$InputFileLocation;[Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v3, [B

    return-object p1

    :cond_4
    :goto_0
    return-object v0
.end method

.method private getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 1048
    :cond_0
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    if-eqz v1, :cond_1

    .line 1049
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    cmp-long p2, p3, v1

    if-nez p2, :cond_4

    .line 1050
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    return-object p1

    .line 1053
    :cond_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1054
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1055
    invoke-direct {p0, v4, p2, p3}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B

    move-result-object v5

    if-eqz p3, :cond_2

    .line 1056
    aget-boolean v6, p3, v2

    if-eqz v6, :cond_2

    .line 1057
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    aput-object p3, p4, v2

    .line 1058
    aget-object p3, p4, v2

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 1059
    aget-object p3, p4, v2

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 1060
    aget-object p3, p4, v2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    iput p2, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 1061
    aget-object p2, p4, v2

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 1062
    aget-object p2, p4, v2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 1063
    aget-object p2, p4, v2

    iget-object p3, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    return-object p1

    :cond_2
    if-eqz v5, :cond_3

    return-object v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private getFileReference(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1186
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1189
    :cond_0
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    if-ne v1, v2, :cond_2

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    cmp-long p2, v1, v3

    if-nez p2, :cond_2

    .line 1190
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->file_reference:[B

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 1191
    aput-boolean v0, p3, p2

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1154
    :cond_0
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    if-eqz v1, :cond_2

    .line 1155
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    cmp-long p2, p3, v1

    if-nez p2, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    :cond_1
    return-object v0

    .line 1156
    :cond_2
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    if-eqz v1, :cond_5

    .line 1157
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    .line 1158
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1159
    invoke-direct {p0, v4, p2, p3}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B

    move-result-object v5

    if-eqz p3, :cond_3

    .line 1160
    aget-boolean v6, p3, v2

    if-eqz v6, :cond_3

    .line 1161
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    aput-object p3, p4, v2

    .line 1162
    aget-object p3, p4, v2

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 1163
    aget-object p3, p4, v2

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 1164
    aget-object p3, p4, v2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    iput p2, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 1165
    aget-object p2, p4, v2

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 1166
    aget-object p2, p4, v2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 1167
    aget-object p2, p4, v2

    iget-object p3, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    return-object p1

    :cond_3
    if-eqz v5, :cond_4

    return-object v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private getFileReference(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B
    .locals 1

    if-eqz p1, :cond_1

    .line 1179
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1182
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFileReference(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B
    .locals 10

    if-eqz p1, :cond_3

    .line 1109
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_3

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1112
    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0, v0, p2, p3}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    .line 1113
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileRefController;->getPeerReferenceReplacement(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$InputFileLocation;[Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-array p1, v2, [B

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    .line 1117
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0, v0, p2, p3}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p4

    move-object v9, p3

    .line 1118
    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/FileRefController;->getPeerReferenceReplacement(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$InputFileLocation;[Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v2, [B

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFileReference(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B
    .locals 7

    .line 1199
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1203
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 1207
    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1208
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1209
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;

    .line 1210
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    .line 1211
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0, v6, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v6

    if-eqz v6, :cond_2

    return-object v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1218
    :cond_4
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v0, :cond_8

    .line 1219
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    .line 1220
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Page;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0, v3, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v3

    if-eqz v3, :cond_5

    return-object v3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1225
    :cond_6
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_8

    .line 1226
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-direct {p0, v2, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_7

    return-object v2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance(I)Lorg/telegram/messenger/FileRefController;
    .locals 3

    .line 55
    sget-object v0, Lorg/telegram/messenger/FileRefController;->Instance:[Lorg/telegram/messenger/FileRefController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lorg/telegram/messenger/FileRefController;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/FileRefController;->Instance:[Lorg/telegram/messenger/FileRefController;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lorg/telegram/messenger/FileRefController;->Instance:[Lorg/telegram/messenger/FileRefController;

    new-instance v2, Lorg/telegram/messenger/FileRefController;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/FileRefController;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    .line 62
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getKeyForParentObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 72
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    if-eqz v0, :cond_0

    const-string p0, "premium_promo"

    return-object p0

    .line 74
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "available_reaction_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 76
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;

    if-eqz v0, :cond_2

    .line 77
    check-cast p0, Lorg/telegram/tgnet/TLRPC$BotInfo;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bot_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    if-eqz v0, :cond_3

    .line 80
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 81
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach_menu_bot_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 83
    :cond_3
    instance-of v0, p0, Lorg/telegram/messenger/MessageObject;

    const-string v1, "message"

    const-string v2, "_"

    if-eqz v0, :cond_4

    .line 84
    check-cast p0, Lorg/telegram/messenger/MessageObject;

    .line 85
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getChannelId()J

    move-result-wide v3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_4
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_6

    .line 88
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Message;

    .line 89
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_5

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_0

    :cond_5
    const-wide/16 v3, 0x0

    .line 90
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 91
    :cond_6
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_7

    .line 92
    check-cast p0, Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "webpage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 94
    :cond_7
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_8

    .line 95
    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 97
    :cond_8
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_9

    .line 98
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 100
    :cond_9
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 101
    check-cast p0, Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "str"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 103
    :cond_a
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const-string/jumbo v1, "set"

    if-eqz v0, :cond_b

    .line 104
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_b
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v0, :cond_c

    .line 107
    check-cast p0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :cond_c
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_d

    .line 110
    check-cast p0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 112
    :cond_d
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_e

    .line 113
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_e
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v0, :cond_f

    .line 116
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    if-eqz p0, :cond_10

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_10
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private getPeerReferenceReplacement(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$InputFileLocation;[Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p6, :cond_2

    .line 1075
    aget-boolean p6, p6, v0

    if-eqz p6, :cond_2

    .line 1076
    new-instance p6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    invoke-direct {p6}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;-><init>()V

    .line 1077
    iget-wide v1, p4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    iput-wide v1, p6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 1078
    iput-wide v1, p6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 1079
    iget p4, p4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    iput p4, p6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 1080
    iput-boolean p3, p6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->big:Z

    if-eqz p1, :cond_0

    .line 1083
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    .line 1084
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide p3, p2, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    .line 1085
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide p3, p2, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 1086
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    iput-wide p3, p6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->photo_id:J

    goto :goto_1

    .line 1089
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1090
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .line 1091
    iget-wide p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide p3, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    .line 1092
    iget-wide p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide p3, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_0

    .line 1095
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    .line 1096
    iget-wide p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide p3, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    .line 1099
    :goto_0
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_id:J

    iput-wide p2, p6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->photo_id:J

    move-object p2, p1

    .line 1101
    :goto_1
    iput-object p2, p6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1102
    aput-object p6, p5, v0

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public static isFileRefError(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "FILEREF_EXPIRED"

    .line 1236
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FILE_REFERENCE_EXPIRED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FILE_REFERENCE_EMPTY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    const-string v0, "FILE_REFERENCE_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSameReference([B[B)Z
    .locals 0

    .line 503
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method private static synthetic lambda$onRequestComplete$33(Lorg/telegram/tgnet/TLRPC$TL_theme;)V
    .locals 0

    .line 883
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->setThemeFileReference(Lorg/telegram/tgnet/TLRPC$TL_theme;)V

    return-void
.end method

.method private synthetic lambda$onRequestComplete$34(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2

    .line 897
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    return-void
.end method

.method private synthetic lambda$onRequestComplete$35(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 2

    .line 906
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method

.method private synthetic lambda$onRequestComplete$36(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 2

    .line 925
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method

.method private synthetic lambda$onRequestComplete$37(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 1

    .line 953
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaDataController;->replaceStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method private synthetic lambda$onUpdateObjectReference$25(Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V
    .locals 7

    .line 548
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    const/4 v1, 0x5

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequestMulti(Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Z)V

    return-void
.end method

.method private synthetic lambda$onUpdateObjectReference$26(Lorg/telegram/messenger/FileRefController$Requester;)V
    .locals 10

    .line 565
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v6, v6, v7

    check-cast v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v7, 0x6

    aget-object p1, p1, v7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;ZLorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/lang/Object;Ljava/util/HashMap;Z)V

    return-void
.end method

.method private synthetic lambda$onUpdateObjectReference$27(Lorg/telegram/messenger/FileRefController$Requester;)V
    .locals 10

    .line 581
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v6, v6, v7

    check-cast v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v7, 0x6

    aget-object p1, p1, v7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;ZLorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/lang/Object;Ljava/util/HashMap;Z)V

    return-void
.end method

.method private static synthetic lambda$onUpdateObjectReference$28(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onUpdateObjectReference$29(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onUpdateObjectReference$30(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$0(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p4, v0

    .line 326
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    if-eqz v0, :cond_0

    .line 327
    move-object v0, p3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    .line 328
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p4, v2}, Lorg/telegram/messenger/MediaDataController;->processLoadedPremiumPromo(Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;IZ)V

    :cond_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 331
    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$1(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 336
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$10(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 392
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$11(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 398
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$12(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 402
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 409
    iget-object p2, p0, Lorg/telegram/messenger/FileRefController;->wallpaperWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p1}, Lorg/telegram/messenger/FileRefController;->broadcastWaitersData(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 415
    iget-object p2, p0, Lorg/telegram/messenger/FileRefController;->savedGifsWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p1}, Lorg/telegram/messenger/FileRefController;->broadcastWaitersData(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 421
    iget-object p2, p0, Lorg/telegram/messenger/FileRefController;->recentStickersWaiter:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p1}, Lorg/telegram/messenger/FileRefController;->broadcastWaitersData(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 427
    iget-object p2, p0, Lorg/telegram/messenger/FileRefController;->favStickersWaiter:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p1}, Lorg/telegram/messenger/FileRefController;->broadcastWaitersData(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$17(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 440
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$18(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 449
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$19(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 457
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$2(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 341
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$20(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 467
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$21(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 471
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$22(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 485
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$23(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 492
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$24(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 496
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$3(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 346
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$4(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 354
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$5(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 359
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$6(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 363
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$7(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 372
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$8(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 381
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$9(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 387
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    return-void
.end method

.method private synthetic lambda$sendErrorToObject$31(Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V
    .locals 7

    .line 651
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    const/4 v1, 0x5

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequestMulti(Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Z)V

    return-void
.end method

.method private synthetic lambda$sendErrorToObject$32([Ljava/lang/Object;)V
    .locals 10

    .line 654
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x2

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v4, p1, v4

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    const/4 v5, 0x4

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x5

    aget-object v6, p1, v6

    check-cast v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    const/4 v7, 0x6

    aget-object p1, p1, v7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;ZLorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/lang/Object;Ljava/util/HashMap;Z)V

    return-void
.end method

.method private onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z
    .locals 26

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 690
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    if-eqz v10, :cond_0

    const-string v0, "premium_promo"

    :goto_0
    move-object v11, v0

    goto :goto_1

    .line 692
    :cond_0
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "wallpaper"

    goto :goto_0

    .line 694
    :cond_1
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;

    if-eqz v0, :cond_2

    const-string v0, "gif"

    goto :goto_0

    .line 696
    :cond_2
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;

    if-eqz v0, :cond_3

    const-string v0, "recent"

    goto :goto_0

    .line 698
    :cond_3
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_favedStickers;

    if-eqz v0, :cond_4

    const-string v0, "fav"

    goto :goto_0

    :cond_4
    move-object v11, v8

    :goto_1
    const/4 v13, 0x1

    if-eqz v8, :cond_a

    .line 702
    iget-object v0, v6, Lorg/telegram/messenger/FileRefController;->parentRequester:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_a

    .line 704
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_2
    if-ge v5, v15, :cond_8

    .line 705
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileRefController$Requester;

    .line 706
    invoke-static {v0}, Lorg/telegram/messenger/FileRefController$Requester;->access$700(Lorg/telegram/messenger/FileRefController$Requester;)Z

    move-result v1

    if-eqz v1, :cond_5

    move/from16 v17, v5

    goto :goto_4

    .line 709
    :cond_5
    invoke-static {v0}, Lorg/telegram/messenger/FileRefController$Requester;->access$300(Lorg/telegram/messenger/FileRefController$Requester;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p4, :cond_6

    if-nez v16, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v17, v5

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v16, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v5, v17, 0x1

    goto :goto_2

    :cond_8
    if-eqz v16, :cond_9

    .line 714
    invoke-direct {v6, v11, v9}, Lorg/telegram/messenger/FileRefController;->putReponseToCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 716
    :cond_9
    iget-object v0, v6, Lorg/telegram/messenger/FileRefController;->parentRequester:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    const/16 v16, 0x0

    .line 722
    :goto_5
    iget-object v0, v6, Lorg/telegram/messenger/FileRefController;->locationRequester:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_b

    return v16

    .line 727
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_6
    if-ge v3, v1, :cond_4f

    .line 728
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/FileRefController$Requester;

    .line 729
    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$700(Lorg/telegram/messenger/FileRefController$Requester;)Z

    move-result v14

    if-eqz v14, :cond_c

    move/from16 v7, p5

    move-object/from16 v18, v0

    :goto_7
    const/4 v0, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x0

    goto/16 :goto_21

    .line 732
    :cond_c
    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v14

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    if-nez v14, :cond_d

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v14

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    if-eqz v14, :cond_e

    :cond_d
    new-array v5, v13, [Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    new-array v4, v13, [Z

    .line 736
    :cond_e
    invoke-static {v11, v13}, Lorg/telegram/messenger/FileRefController$Requester;->access$702(Lorg/telegram/messenger/FileRefController$Requester;Z)Z

    .line 737
    instance-of v14, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz v14, :cond_1b

    .line 738
    move-object v14, v9

    check-cast v14, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 739
    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_19

    .line 740
    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v15, :cond_18

    .line 741
    iget-object v13, v14, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Message;

    .line 742
    iget-object v12, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v12, :cond_12

    move-object/from16 v18, v0

    .line 743
    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_f

    .line 744
    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v0, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    goto :goto_9

    .line 745
    :cond_f
    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    if-eqz v0, :cond_10

    .line 746
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v0, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    if-nez v0, :cond_14

    .line 748
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v0, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    goto :goto_9

    .line 750
    :cond_10
    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_11

    .line 751
    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v0, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    goto :goto_9

    .line 752
    :cond_11
    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_15

    .line 753
    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v0, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    goto :goto_9

    :cond_12
    move-object/from16 v18, v0

    .line 755
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v12, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    if-nez v12, :cond_13

    instance-of v12, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;

    if-eqz v12, :cond_15

    .line 756
    :cond_13
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v0, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    :cond_14
    :goto_9
    move-object v8, v0

    :cond_15
    if-eqz v8, :cond_17

    if-eqz p4, :cond_16

    .line 760
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v12, v14, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v0, v13, v2, v12, v15}, Lorg/telegram/messenger/MessagesStorage;->replaceMessageIfExists(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto :goto_a

    :cond_16
    const/4 v15, 0x0

    goto :goto_a

    :cond_17
    const/4 v0, 0x0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v18

    const/4 v13, 0x1

    goto/16 :goto_8

    :cond_18
    move-object/from16 v18, v0

    :goto_a
    const/4 v0, 0x0

    if-nez v8, :cond_1a

    .line 766
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v12, v14, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v14, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v13, v14, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v14, 0x1

    invoke-virtual {v2, v12, v0, v13, v14}, Lorg/telegram/messenger/MessagesStorage;->replaceMessageIfExists(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 767
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1a

    const-string v0, "file ref not found in messages, replacing message"

    .line 768
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_b

    :cond_19
    move-object/from16 v18, v0

    :cond_1a
    :goto_b
    const/4 v14, 0x0

    goto/16 :goto_1f

    :cond_1b
    move-object/from16 v18, v0

    if-eqz v10, :cond_1d

    .line 773
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    .line 774
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 775
    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v2, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_1c

    goto :goto_b

    .line 780
    :cond_1d
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;

    const-wide/16 v12, 0x3e8

    if-eqz v0, :cond_25

    .line 781
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;

    .line 782
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;->reactions:Ljava/util/ArrayList;

    iget v15, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;->hash:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    div-long v12, v19, v12

    long-to-int v13, v12

    const/4 v12, 0x0

    invoke-virtual {v2, v14, v15, v13, v12}, Lorg/telegram/messenger/MediaDataController;->processLoadedReactions(Ljava/util/List;IIZ)V

    .line 784
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 785
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v12

    invoke-direct {v6, v8, v12, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_1f

    goto :goto_c

    .line 789
    :cond_1f
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->appear_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v12

    invoke-direct {v6, v8, v12, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_20

    goto :goto_c

    .line 793
    :cond_20
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v12

    invoke-direct {v6, v8, v12, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_21

    goto :goto_c

    .line 797
    :cond_21
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v12

    invoke-direct {v6, v8, v12, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_22

    goto :goto_c

    .line 801
    :cond_22
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->effect_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v12

    invoke-direct {v6, v8, v12, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_23

    goto :goto_c

    .line 805
    :cond_23
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v12

    invoke-direct {v6, v8, v12, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_24

    goto :goto_c

    .line 809
    :cond_24
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v2, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_1e

    :goto_c
    goto/16 :goto_b

    .line 814
    :cond_25
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;

    if-eqz v0, :cond_27

    .line 815
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;

    .line 816
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v12, v0, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;->users:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 817
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v12, v0, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v12, v13}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 818
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;->full_user:Lorg/telegram/tgnet/TLRPC$UserFull;

    .line 819
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

    if-eqz v2, :cond_1a

    .line 821
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    const/4 v12, 0x1

    invoke-virtual {v8, v0, v12}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 823
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v0, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_26

    move/from16 v7, p5

    goto/16 :goto_7

    .line 829
    :cond_26
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v2

    invoke-direct {v6, v0, v2, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    goto/16 :goto_b

    .line 831
    :cond_27
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;

    if-eqz v0, :cond_2d

    .line 832
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;->bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 833
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->icons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    .line 834
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v14

    invoke-direct {v6, v8, v14, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_28

    :cond_29
    if-eqz p4, :cond_2c

    .line 840
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v2

    .line 841
    new-instance v14, Ljava/util/ArrayList;

    iget-object v15, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v15, 0x0

    .line 842
    :goto_d
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v15, v12, :cond_2b

    .line 843
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 844
    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    move-object/from16 v25, v8

    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    cmp-long v21, v12, v7

    if-nez v21, :cond_2a

    .line 845
    invoke-virtual {v14, v15, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_2a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p1

    move-object/from16 v8, v25

    goto :goto_d

    :cond_2b
    move-object/from16 v25, v8

    .line 849
    :goto_e
    iput-object v14, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    .line 850
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->hash:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v13, v12

    const/16 v24, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-wide/from16 v21, v7

    move/from16 v23, v13

    invoke-virtual/range {v19 .. v24}, Lorg/telegram/messenger/MediaDataController;->processLoadedMenuBots(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;JIZ)V

    goto :goto_f

    :cond_2c
    move-object/from16 v25, v8

    :goto_f
    move-object/from16 v8, v25

    goto/16 :goto_b

    .line 852
    :cond_2d
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    if-eqz v0, :cond_2f

    .line 853
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 854
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v7

    invoke-direct {v6, v2, v7, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-nez v2, :cond_2e

    .line 856
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v2

    invoke-direct {v6, v0, v2, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    :cond_2e
    :goto_10
    move-object v8, v2

    goto/16 :goto_b

    .line 858
    :cond_2f
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_30

    .line 859
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v2

    invoke-direct {v6, v0, v2, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_b

    .line 860
    :cond_30
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;

    if-eqz v0, :cond_33

    .line 861
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;

    .line 862
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v2, :cond_32

    .line 863
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v12

    invoke-direct {v6, v8, v12, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_31

    goto :goto_12

    :cond_31
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_32
    :goto_12
    if-eqz v8, :cond_1a

    if-eqz p4, :cond_1a

    .line 869
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_account_wallPapers;->wallpapers:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v2, v0, v7}, Lorg/telegram/messenger/MessagesStorage;->putWallpapers(Ljava/util/ArrayList;I)V

    goto/16 :goto_b

    .line 871
    :cond_33
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_34

    .line 872
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 873
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v7

    invoke-direct {v6, v2, v7, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_2e

    if-eqz p4, :cond_2e

    .line 875
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 876
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/MessagesStorage;->putWallpapers(Ljava/util/ArrayList;I)V

    goto :goto_10

    .line 879
    :cond_34
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v0, :cond_35

    .line 880
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 881
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v7

    invoke-direct {v6, v2, v7, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_2e

    if-eqz p4, :cond_2e

    .line 883
    new-instance v7, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda9;

    invoke-direct {v7, v0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/tgnet/TLRPC$TL_theme;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_10

    .line 885
    :cond_35
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$Vector;

    if-eqz v0, :cond_3b

    .line 886
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 887
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 888
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x0

    :goto_13
    if-ge v15, v2, :cond_1a

    .line 889
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 890
    instance-of v12, v7, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v12, :cond_37

    .line 891
    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    .line 892
    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v7, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz p4, :cond_36

    if-eqz v8, :cond_36

    .line 894
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 895
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v19, v0

    const/4 v0, 0x1

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14, v0, v0}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 897
    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda7;

    invoke-direct {v0, v6, v7}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_14

    :cond_36
    move-object/from16 v19, v0

    goto :goto_14

    :cond_37
    move-object/from16 v19, v0

    .line 899
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_39

    .line 900
    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 901
    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v0

    invoke-direct {v6, v7, v0, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    if-eqz p4, :cond_38

    if-eqz v0, :cond_38

    .line 903
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 904
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v8, v14, v14}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 906
    new-instance v8, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda2;

    invoke-direct {v8, v6, v7}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_38
    move-object v8, v0

    :cond_39
    :goto_14
    if-eqz v8, :cond_3a

    goto/16 :goto_b

    :cond_3a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    goto :goto_13

    .line 914
    :cond_3b
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    if-eqz v0, :cond_3d

    .line 915
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    .line 916
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 917
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x0

    :goto_15
    if-ge v15, v2, :cond_1a

    .line 918
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 919
    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v7, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_3c

    if-eqz p4, :cond_1a

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 923
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v0, v12, v12}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 925
    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda3;

    invoke-direct {v0, v6, v7}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1f

    :cond_3c
    const/4 v14, 0x0

    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    :cond_3d
    const/4 v14, 0x0

    .line 931
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;

    if-eqz v0, :cond_40

    .line 932
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;

    .line 933
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_SavedGifs;->gifs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x0

    :goto_16
    if-ge v15, v2, :cond_3f

    .line 934
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$messages_SavedGifs;->gifs:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v7, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_3e

    goto :goto_17

    :cond_3e
    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    :cond_3f
    :goto_17
    if-eqz p4, :cond_4b

    .line 940
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v19

    const/16 v20, 0x0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_SavedGifs;->gifs:Ljava/util/ArrayList;

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v24}, Lorg/telegram/messenger/MediaDataController;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZIZ)V

    goto/16 :goto_1f

    .line 942
    :cond_40
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_43

    .line 943
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v8, :cond_42

    .line 945
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x0

    :goto_18
    if-ge v15, v2, :cond_42

    .line 946
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v7, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_41

    goto :goto_19

    :cond_41
    add-int/lit8 v15, v15, 0x1

    goto :goto_18

    :cond_42
    :goto_19
    if-eqz p4, :cond_4b

    .line 953
    new-instance v2, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v6, v0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1f

    .line 955
    :cond_43
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;

    if-eqz v0, :cond_46

    .line 956
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;

    .line 957
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x0

    :goto_1a
    if-ge v15, v2, :cond_45

    .line 958
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v7, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_44

    goto :goto_1b

    :cond_44
    add-int/lit8 v15, v15, 0x1

    goto :goto_1a

    :cond_45
    :goto_1b
    if-eqz p4, :cond_4b

    .line 964
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v19

    const/16 v20, 0x0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->stickers:Ljava/util/ArrayList;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v24}, Lorg/telegram/messenger/MediaDataController;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZIZ)V

    goto :goto_1f

    .line 966
    :cond_46
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_favedStickers;

    if-eqz v0, :cond_49

    .line 967
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_favedStickers;

    .line 968
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_FavedStickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x0

    :goto_1c
    if-ge v15, v2, :cond_48

    .line 969
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$messages_FavedStickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v7, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_47

    goto :goto_1d

    :cond_47
    add-int/lit8 v15, v15, 0x1

    goto :goto_1c

    :cond_48
    :goto_1d
    if-eqz p4, :cond_4b

    .line 975
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v19

    const/16 v20, 0x2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_FavedStickers;->stickers:Ljava/util/ArrayList;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v24}, Lorg/telegram/messenger/MediaDataController;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZIZ)V

    goto :goto_1f

    .line 977
    :cond_49
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$photos_Photos;

    if-eqz v0, :cond_4b

    .line 978
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$photos_Photos;

    .line 979
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x0

    :goto_1e
    if-ge v15, v2, :cond_4b

    .line 980
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v8

    invoke-direct {v6, v7, v8, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v8

    if-eqz v8, :cond_4a

    goto :goto_1f

    :cond_4a
    add-int/lit8 v15, v15, 0x1

    goto :goto_1e

    :cond_4b
    :goto_1f
    if-eqz v8, :cond_4d

    const/4 v0, 0x0

    if-eqz v5, :cond_4c

    .line 987
    aget-object v2, v5, v0

    move/from16 v7, p5

    goto :goto_20

    :cond_4c
    move/from16 v7, p5

    move-object v2, v14

    :goto_20
    invoke-direct {v6, v11, v8, v2, v7}, Lorg/telegram/messenger/FileRefController;->onUpdateObjectReference(Lorg/telegram/messenger/FileRefController$Requester;[BLorg/telegram/tgnet/TLRPC$InputFileLocation;Z)Z

    move-result v2

    const/4 v11, 0x1

    if-eqz v2, :cond_4e

    const/16 v16, 0x1

    goto :goto_21

    :cond_4d
    move/from16 v7, p5

    const/4 v0, 0x0

    .line 991
    invoke-static {v11}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v11, 0x1

    invoke-direct {v6, v2, v11}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    :cond_4e
    :goto_21
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, p1

    move-object/from16 v0, v18

    const/4 v13, 0x1

    goto/16 :goto_6

    .line 994
    :cond_4f
    iget-object v0, v6, Lorg/telegram/messenger/FileRefController;->locationRequester:Ljava/util/HashMap;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v16, :cond_50

    .line 996
    invoke-direct {v6, v1, v9}, Lorg/telegram/messenger/FileRefController;->putReponseToCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    :cond_50
    return v16
.end method

.method private onUpdateObjectReference(Lorg/telegram/messenger/FileRefController$Requester;[BLorg/telegram/tgnet/TLRPC$InputFileLocation;Z)Z
    .locals 5

    .line 508
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileref updated for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$300(Lorg/telegram/messenger/FileRefController$Requester;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 511
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    .line 512
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p3

    aget-object p3, p3, v2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    .line 513
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_1

    return v2

    .line 518
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    .line 519
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v4, :cond_3

    .line 520
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz p4, :cond_2

    .line 521
    iget-object p4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_2

    return v1

    .line 524
    :cond_2
    iget-object p4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto :goto_0

    .line 525
    :cond_3
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz v4, :cond_5

    .line 526
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz p4, :cond_4

    .line 527
    iget-object p4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_4

    return v1

    .line 530
    :cond_4
    iget-object p4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iput-object p2, p4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 533
    :cond_5
    :goto_0
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->multi_media:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_6

    return v2

    :cond_6
    const/4 p2, 0x3

    .line 537
    aget-object p2, v0, p2

    check-cast p2, Ljava/util/ArrayList;

    const/4 p4, 0x0

    .line 538
    invoke-virtual {p2, p1, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p4, 0x1

    .line 541
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_8

    .line 542
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    const/4 p4, 0x0

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    if-eqz p4, :cond_22

    .line 547
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    new-instance p1, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p3, v0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 550
    :cond_9
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_e

    .line 551
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p3

    aget-object p3, p3, v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    .line 552
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v0, :cond_b

    .line 553
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz p4, :cond_a

    .line 554
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_a

    return v1

    .line 557
    :cond_a
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto :goto_2

    .line 558
    :cond_b
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz v0, :cond_d

    .line 559
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz p4, :cond_c

    .line 560
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_c

    return v1

    .line 563
    :cond_c
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 565
    :cond_d
    :goto_2
    new-instance p2, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/messenger/FileRefController$Requester;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 566
    :cond_e
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    if-eqz v0, :cond_13

    .line 567
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p3

    aget-object p3, p3, v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    .line 568
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v0, :cond_10

    .line 569
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz p4, :cond_f

    .line 570
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_f

    return v1

    .line 573
    :cond_f
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto :goto_3

    .line 574
    :cond_10
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz v0, :cond_12

    .line 575
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz p4, :cond_11

    .line 576
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_11

    return v1

    .line 579
    :cond_11
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 581
    :cond_12
    :goto_3
    new-instance p2, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/messenger/FileRefController$Requester;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 582
    :cond_13
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    if-eqz v0, :cond_15

    .line 583
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    if-eqz p4, :cond_14

    .line 584
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p3, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_14

    return v1

    .line 587
    :cond_14
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 588
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    sget-object p3, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda36;->INSTANCE:Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda36;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_6

    .line 591
    :cond_15
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    if-eqz v0, :cond_17

    .line 592
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    if-eqz p4, :cond_16

    .line 593
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p3, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_16

    return v1

    .line 596
    :cond_16
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 597
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    sget-object p3, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda37;->INSTANCE:Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda37;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_6

    .line 600
    :cond_17
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    if-eqz v0, :cond_19

    .line 601
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    if-eqz p4, :cond_18

    .line 602
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p3, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_18

    return v1

    .line 605
    :cond_18
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 606
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    sget-object p3, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda35;->INSTANCE:Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda35;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_6

    .line 609
    :cond_19
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    if-eqz v0, :cond_1e

    .line 610
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p3

    aget-object p3, p3, v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    .line 611
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    if-eqz v3, :cond_1b

    .line 612
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    if-eqz p4, :cond_1a

    .line 613
    iget-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_1a

    return v1

    .line 616
    :cond_1a
    iget-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto :goto_4

    .line 617
    :cond_1b
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    if-eqz v3, :cond_1d

    .line 618
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    if-eqz p4, :cond_1c

    .line 619
    iget-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_1c

    return v1

    .line 622
    :cond_1c
    iget-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iput-object p2, p4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 624
    :cond_1d
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Lorg/telegram/tgnet/RequestDelegate;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_6

    .line 625
    :cond_1e
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v0, :cond_22

    .line 626
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$100(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz p3, :cond_20

    if-eqz p4, :cond_1f

    .line 628
    iget-object p1, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v1

    .line 631
    :cond_1f
    iput-object p3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    goto :goto_5

    :cond_20
    if-eqz p4, :cond_21

    .line 633
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-direct {p0, p3, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_21

    return v1

    .line 636
    :cond_21
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->access$200(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object p1

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 638
    :goto_5
    iput-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->requestingReference:Z

    .line 639
    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    :cond_22
    :goto_6
    return v2
.end method

.method private putReponseToCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    .line 1034
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileRefController$CachedResult;

    if-nez v0, :cond_0

    .line 1036
    new-instance v0, Lorg/telegram/messenger/FileRefController$CachedResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/FileRefController$CachedResult;-><init>(Lorg/telegram/messenger/FileRefController$1;)V

    .line 1037
    invoke-static {v0, p2}, Lorg/telegram/messenger/FileRefController$CachedResult;->access$402(Lorg/telegram/messenger/FileRefController$CachedResult;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLObject;

    .line 1038
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/FileRefController$CachedResult;->access$802(Lorg/telegram/messenger/FileRefController$CachedResult;J)J

    .line 1039
    iget-object p2, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/FileRefController$CachedResult;->access$1002(Lorg/telegram/messenger/FileRefController$CachedResult;J)J

    return-void
.end method

.method private requestReferenceFromServer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 322
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    if-eqz v0, :cond_0

    .line 323
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_help_getPremiumPromo;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_help_getPremiumPromo;-><init>()V

    .line 324
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 333
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 334
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getAvailableReactions;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAvailableReactions;-><init>()V

    .line 335
    iput v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getAvailableReactions;->hash:I

    .line 336
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 337
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$BotInfo;

    if-eqz v0, :cond_2

    .line 338
    check-cast p1, Lorg/telegram/tgnet/TLRPC$BotInfo;

    .line 339
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;-><init>()V

    .line 340
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 341
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 342
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    if-eqz v0, :cond_3

    .line 343
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 344
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachMenuBot;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachMenuBot;-><init>()V

    .line 345
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachMenuBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 346
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 347
    :cond_3
    instance-of v0, p1, Lorg/telegram/messenger/MessageObject;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_6

    .line 348
    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 349
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getChannelId()J

    move-result-wide v0

    .line 350
    iget-boolean p4, p1, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-eqz p4, :cond_4

    .line 351
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;-><init>()V

    .line 352
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 353
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    :cond_4
    cmp-long p4, v0, v2

    if-eqz p4, :cond_5

    .line 356
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 357
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 358
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 361
    :cond_5
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;-><init>()V

    .line 362
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 365
    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_7

    .line 366
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 367
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;-><init>()V

    .line 368
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;-><init>()V

    .line 369
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;->id:J

    .line 370
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;->access_hash:J

    .line 371
    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    .line 372
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 373
    :cond_7
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v0, :cond_8

    .line 374
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 375
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_account_getTheme;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_account_getTheme;-><init>()V

    .line 376
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputTheme;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputTheme;-><init>()V

    .line 377
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputTheme;->id:J

    .line 378
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputTheme;->access_hash:J

    .line 379
    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_account_getTheme;->theme:Lorg/telegram/tgnet/TLRPC$InputTheme;

    const-string p1, "android"

    .line 380
    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_account_getTheme;->format:Ljava/lang/String;

    .line 381
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 382
    :cond_8
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_9

    .line 383
    check-cast p1, Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 384
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    .line 385
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    .line 386
    iput v1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    .line 387
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 388
    :cond_9
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_a

    .line 389
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 390
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;-><init>()V

    .line 391
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;->id:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 393
    :cond_a
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_c

    .line 394
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 395
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$TL_chat;

    if-eqz p4, :cond_b

    .line 396
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getChats;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getChats;-><init>()V

    .line 397
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getChats;->id:Ljava/util/ArrayList;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 399
    :cond_b
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz p4, :cond_20

    .line 400
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_channels_getChannels;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_channels_getChannels;-><init>()V

    .line 401
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_channels_getChannels;->id:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 404
    :cond_c
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 405
    check-cast p1, Ljava/lang/String;

    const-string/jumbo v0, "wallpaper"

    .line 406
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 407
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->wallpaperWaiters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 408
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;-><init>()V

    .line 409
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/FileRefController;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 411
    :cond_d
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->wallpaperWaiters:Ljava/util/ArrayList;

    new-instance p4, Lorg/telegram/messenger/FileRefController$Waiter;

    invoke-direct {p4, p2, p3}, Lorg/telegram/messenger/FileRefController$Waiter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    const-string v0, "gif"

    .line 412
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 413
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->savedGifsWaiters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 414
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;-><init>()V

    .line 415
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/FileRefController;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 417
    :cond_f
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->savedGifsWaiters:Ljava/util/ArrayList;

    new-instance p4, Lorg/telegram/messenger/FileRefController$Waiter;

    invoke-direct {p4, p2, p3}, Lorg/telegram/messenger/FileRefController$Waiter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    const-string v0, "recent"

    .line 418
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 419
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->recentStickersWaiter:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 420
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;-><init>()V

    .line 421
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/FileRefController;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 423
    :cond_11
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->recentStickersWaiter:Ljava/util/ArrayList;

    new-instance p4, Lorg/telegram/messenger/FileRefController$Waiter;

    invoke-direct {p4, p2, p3}, Lorg/telegram/messenger/FileRefController$Waiter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_12
    const-string v0, "fav"

    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 425
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->favStickersWaiter:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 426
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getFavedStickers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFavedStickers;-><init>()V

    .line 427
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/FileRefController;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 429
    :cond_13
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->favStickersWaiter:Ljava/util/ArrayList;

    new-instance p4, Lorg/telegram/messenger/FileRefController$Waiter;

    invoke-direct {p4, p2, p3}, Lorg/telegram/messenger/FileRefController$Waiter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v0, "update"

    .line 430
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, ""

    if-eqz v0, :cond_16

    .line 431
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_help_getAppUpdate;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_help_getAppUpdate;-><init>()V

    .line 433
    :try_start_0
    sget-object p4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_help_getAppUpdate;->source:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 437
    :goto_0
    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_help_getAppUpdate;->source:Ljava/lang/String;

    if-nez p4, :cond_15

    .line 438
    iput-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_help_getAppUpdate;->source:Ljava/lang/String;

    .line 440
    :cond_15
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    :cond_16
    const-string v0, "avatar_"

    .line 441
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 442
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/16 p1, 0x50

    cmp-long p4, v5, v2

    if-lez p4, :cond_17

    .line 444
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;-><init>()V

    .line 445
    iput p1, p4, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->limit:I

    .line 446
    iput v1, p4, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->offset:I

    .line 447
    iput-wide v2, p4, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->max_id:J

    .line 448
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 449
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 451
    :cond_17
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 452
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;-><init>()V

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 453
    iput p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 454
    iput v1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    .line 455
    iput-object v4, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 456
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 457
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    :cond_18
    const-string/jumbo v0, "sent_"

    .line 459
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "_"

    .line 460
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 461
    array-length v0, p1

    const/4 v4, 0x3

    if-lt v0, v4, :cond_1a

    const/4 p4, 0x1

    .line 462
    aget-object p4, p1, p4

    invoke-static {p4}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p4, 0x2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    .line 464
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 465
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 466
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    aget-object p1, p1, p4

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p4, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda28;

    invoke-direct {p4, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 469
    :cond_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;-><init>()V

    .line 470
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;->id:Ljava/util/ArrayList;

    aget-object p1, p1, p4

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p4, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda21;

    invoke-direct {p4, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_1

    .line 474
    :cond_1a
    invoke-direct {p0, p4, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 477
    :cond_1b
    invoke-direct {p0, p4, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    goto :goto_1

    .line 479
    :cond_1c
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_1d

    .line 480
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 481
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 482
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 483
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 484
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 485
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    .line 486
    :cond_1d
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v0, :cond_1e

    .line 487
    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 488
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 489
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 490
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 491
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 492
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    .line 493
    :cond_1e
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_1f

    .line 494
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 495
    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 496
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    .line 498
    :cond_1f
    invoke-direct {p0, p4, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    :cond_20
    :goto_1
    return-void
.end method

.method private sendErrorToObject([Ljava/lang/Object;I)V
    .locals 3

    const/4 v0, 0x0

    .line 646
    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 647
    aget-object p1, p1, v2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    .line 648
    iget-object p2, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-eqz p2, :cond_8

    .line 650
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 653
    :cond_0
    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-nez v1, :cond_7

    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 655
    :cond_1
    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    if-eqz v1, :cond_2

    .line 656
    aget-object p1, p1, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    goto :goto_1

    .line 658
    :cond_2
    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    if-eqz v1, :cond_3

    .line 659
    aget-object p1, p1, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    goto :goto_1

    .line 661
    :cond_3
    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    if-eqz v1, :cond_4

    .line 662
    aget-object p1, p1, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    goto :goto_1

    .line 664
    :cond_4
    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    if-eqz v1, :cond_5

    .line 665
    aget-object p2, p1, v0

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    .line 666
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    aget-object p1, p1, v2

    check-cast p1, Lorg/telegram/tgnet/RequestDelegate;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    .line 669
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string v1, "not found parent object to request reference"

    .line 670
    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/16 v1, 0x190

    .line 671
    iput v1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    .line 672
    aget-object v1, p1, v2

    instance-of v1, v1, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v1, :cond_8

    .line 673
    aget-object v1, p1, v2

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 674
    iput-boolean v0, v1, Lorg/telegram/messenger/FileLoadOperation;->requestingReference:Z

    const/4 v0, 0x2

    .line 675
    aget-object p1, p1, v0

    check-cast p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    goto :goto_1

    :cond_6
    if-ne p2, v2, :cond_8

    .line 678
    aget-object p2, p1, v2

    instance-of p2, p2, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz p2, :cond_8

    .line 679
    aget-object p1, p1, v2

    check-cast p1, Lorg/telegram/messenger/FileLoadOperation;

    .line 680
    iput-boolean v0, p1, Lorg/telegram/messenger/FileLoadOperation;->requestingReference:Z

    .line 681
    invoke-virtual {p1, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_1

    .line 654
    :cond_7
    :goto_0
    new-instance p2, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/FileRefController;[Ljava/lang/Object;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public varargs requestReference(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 12

    .line 126
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start loading request reference for parent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " args = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 129
    :cond_0
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "photo_"

    const-string v5, "file_"

    if-eqz v0, :cond_3

    .line 130
    aget-object v0, p2, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    .line 131
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v6, :cond_1

    .line 132
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 135
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    goto/16 :goto_2

    .line 136
    :cond_1
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz v5, :cond_2

    .line 137
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    .line 140
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    goto/16 :goto_2

    .line 142
    :cond_2
    invoke-direct {p0, p2, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    return-void

    .line 145
    :cond_3
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    if-eqz v0, :cond_6

    .line 146
    aget-object v0, p2, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    .line 147
    check-cast p1, Ljava/util/ArrayList;

    .line 148
    iget-object v4, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->multi_media:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_5

    .line 150
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->multi_media:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    .line 151
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v1

    aput-object v0, v7, v3

    .line 155
    invoke-virtual {p0, v6, v7}, Lorg/telegram/messenger/FileRefController;->requestReference(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void

    .line 158
    :cond_6
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_9

    .line 159
    aget-object v0, p2, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    .line 160
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v6, :cond_7

    .line 161
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 164
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    goto/16 :goto_2

    .line 165
    :cond_7
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz v5, :cond_8

    .line 166
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    .line 169
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    goto/16 :goto_2

    .line 171
    :cond_8
    invoke-direct {p0, p2, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    return-void

    .line 174
    :cond_9
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    if-eqz v0, :cond_c

    .line 175
    aget-object v0, p2, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    .line 176
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v6, :cond_a

    .line 177
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 180
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    goto/16 :goto_2

    .line 181
    :cond_a
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz v5, :cond_b

    .line 182
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    .line 185
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    goto/16 :goto_2

    .line 187
    :cond_b
    invoke-direct {p0, p2, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    return-void

    .line 190
    :cond_c
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    if-eqz v0, :cond_d

    .line 191
    aget-object v0, p2, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 193
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 194
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    goto/16 :goto_2

    .line 195
    :cond_d
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    if-eqz v0, :cond_e

    .line 196
    aget-object v0, p2, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 199
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    goto/16 :goto_2

    .line 200
    :cond_e
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    if-eqz v0, :cond_f

    .line 201
    aget-object v0, p2, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 204
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    goto/16 :goto_2

    .line 205
    :cond_f
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    if-eqz v0, :cond_12

    .line 206
    aget-object v0, p2, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    .line 207
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    if-eqz v6, :cond_10

    .line 208
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 211
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    goto/16 :goto_2

    .line 212
    :cond_10
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    if-eqz v5, :cond_11

    .line 213
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    .line 216
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    goto/16 :goto_2

    .line 218
    :cond_11
    invoke-direct {p0, p2, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    return-void

    .line 221
    :cond_12
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    if-eqz v0, :cond_13

    .line 222
    aget-object v0, p2, v1

    move-object v5, v0

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loc_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 224
    :cond_13
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    if-eqz v0, :cond_14

    .line 225
    aget-object v0, p2, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    goto :goto_2

    .line 227
    :cond_14
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    if-eqz v0, :cond_15

    .line 228
    aget-object v0, p2, v1

    move-object v5, v0

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 230
    :cond_15
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    if-eqz v0, :cond_24

    .line 231
    aget-object v0, p2, v1

    move-object v5, v0

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "avatar_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 237
    :goto_2
    instance-of v0, p1, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_16

    .line 238
    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 239
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v6

    if-gez v6, :cond_16

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_16

    move-object p1, v0

    .line 243
    :cond_16
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController;->getKeyForParentObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    .line 246
    invoke-direct {p0, p2, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    return-void

    .line 250
    :cond_17
    new-instance v6, Lorg/telegram/messenger/FileRefController$Requester;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lorg/telegram/messenger/FileRefController$Requester;-><init>(Lorg/telegram/messenger/FileRefController$1;)V

    .line 251
    invoke-static {v6, p2}, Lorg/telegram/messenger/FileRefController$Requester;->access$102(Lorg/telegram/messenger/FileRefController$Requester;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 252
    invoke-static {v6, v5}, Lorg/telegram/messenger/FileRefController$Requester;->access$202(Lorg/telegram/messenger/FileRefController$Requester;Lorg/telegram/tgnet/TLRPC$InputFileLocation;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 253
    invoke-static {v6, v4}, Lorg/telegram/messenger/FileRefController$Requester;->access$302(Lorg/telegram/messenger/FileRefController$Requester;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    iget-object v5, p0, Lorg/telegram/messenger/FileRefController;->locationRequester:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_18

    .line 258
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 259
    iget-object v1, p0, Lorg/telegram/messenger/FileRefController;->locationRequester:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 262
    :cond_18
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v3, p0, Lorg/telegram/messenger/FileRefController;->parentRequester:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_19

    .line 266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    iget-object v5, p0, Lorg/telegram/messenger/FileRefController;->parentRequester:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    .line 270
    :cond_19
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v1, v2, :cond_1a

    return-void

    .line 276
    :cond_1a
    instance-of v1, p1, Ljava/lang/String;

    const-string/jumbo v2, "update"

    const-string v3, "fav"

    const-string v5, "recent"

    const-string v6, "gif"

    const-string/jumbo v7, "wallpaper"

    if-eqz v1, :cond_1f

    .line 277
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 278
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    move-object v2, v7

    goto :goto_3

    .line 280
    :cond_1b
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    move-object v2, v6

    goto :goto_3

    .line 282
    :cond_1c
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    move-object v2, v5

    goto :goto_3

    .line 284
    :cond_1d
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    move-object v2, v3

    goto :goto_3

    .line 286
    :cond_1e
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_3

    :cond_1f
    move-object v2, v4

    .line 291
    :goto_3
    invoke-direct {p0}, Lorg/telegram/messenger/FileRefController;->cleanupCache()V

    .line 292
    invoke-direct {p0, v2}, Lorg/telegram/messenger/FileRefController;->getCachedResponse(Ljava/lang/String;)Lorg/telegram/messenger/FileRefController$CachedResult;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 294
    invoke-static {v1}, Lorg/telegram/messenger/FileRefController$CachedResult;->access$400(Lorg/telegram/messenger/FileRefController$CachedResult;)Lorg/telegram/tgnet/TLObject;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p0

    move-object v7, v4

    move-object v8, v0

    invoke-direct/range {v6 .. v11}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    move-result v1

    if-nez v1, :cond_20

    .line 295
    iget-object v1, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_20
    return-void

    .line 300
    :cond_21
    invoke-direct {p0, v0}, Lorg/telegram/messenger/FileRefController;->getCachedResponse(Ljava/lang/String;)Lorg/telegram/messenger/FileRefController$CachedResult;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 302
    invoke-static {v1}, Lorg/telegram/messenger/FileRefController$CachedResult;->access$400(Lorg/telegram/messenger/FileRefController$CachedResult;)Lorg/telegram/tgnet/TLObject;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p0

    move-object v7, v4

    move-object v8, v0

    invoke-direct/range {v6 .. v11}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZZ)Z

    move-result v1

    if-nez v1, :cond_22

    .line 303
    iget-object v1, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_22
    return-void

    .line 310
    :cond_23
    :goto_4
    invoke-direct {p0, p1, v4, v0, p2}, Lorg/telegram/messenger/FileRefController;->requestReferenceFromServer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 234
    :cond_24
    invoke-direct {p0, p2, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    return-void
.end method
