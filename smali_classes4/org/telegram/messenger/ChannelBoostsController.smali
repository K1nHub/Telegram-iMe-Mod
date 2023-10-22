.class public Lorg/telegram/messenger/ChannelBoostsController;
.super Ljava/lang/Object;
.source "ChannelBoostsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;
    }
.end annotation


# static fields
.field public static final BOOSTS_FOR_LEVEL_1:I = 0x1

.field public static final BOOSTS_FOR_LEVEL_2:I = 0x1


# instance fields
.field private final connectionsManager:Lorg/telegram/tgnet/ConnectionsManager;

.field private final currentAccount:I

.field private final messagesController:Lorg/telegram/messenger/MessagesController;


# direct methods
.method public static synthetic $r8$lambda$IzguSOSLpjyQhQwexP3PFixefaw(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChannelBoostsController;->lambda$applyBoost$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gIzPGCoeSNtV8-lyyZaFSsDVaR0(Lorg/telegram/messenger/ChannelBoostsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ChannelBoostsController;->lambda$userCanBoostChannel$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pBDinm12-0p9owFKObIYPdBlW1I(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ChannelBoostsController;->lambda$getBoostsStats$1(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vo5zdiLBQWZ0ZLpJWBxr0kN1tQ8(Lorg/telegram/messenger/ChannelBoostsController;Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ChannelBoostsController;->lambda$userCanBoostChannel$3(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yaR1NmH3lVkF-WTYQPJUIGKVf3U(Lorg/telegram/tgnet/TLObject;Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ChannelBoostsController;->lambda$getBoostsStats$0(Lorg/telegram/tgnet/TLObject;Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lorg/telegram/messenger/ChannelBoostsController;->currentAccount:I

    .line 21
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/ChannelBoostsController;->messagesController:Lorg/telegram/messenger/MessagesController;

    .line 22
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/ChannelBoostsController;->connectionsManager:Lorg/telegram/tgnet/ConnectionsManager;

    return-void
.end method

.method private static synthetic lambda$applyBoost$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$getBoostsStats$0(Lorg/telegram/tgnet/TLObject;Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 31
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    const/4 p0, 0x0

    .line 34
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$getBoostsStats$1(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 29
    new-instance v0, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0, p2}, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/tgnet/TLObject;Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$userCanBoostChannel$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 7

    .line 44
    new-instance v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    invoke-direct {v0}, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;-><init>()V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 46
    iput-boolean v1, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->canApply:Z

    .line 47
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_canApplyBoostReplace;

    if-eqz p2, :cond_4

    .line 48
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_stories_canApplyBoostReplace;

    .line 49
    iget-object p2, p0, Lorg/telegram/messenger/ChannelBoostsController;->messagesController:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_canApplyBoostReplace;->chats:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 50
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_canApplyBoostReplace;->current_boost:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->replaceDialogId:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-nez p2, :cond_4

    .line 51
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_canApplyBoostReplace;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 52
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_canApplyBoostReplace;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p1, p1

    iput-wide p1, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->replaceDialogId:J

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_4

    .line 57
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "SAME_BOOST_ALREADY_ACTIVE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "BOOST_NOT_MODIFIED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "PREMIUM_GIFTED_NOT_ALLOWED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 60
    iput-boolean v1, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->giftedPremium:Z

    goto :goto_1

    .line 61
    :cond_2
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 62
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->floodWait:I

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->access$002(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;J)J

    goto :goto_1

    .line 58
    :cond_3
    :goto_0
    iput-boolean v1, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    .line 67
    :cond_4
    :goto_1
    invoke-interface {p3, v0}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$userCanBoostChannel$3(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 43
    new-instance v0, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ChannelBoostsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/google/android/exoplayer2/util/Consumer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public applyBoost(J)V
    .locals 2

    .line 72
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_applyBoost;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_applyBoost;-><init>()V

    .line 73
    iget-object v1, p0, Lorg/telegram/messenger/ChannelBoostsController;->messagesController:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_applyBoost;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 74
    iget-object p1, p0, Lorg/telegram/messenger/ChannelBoostsController;->connectionsManager:Lorg/telegram/tgnet/ConnectionsManager;

    sget-object p2, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda4;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;",
            ">;)V"
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getBoostsStatus;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_getBoostsStatus;-><init>()V

    .line 28
    iget-object v1, p0, Lorg/telegram/messenger/ChannelBoostsController;->messagesController:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getBoostsStatus;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 29
    iget-object p1, p0, Lorg/telegram/messenger/ChannelBoostsController;->connectionsManager:Lorg/telegram/tgnet/ConnectionsManager;

    new-instance p2, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p3}, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/util/Consumer;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public getTotalBooststToLevel(I)I
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public userCanBoostChannel(JLcom/google/android/exoplayer2/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;",
            ">;)V"
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_canApplyBoost;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_canApplyBoost;-><init>()V

    .line 42
    iget-object v1, p0, Lorg/telegram/messenger/ChannelBoostsController;->messagesController:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_canApplyBoost;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 43
    iget-object p1, p0, Lorg/telegram/messenger/ChannelBoostsController;->connectionsManager:Lorg/telegram/tgnet/ConnectionsManager;

    new-instance p2, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3}, Lorg/telegram/messenger/ChannelBoostsController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/ChannelBoostsController;Lcom/google/android/exoplayer2/util/Consumer;)V

    const/16 p3, 0x400

    invoke-virtual {p1, v0, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method
