.class public Lorg/telegram/messenger/ChatObject$Call;
.super Ljava/lang/Object;
.source "ChatObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ChatObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Call"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;,
        Lorg/telegram/messenger/ChatObject$Call$RecordType;
    }
.end annotation


# static fields
.field public static final RECORD_TYPE_AUDIO:I = 0x0

.field public static final RECORD_TYPE_VIDEO_LANDSCAPE:I = 0x2

.field public static final RECORD_TYPE_VIDEO_PORTAIT:I = 0x1

.field private static videoPointer:I


# instance fields
.field public activeVideos:I

.field public call:Lorg/telegram/tgnet/TLRPC$GroupCall;

.field public canStreamVideo:Z

.field public chatId:J

.field private checkQueueRunnable:Ljava/lang/Runnable;

.field public currentAccount:Lorg/telegram/messenger/AccountInstance;

.field public final currentSpeakingPeers:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public invitedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public invitedUsersMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastGroupCallReloadTime:J

.field private lastLoadGuid:I

.field public loadedRtmpStreamParticipant:Z

.field private loadingGroupCall:Z

.field private loadingGuids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public loadingMembers:Z

.field private loadingSsrcs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private loadingUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public membersLoadEndReached:Z

.field private nextLoadOffset:Ljava/lang/String;

.field public participants:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public participantsByPresentationSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public participantsBySources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public participantsByVideoSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public recording:Z

.field public reloadingMembers:Z

.field public rtmpStreamParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

.field public selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public final sortedParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public speakingMembersCount:I

.field public final thumbs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private typingUpdateRunnable:Ljava/lang/Runnable;

.field private typingUpdateRunnableScheduled:Z

.field private final updateCurrentSpeakingRunnable:Ljava/lang/Runnable;

.field private updatesQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;",
            ">;"
        }
    .end annotation
.end field

.field private updatesStartWaitTime:J

.field public videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

.field private final videoParticipantsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ChatObject$VideoParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public final visibleParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public final visibleVideoParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ChatObject$VideoParticipant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6ZNKUbMbRNAXoEGssmo9LODeENs(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ChatObject$Call;->lambda$loadGroupCall$10(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A9Iyjy8qm5XwdmVhsj-ek1P93bY(Lorg/telegram/messenger/ChatObject$Call;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->checkQueue()V

    return-void
.end method

.method public static synthetic $r8$lambda$C3Q8dxhSZaSBP-vhB6XBFnPff68(Lorg/telegram/messenger/ChatObject$Call;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$L6s5_naywHjTZKcuHGDTzOYJ5_I(Lorg/telegram/messenger/ChatObject$Call;ILorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/ChatObject$Call;->lambda$loadUnknownParticipants$6(ILorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OK3GHDJfsSOkPH7IOQtKwyJfupg(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject$Call;->lambda$processUpdatesQueue$7(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$R4YH3x1PR-ApD2ccMSNcDbptabY(Lorg/telegram/messenger/ChatObject$Call;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ChatObject$Call;->lambda$loadMembers$2(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SYpNF7mH6hmRm2XJ35AavtHUszc(Lorg/telegram/messenger/ChatObject$Call;JZLorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/ChatObject$Call;->lambda$sortParticipants$12(JZLorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VipjDTKW06nlPP5JGM4RLO9iWDc(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->lambda$reloadGroupCall$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_kRLu6umn-CYS1_122nnnyYlK6s(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ChatObject$Call;->lambda$reloadGroupCall$8(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dTv0WPbYge8HK4LenKYPYZsBoX0(Lorg/telegram/messenger/ChatObject$Call;ZLorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ChatObject$Call;->lambda$loadMembers$3(ZLorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kT-IYSnWOlHMFoZldY9Rp2vKIiE(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->lambda$setTitle$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o33JSThGPN7CkIIdfykl203dwUc(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->lambda$toggleRecord$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sepObnvdduZBniNMI8JqfbCdiNY(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->lambda$loadGroupCall$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ssOHncr_lmQO8RvhM-LRWi8bUX0(Lorg/telegram/messenger/ChatObject$Call;ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/ChatObject$Call;->lambda$loadUnknownParticipants$5(ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vNYLPGRIltKSRiv6UyjCCUlKLDw(Lorg/telegram/messenger/ChatObject$Call;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->lambda$createRtmpStreamParticipant$1()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleParticipants:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->thumbs:Ljava/util/HashMap;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->videoParticipantsCache:Ljava/util/HashMap;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    .line 230
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    .line 231
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByVideoSources:Landroid/util/SparseArray;

    .line 232
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByPresentationSources:Landroid/util/SparseArray;

    .line 245
    new-instance v0, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->typingUpdateRunnable:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingGuids:Ljava/util/HashSet;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    .line 258
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingUids:Ljava/util/HashSet;

    .line 259
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingSsrcs:Ljava/util/HashSet;

    .line 267
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    .line 269
    new-instance v0, Lorg/telegram/messenger/ChatObject$Call$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ChatObject$Call$1;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updateCurrentSpeakingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/ChatObject$Call;)Ljava/lang/Runnable;
    .locals 0

    .line 206
    iget-object p0, p0, Lorg/telegram/messenger/ChatObject$Call;->updateCurrentSpeakingRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private checkOnlineParticipants()V
    .locals 9

    .line 1473
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->typingUpdateRunnableScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->typingUpdateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1475
    iput-boolean v1, p0, Lorg/telegram/messenger/ChatObject$Call;->typingUpdateRunnableScheduled:Z

    .line 1477
    :cond_0
    iput v1, p0, Lorg/telegram/messenger/ChatObject$Call;->speakingMembersCount:I

    .line 1478
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 1480
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const v3, 0x7fffffff

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v1, v2, :cond_3

    .line 1481
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1482
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    sub-int v7, v0, v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_1

    .line 1484
    iget v8, p0, Lorg/telegram/messenger/ChatObject$Call;->speakingMembersCount:I

    add-int/2addr v8, v5

    iput v8, p0, Lorg/telegram/messenger/ChatObject$Call;->speakingMembersCount:I

    .line 1485
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1487
    :cond_1
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->date:I

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v7, v0, -0x5

    if-gt v6, v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eq v4, v3, :cond_4

    .line 1492
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->typingUpdateRunnable:Ljava/lang/Runnable;

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v1, v4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1493
    iput-boolean v5, p0, Lorg/telegram/messenger/ChatObject$Call;->typingUpdateRunnableScheduled:Z

    :cond_4
    return-void
.end method

.method private checkQueue()V
    .locals 4

    const/4 v0, 0x0

    .line 933
    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->checkQueueRunnable:Ljava/lang/Runnable;

    .line 934
    iget-wide v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 935
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "QUEUE GROUP CALL UPDATES WAIT TIMEOUT - CHECK QUEUE"

    .line 936
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 938
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->processUpdatesQueue()V

    .line 940
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 941
    new-instance v0, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->checkQueueRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private getSelfId()J
    .locals 2

    .line 429
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_0

    .line 430
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    return-wide v0

    .line 432
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method private isSameVideo(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 v1, 0x1

    if-eqz p1, :cond_a

    if-nez p2, :cond_3

    goto :goto_2

    .line 1207
    :cond_3
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 1210
    :cond_4
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_5

    return v0

    .line 1213
    :cond_5
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_a

    .line 1214
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    .line 1215
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    .line 1216
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->semantics:Ljava/lang/String;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->semantics:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    return v0

    .line 1219
    :cond_6
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v6, v7, :cond_7

    return v0

    .line 1222
    :cond_7
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_9

    .line 1223
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    return v0

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    :goto_2
    return v1
.end method

.method private isValidUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;)I
    .locals 2

    .line 863
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    add-int/lit8 v1, v0, 0x1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    if-eq v1, p1, :cond_2

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ge v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createRtmpStreamParticipant$1()V
    .locals 5

    .line 358
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadGroupCall$10(Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    .line 970
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/ChatObject$Call;->lastGroupCallReloadTime:J

    const/4 v0, 0x0

    .line 971
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingGroupCall:Z

    if-eqz p1, :cond_1

    .line 973
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;

    .line 974
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 975
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 976
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;->count:I

    if-eq v2, p1, :cond_1

    .line 977
    iput p1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 978
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 979
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new participants reload count "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 981
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadGroupCall$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 969
    new-instance p2, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadMembers$2(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;)V
    .locals 10

    const/4 v0, 0x0

    .line 540
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingMembers:Z

    if-eqz p1, :cond_0

    .line 542
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->reloadingMembers:Z

    :cond_0
    if-eqz p2, :cond_1

    .line 545
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;

    .line 546
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 547
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 548
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;->participants:Ljava/util/ArrayList;

    iget-object v6, p3, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->offset:Ljava/lang/String;

    iget-object v7, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;->next_offset:Ljava/lang/String;

    iget v8, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;->version:I

    iget v9, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;->count:I

    move-object v3, p0

    move v5, p1

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/ChatObject$Call;->onParticipantsLoad(Ljava/util/ArrayList;ZLjava/lang/String;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadMembers$3(ZLorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 539
    new-instance p4, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda6;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/ChatObject$Call;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadUnknownParticipants$5(ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 8

    .line 655
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingGuids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_6

    .line 659
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;

    .line 660
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 661
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 662
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ge v0, p1, :cond_3

    .line 663
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 664
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    .line 665
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v6, :cond_1

    .line 667
    iget-object v7, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 668
    invoke-direct {p0, v6, v1}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V

    .line 670
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 671
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-direct {p0, v3, v2}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V

    .line 673
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 674
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 675
    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 676
    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 679
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 680
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p2

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 682
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 683
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v3, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p3, :cond_5

    .line 685
    invoke-interface {p3, p4}, Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;->onLoad(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 687
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->setParticiapantsVolume()V

    .line 690
    :cond_6
    :goto_1
    invoke-virtual {p5, p4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic lambda$loadUnknownParticipants$6(ILorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 654
    new-instance p6, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda3;

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/ChatObject$Call;ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->typingUpdateRunnableScheduled:Z

    .line 247
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->checkOnlineParticipants()V

    .line 248
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupCallTypingsUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$processUpdatesQueue$7(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;)I
    .locals 0

    .line 890
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$reloadGroupCall$8(Lorg/telegram/tgnet/TLObject;)V
    .locals 10

    .line 950
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCall;

    if-eqz v0, :cond_0

    .line 951
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCall;

    .line 952
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 953
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCall;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 954
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCall;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 955
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCall;->participants:Ljava/util/ArrayList;

    const/4 v5, 0x1

    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCall;->participants_next_offset:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    iget v9, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    const-string v6, ""

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/ChatObject$Call;->onParticipantsLoad(Ljava/util/ArrayList;ZLjava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$reloadGroupCall$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 949
    new-instance p2, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setTitle$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 566
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 567
    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sortParticipants$12(JZLorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)I
    .locals 7

    .line 1315
    iget v0, p4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1316
    :goto_0
    iget v4, p5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoIndex:I

    if-lez v4, :cond_1

    move v1, v2

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    sub-int/2addr v4, v0

    return v4

    :cond_2
    const/4 v0, -0x1

    if-eqz v3, :cond_3

    return v0

    :cond_3
    if-eqz v1, :cond_4

    return v2

    .line 1324
    :cond_4
    iget v1, p4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    if-eqz v1, :cond_5

    iget v3, p5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    if-eqz v3, :cond_5

    .line 1325
    invoke-static {v3, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_5
    if-eqz v1, :cond_6

    return v0

    .line 1328
    :cond_6
    iget v1, p5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    if-eqz v1, :cond_7

    return v2

    .line 1331
    :cond_7
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-nez v1, :cond_8

    return v0

    .line 1333
    :cond_8
    iget-object v1, p5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    cmp-long p1, v3, p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    if-eqz p3, :cond_c

    .line 1337
    iget-wide p1, p4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->raise_hand_rating:J

    const-wide/16 v3, 0x0

    cmp-long p3, p1, v3

    if-eqz p3, :cond_a

    iget-wide v5, p5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->raise_hand_rating:J

    cmp-long p3, v5, v3

    if-eqz p3, :cond_a

    .line 1338
    invoke-static {v5, v6, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_a
    cmp-long p1, p1, v3

    if-eqz p1, :cond_b

    return v0

    .line 1341
    :cond_b
    iget-wide p1, p5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->raise_hand_rating:J

    cmp-long p1, p1, v3

    if-eqz p1, :cond_c

    return v2

    .line 1345
    :cond_c
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->join_date_asc:Z

    if-eqz p1, :cond_d

    .line 1346
    iget p1, p4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->date:I

    iget p2, p5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->date:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    .line 1348
    :cond_d
    iget p1, p5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->date:I

    iget p2, p4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->date:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$toggleRecord$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1513
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1514
    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private loadGroupCall()V
    .locals 4

    .line 961
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingGroupCall:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/ChatObject$Call;->lastGroupCallReloadTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 964
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingGroupCall:Z

    .line 965
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;-><init>()V

    .line 966
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    const-string v2, ""

    .line 967
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->offset:Ljava/lang/String;

    .line 968
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->limit:I

    .line 969
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private loadUnknownParticipants(Ljava/util/ArrayList;ZLorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;Z",
            "Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 613
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingUids:Ljava/util/HashSet;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingSsrcs:Ljava/util/HashSet;

    :goto_0
    move-object v6, v0

    .line 614
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 615
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 616
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 621
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 624
    :cond_3
    iget v0, p0, Lorg/telegram/messenger/ChatObject$Call;->lastLoadGuid:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/telegram/messenger/ChatObject$Call;->lastLoadGuid:I

    .line 625
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingGuids:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 627
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;-><init>()V

    .line 628
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 629
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 630
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    if-eqz p2, :cond_7

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_4

    .line 633
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    .line 634
    iput-wide v4, v7, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    .line 635
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->ids:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 637
    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v7}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 639
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    .line 643
    :cond_5
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    .line 644
    iput-wide v4, v7, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    goto :goto_4

    .line 640
    :cond_6
    :goto_3
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .line 641
    iput-wide v4, v7, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    .line 646
    :goto_4
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->ids:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 649
    :cond_7
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->sources:Ljava/util/ArrayList;

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const-string p2, ""

    .line 652
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->offset:Ljava/lang/String;

    const/16 p2, 0x64

    .line 653
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->limit:I

    .line 654
    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v7, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda13;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/ChatObject$Call;ILorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    invoke-virtual {p2, v0, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private onParticipantsLoad(Ljava/util/ArrayList;ZLjava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 438
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->getSelfId()J

    move-result-wide v0

    .line 439
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 440
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 441
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    .line 443
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    goto :goto_0

    .line 445
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 447
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 448
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 449
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByVideoSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 450
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByPresentationSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 451
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingGuids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 453
    :cond_1
    iput-object p4, p0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    .line 454
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    const/4 v1, 0x1

    if-nez p4, :cond_2

    iget-object p4, p0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 455
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/messenger/ChatObject$Call;->membersLoadEndReached:Z

    .line 457
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 458
    iget-object p3, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput p5, p3, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    .line 459
    iput p6, p3, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 460
    sget-boolean p3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p3, :cond_4

    .line 461
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "new participants count "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p4, p4, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 464
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 465
    iget-object p5, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p5}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p5

    sget p6, Lorg/telegram/messenger/NotificationCenter;->applyGroupCallVisibleParticipants:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p5, p6, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 467
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p5

    move p6, v5

    move v3, p6

    :goto_1
    if-gt p6, p5, :cond_d

    if-ne p6, p5, :cond_5

    if-eqz p2, :cond_c

    if-eqz v0, :cond_c

    if-nez v3, :cond_c

    move-object v4, v0

    goto :goto_2

    .line 476
    :cond_5
    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 477
    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->self:Z

    if-eqz v6, :cond_6

    move v3, v1

    .line 481
    :cond_6
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v6, :cond_8

    .line 483
    iget-object v7, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 484
    invoke-direct {p0, v6, v5}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V

    .line 485
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->self:Z

    if-eqz v7, :cond_7

    .line 486
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastTypingDate:I

    goto :goto_3

    .line 488
    :cond_7
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastTypingDate:I

    .line 490
    :goto_3
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastVisibleDate:J

    cmp-long v6, p3, v6

    if-eqz v6, :cond_b

    .line 491
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastTypingDate:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_b

    .line 494
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v6, :cond_b

    .line 496
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->self:Z

    if-eqz v7, :cond_9

    .line 497
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastTypingDate:I

    goto :goto_4

    .line 499
    :cond_9
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    iget v8, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastTypingDate:I

    .line 501
    :goto_4
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastVisibleDate:J

    cmp-long v7, p3, v7

    if-eqz v7, :cond_a

    .line 502
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastTypingDate:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    goto :goto_5

    .line 504
    :cond_a
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    .line 508
    :cond_b
    :goto_5
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 509
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-direct {p0, v4, v1}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V

    :cond_c
    add-int/lit8 p6, p6, 0x1

    goto/16 :goto_1

    .line 512
    :cond_d
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_e

    .line 513
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p2

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 515
    :cond_e
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 516
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    iget-wide p4, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, v5

    iget-object p4, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide p4, p4, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, v1

    const/4 p4, 0x2

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p5, p3, p4

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 517
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->setParticiapantsVolume()V

    return-void
.end method

.method private processAllSources(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V
    .locals 10

    .line 695
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 697
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 699
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_d

    if-nez v1, :cond_2

    .line 703
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    :goto_2
    if-eqz v3, :cond_c

    .line 705
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->flags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_4

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->audio_source:I

    if-eqz v2, :cond_4

    if-eqz p2, :cond_3

    .line 707
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 709
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    :goto_3
    if-nez v1, :cond_5

    .line 712
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByVideoSources:Landroid/util/SparseArray;

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByPresentationSources:Landroid/util/SparseArray;

    .line 713
    :goto_4
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v0

    :goto_5
    if-ge v5, v4, :cond_8

    .line 714
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    .line 715
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v0

    :goto_6
    if-ge v8, v7, :cond_7

    .line 716
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz p2, :cond_6

    .line 718
    invoke-virtual {v2, v9, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 720
    :cond_6
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->remove(I)V

    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    if-eqz p2, :cond_a

    if-nez v1, :cond_9

    .line 726
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    goto :goto_8

    .line 728
    :cond_9
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 732
    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    goto :goto_8

    .line 734
    :cond_b
    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    :cond_c
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method private processUpdatesQueue()V
    .locals 9

    .line 890
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda8;->INSTANCE:Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda8;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 891
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    move v3, v0

    .line 893
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 894
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    .line 895
    invoke-direct {p0, v4}, Lorg/telegram/messenger/ChatObject$Call;->isValidUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;)I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 897
    invoke-virtual {p0, v4, v6}, Lorg/telegram/messenger/ChatObject$Call;->processParticipantsUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;Z)V

    .line 899
    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v6

    goto :goto_0

    :cond_0
    if-ne v5, v6, :cond_6

    .line 902
    iget-wide v4, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v7, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    sub-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v7, 0x5dc

    cmp-long v0, v4, v7

    if-gtz v0, :cond_3

    .line 903
    :cond_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    const-string v0, "HOLE IN GROUP CALL UPDATES QUEUE - will wait more time"

    .line 904
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_5

    .line 907
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    goto :goto_1

    .line 910
    :cond_3
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    const-string v0, "HOLE IN GROUP CALL UPDATES QUEUE - reload participants"

    .line 911
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 913
    :cond_4
    iput-wide v1, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    .line 914
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 915
    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    .line 916
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    :cond_5
    :goto_1
    return-void

    .line 920
    :cond_6
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 924
    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 925
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_8

    const-string v0, "GROUP CALL UPDATES QUEUE PROCEED - OK"

    .line 926
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 929
    :cond_8
    iput-wide v1, p0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    return-void
.end method

.method private setParticiapantsVolume()V
    .locals 5

    .line 554
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v3, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    neg-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 556
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->setParticipantsVolume()V

    :cond_0
    return-void
.end method

.method public static videoIsActive(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1253
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 1257
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->self:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1258
    invoke-virtual {v1, p1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    move v0, v3

    :cond_2
    return v0

    .line 1260
    :cond_3
    iget-object v1, p2, Lorg/telegram/messenger/ChatObject$Call;->rtmpStreamParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eq v1, p0, :cond_6

    :cond_4
    iget-object v1, p2, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eq v1, p0, :cond_6

    :cond_5
    iget-object p2, p2, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    :cond_6
    if-eqz p1, :cond_8

    .line 1262
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz p0, :cond_7

    move v0, v3

    :cond_7
    return v0

    .line 1264
    :cond_8
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz p0, :cond_9

    move v0, v3

    :cond_9
    return v0
.end method


# virtual methods
.method public addInvitedUser(J)V
    .locals 2

    .line 573
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public addSelfDummyParticipant(Z)V
    .locals 9

    .line 377
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->getSelfId()J

    move-result-wide v0

    .line 378
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v2

    if-ltz v2, :cond_0

    return-void

    .line 381
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;-><init>()V

    .line 382
    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v3, 0x1

    .line 383
    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    .line 384
    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->self:Z

    .line 385
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_start_video:Z

    iput-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video_joined:Z

    .line 386
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 387
    iget-object v5, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->join_muted:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v3

    :goto_1
    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    .line 388
    iget-object v5, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v5}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->date:I

    .line 389
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_3

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-eqz v4, :cond_4

    .line 390
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_5

    .line 393
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 395
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->about:Ljava/lang/String;

    goto :goto_2

    .line 398
    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-long v7, v0

    invoke-virtual {v4, v7, v8}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 400
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->about:Ljava/lang/String;

    .line 403
    :cond_6
    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    if-eqz p1, :cond_7

    .line 407
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public canRecordVideo()Z
    .locals 5

    .line 1455
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1458
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1459
    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-ne v3, p0, :cond_2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_1
    return v2

    .line 1462
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->unmuted_video_limit:I

    if-ge v0, v3, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public clearVideFramesInfo()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 832
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 833
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasCameraFrame:I

    .line 834
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasPresentationFrame:I

    .line 835
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoIndex:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 837
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    return-void
.end method

.method public createNoVideoParticipant()V
    .locals 4

    .line 362
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v0, :cond_0

    return-void

    .line 365
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;-><init>()V

    .line 366
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 367
    iget-wide v2, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const/4 v1, 0x1

    .line 368
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    .line 369
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    .line 370
    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->paused:Z

    const-string v1, ""

    .line 371
    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    .line 373
    new-instance v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZZ)V

    iput-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    return-void
.end method

.method public createRtmpStreamParticipant(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;",
            ">;)V"
        }
    .end annotation

    .line 340
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadedRtmpStreamParticipant:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->rtmpStreamParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v0, :cond_0

    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->rtmpStreamParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;-><init>()V

    .line 344
    :goto_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 345
    iget-wide v2, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 346
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    .line 347
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;-><init>()V

    const-string v2, "SIM"

    .line 348
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->semantics:Ljava/lang/String;

    .line 349
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;

    .line 350
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;->channel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    :cond_2
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    const-string/jumbo v1, "unified"

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    .line 354
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    .line 355
    new-instance p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZZ)V

    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->rtmpStreamParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    .line 357
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 358
    new-instance p1, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;
    .locals 4

    .line 1243
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;-><init>()V

    .line 1244
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;->id:J

    .line 1245
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;->access_hash:J

    return-object v0
.end method

.method public isScheduled()Z
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadMembers(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 522
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->reloadingMembers:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 525
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->membersLoadEndReached:Z

    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    .line 528
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->membersLoadEndReached:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 532
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->reloadingMembers:Z

    .line 534
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->loadingMembers:Z

    .line 535
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;-><init>()V

    .line 536
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 537
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->offset:Ljava/lang/String;

    const/16 v1, 0x14

    .line 538
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->limit:I

    .line 539
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/ChatObject$Call;ZLorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public migrateToChat(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 5

    .line 412
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v0, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    .line 413
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v3, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    neg-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 415
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/VoIPService;->migrateToChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :cond_0
    return-void
.end method

.method public processGroupCallUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V
    .locals 6

    .line 1232
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1233
    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    .line 1234
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    .line 1236
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 1237
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->getSelfId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1238
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->record_start_date:I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/messenger/ChatObject$Call;->recording:Z

    .line 1239
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v2

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v3, v0

    invoke-virtual {p1, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public processParticipantsUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;Z)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p2, :cond_9

    .line 990
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v5

    :goto_0
    if-ge v8, v7, :cond_1

    .line 991
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 992
    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->versioned:Z

    if-eqz v9, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_1
    if-eqz v7, :cond_7

    .line 997
    iget-object v8, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    add-int/2addr v8, v6

    iget v9, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    if-ge v8, v9, :cond_7

    .line 998
    iget-boolean v5, v0, Lorg/telegram/messenger/ChatObject$Call;->reloadingMembers:Z

    const-wide/16 v7, 0x5dc

    if-nez v5, :cond_3

    iget-wide v9, v0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    cmp-long v5, v9, v3

    if-eqz v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-gtz v5, :cond_2

    goto :goto_2

    .line 1010
    :cond_2
    iput-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    .line 1011
    invoke-virtual {v0, v6}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    goto :goto_3

    .line 999
    :cond_3
    :goto_2
    iget-wide v5, v0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_4

    .line 1000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/ChatObject$Call;->updatesStartWaitTime:J

    .line 1002
    :cond_4
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_5

    .line 1003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add TL_updateGroupCallParticipants to queue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1005
    :cond_5
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->updatesQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->checkQueueRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_6

    .line 1007
    new-instance v1, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    iput-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->checkQueueRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    if-eqz v7, :cond_9

    .line 1015
    iget v7, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    iget-object v8, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    if-ge v7, v8, :cond_9

    .line 1016
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_8

    const-string v1, "ignore processParticipantsUpdate because of version"

    .line 1017
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_8
    return-void

    .line 1028
    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ChatObject$Call;->getSelfId()J

    move-result-wide v7

    .line 1029
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1032
    iget-object v11, v0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 1033
    iget-object v11, v0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->date:I

    goto :goto_4

    :cond_a
    move v11, v5

    .line 1037
    :goto_4
    iget-object v12, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v12}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/NotificationCenter;->applyGroupCallVisibleParticipants:I

    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v5

    invoke-virtual {v12, v13, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1038
    iget-object v12, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-wide/from16 v19, v3

    move v13, v5

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    :goto_5
    if-ge v13, v12, :cond_30

    .line 1039
    iget-object v15, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1040
    iget-object v6, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    .line 1041
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_b

    .line 1042
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process participant "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " left = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->left:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " versioned "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->versioned:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " flags = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " self = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " volume = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1044
    :cond_b
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1045
    iget-boolean v6, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->left:Z

    const-string v5, " "

    move/from16 v23, v12

    const-string v12, "GroupCall"

    if-eqz v6, :cond_16

    if-nez v2, :cond_d

    .line 1046
    iget v6, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    iget-object v15, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    if-ne v6, v15, :cond_d

    .line 1047
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_c

    const-string/jumbo v6, "unknowd participant left, reload call"

    .line 1048
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_c
    const/4 v14, 0x1

    :cond_d
    if-eqz v2, :cond_13

    .line 1053
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    const/4 v6, 0x0

    .line 1054
    invoke-direct {v0, v2, v6}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V

    .line 1055
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1056
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->visibleParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1057
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    const/4 v15, 0x0

    invoke-virtual {v6, v3, v4, v15}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_11

    const-wide/16 v21, 0x0

    cmp-long v6, v3, v21

    const-string v15, "left remove from speaking "

    if-lez v6, :cond_f

    .line 1059
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v6}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    move/from16 v24, v14

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v6, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 1060
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_e

    const/4 v15, 0x0

    goto :goto_6

    :cond_e
    iget-object v15, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_6
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v25, v13

    goto :goto_8

    :cond_f
    move/from16 v24, v14

    .line 1062
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v6}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    move/from16 v25, v13

    neg-long v13, v3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 1063
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_10

    const/4 v15, 0x0

    goto :goto_7

    :cond_10
    iget-object v15, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_7
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :goto_8
    iget-object v5, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    const/16 v17, 0x1

    goto :goto_9

    :cond_11
    move/from16 v25, v13

    move/from16 v24, v14

    :goto_9
    const/4 v5, 0x0

    .line 1068
    :goto_a
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 1069
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    .line 1070
    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v14

    cmp-long v6, v12, v14

    if-nez v6, :cond_12

    .line 1071
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    :cond_12
    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_a

    :cond_13
    move/from16 v25, v13

    move/from16 v24, v14

    :cond_14
    const/4 v6, 0x1

    .line 1076
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    sub-int/2addr v5, v6

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    if-gez v5, :cond_15

    const/4 v5, 0x0

    .line 1078
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    :cond_15
    move-wide/from16 v26, v7

    move/from16 v14, v24

    const-wide/16 v7, 0x0

    goto/16 :goto_14

    :cond_16
    move/from16 v25, v13

    .line 1082
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1083
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1084
    iget-object v13, v0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMap:Ljava/util/HashSet;

    invoke-virtual {v13, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1085
    iget-object v13, v0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsers:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_17
    if-eqz v2, :cond_25

    .line 1088
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_18

    const-string v6, "new participant, update old"

    .line 1089
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1091
    :cond_18
    iget-boolean v6, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    .line 1092
    iget-boolean v6, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v6, :cond_1c

    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    const/4 v13, 0x0

    invoke-virtual {v6, v3, v4, v13}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1c

    .line 1093
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    const-wide/16 v16, 0x0

    cmp-long v6, v3, v16

    const-string v13, "muted remove from speaking "

    if-lez v6, :cond_1a

    .line 1095
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v6}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    move/from16 v24, v14

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v6, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 1096
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_19

    const/4 v5, 0x0

    goto :goto_b

    :cond_19
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_b
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v26, v7

    goto :goto_d

    :cond_1a
    move/from16 v24, v14

    .line 1098
    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v6}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    move-wide/from16 v26, v7

    neg-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 1099
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_1b

    const/4 v5, 0x0

    goto :goto_c

    :cond_1b
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_c
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    const/16 v17, 0x1

    goto :goto_e

    :cond_1c
    move-wide/from16 v26, v7

    move/from16 v24, v14

    .line 1103
    :goto_e
    iget-boolean v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->min:Z

    if-nez v5, :cond_1d

    .line 1104
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume:I

    .line 1105
    iget-boolean v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted_by_you:Z

    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted_by_you:Z

    goto :goto_f

    .line 1107
    :cond_1d
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_1e

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_1e

    and-int/lit16 v5, v5, -0x81

    .line 1108
    iput v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    .line 1110
    :cond_1e
    iget-boolean v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume_by_admin:Z

    if-eqz v5, :cond_1f

    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume_by_admin:Z

    if-eqz v5, :cond_1f

    .line 1111
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume:I

    .line 1114
    :cond_1f
    :goto_f
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    .line 1115
    iget-boolean v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    .line 1116
    iget-boolean v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video_joined:Z

    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video_joined:Z

    .line 1117
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->raise_hand_rating:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_20

    iget-wide v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->raise_hand_rating:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_20

    .line 1118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastRaiseHandDate:J

    .line 1120
    :cond_20
    iget-wide v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->raise_hand_rating:J

    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->raise_hand_rating:J

    .line 1121
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->date:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->date:I

    .line 1122
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    iget v6, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastTypingDate:I

    .line 1123
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastVisibleDate:J

    cmp-long v6, v9, v6

    if-eqz v6, :cond_21

    .line 1124
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    .line 1126
    :cond_21
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    iget v6, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    if-ne v5, v6, :cond_23

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iget-object v6, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-direct {v0, v5, v6}, Lorg/telegram/messenger/ChatObject$Call;->isSameVideo(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iget-object v6, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-direct {v0, v5, v6}, Lorg/telegram/messenger/ChatObject$Call;->isSameVideo(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)Z

    move-result v5

    if-nez v5, :cond_22

    goto :goto_10

    .line 1135
    :cond_22
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz v2, :cond_24

    iget-object v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz v5, :cond_24

    .line 1136
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->paused:Z

    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->paused:Z

    goto :goto_11

    :cond_23
    :goto_10
    const/4 v5, 0x0

    .line 1127
    invoke-direct {v0, v2, v5}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V

    .line 1128
    iget-object v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    .line 1129
    iget-object v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    .line 1130
    iget v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    const/4 v5, 0x1

    .line 1131
    invoke-direct {v0, v2, v5}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V

    .line 1132
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    iput-object v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    .line 1133
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    iput-object v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    .line 1134
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoIndex:I

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoIndex:I

    :cond_24
    :goto_11
    move/from16 v14, v24

    const-wide/16 v7, 0x0

    goto/16 :goto_13

    :cond_25
    move-wide/from16 v26, v7

    move/from16 v24, v14

    .line 1139
    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->just_joined:Z

    if-eqz v2, :cond_29

    cmp-long v2, v3, v26

    if-eqz v2, :cond_26

    move-wide/from16 v19, v3

    .line 1143
    :cond_26
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 1144
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    if-ne v5, v2, :cond_28

    .line 1146
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_27

    const-string v2, "new participant, just joined, reload call"

    .line 1147
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_27
    const/4 v14, 0x1

    goto :goto_12

    .line 1150
    :cond_28
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_29

    const-string v2, "new participant, just joined"

    .line 1151
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_29
    move/from16 v14, v24

    .line 1155
    :goto_12
    iget-wide v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->raise_hand_rating:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_2a

    .line 1156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastRaiseHandDate:J

    :cond_2a
    cmp-long v2, v3, v26

    if-eqz v2, :cond_2b

    .line 1158
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v5, 0x14

    if-lt v2, v5, :cond_2b

    iget v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->date:I

    if-le v2, v11, :cond_2b

    iget v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    if-nez v2, :cond_2b

    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-nez v2, :cond_2b

    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v2, :cond_2b

    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->min:Z

    if-eqz v2, :cond_2b

    iget-boolean v2, v0, Lorg/telegram/messenger/ChatObject$Call;->membersLoadEndReached:Z

    if-eqz v2, :cond_2c

    .line 1159
    :cond_2b
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    :cond_2c
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v3, v4, v15}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v2, 0x1

    .line 1162
    invoke-direct {v0, v15, v2}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V

    :goto_13
    cmp-long v2, v3, v26

    if-nez v2, :cond_2e

    .line 1164
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    if-nez v2, :cond_2e

    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-nez v2, :cond_2d

    iget-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-nez v2, :cond_2e

    .line 1165
    :cond_2d
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    :cond_2e
    const/16 v16, 0x1

    :goto_14
    cmp-long v2, v3, v26

    if-nez v2, :cond_2f

    const/16 v18, 0x1

    :cond_2f
    add-int/lit8 v13, v25, 0x1

    move-wide v3, v7

    move/from16 v12, v23

    move-wide/from16 v7, v26

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v15, 0x1

    goto/16 :goto_5

    :cond_30
    move/from16 v24, v14

    .line 1174
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->version:I

    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    if-le v1, v3, :cond_31

    .line 1175
    iput v1, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    if-nez p2, :cond_31

    .line 1177
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ChatObject$Call;->processUpdatesQueue()V

    .line 1180
    :cond_31
    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 1181
    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 1183
    :cond_32
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_33

    .line 1184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new participants count after update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_33
    if-eqz v24, :cond_34

    .line 1187
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ChatObject$Call;->loadGroupCall()V

    :cond_34
    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz v15, :cond_36

    if-eqz v16, :cond_35

    .line 1191
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 1193
    :cond_35
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_36
    if-eqz v17, :cond_37

    .line 1196
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallSpeakingUsersUpdated:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v5, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    iget-object v5, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_37
    return-void
.end method

.method public processTypingsUpdate(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/AccountInstance;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 583
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 584
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->applyGroupCallVisibleParticipants:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-virtual {p1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 585
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move-object v4, v0

    move v2, v1

    move v5, v2

    :goto_0
    if-ge v2, p1, :cond_4

    .line 586
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 587
    iget-object v7, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v7, :cond_1

    .line 589
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastTypingDate:I

    sub-int v6, p3, v6

    const/16 v8, 0xa

    if-le v6, v8, :cond_3

    .line 590
    iget-wide v5, v7, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastVisibleDate:J

    int-to-long v8, p3

    cmp-long v5, v5, v8

    if-eqz v5, :cond_0

    .line 591
    iput p3, v7, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    .line 593
    :cond_0
    iput p3, v7, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastTypingDate:I

    move v5, v3

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    .line 598
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 600
    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    .line 604
    invoke-direct {p0, v4, v3, v0}, Lorg/telegram/messenger/ChatObject$Call;->loadUnknownParticipants(Ljava/util/ArrayList;ZLorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;)V

    :cond_5
    if-eqz v5, :cond_6

    .line 607
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 608
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    iget-wide v4, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, v1

    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, v3

    const/4 v0, 0x2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, p3, v0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public processUnknownVideoParticipants([ILorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    .line 846
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 847
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByVideoSources:Landroid/util/SparseArray;

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->participantsByPresentationSources:Landroid/util/SparseArray;

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    .line 851
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 853
    :cond_1
    aget v4, p1, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 856
    invoke-direct {p0, v3, v0, p2}, Lorg/telegram/messenger/ChatObject$Call;->loadUnknownParticipants(Ljava/util/ArrayList;ZLorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;)V

    goto :goto_2

    .line 858
    :cond_4
    invoke-interface {p2, v1}, Lorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;->onLoad(Ljava/util/ArrayList;)V

    :goto_2
    return-void
.end method

.method public processVoiceLevelsUpdate([I[F[Z)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 744
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    .line 746
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 747
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 748
    iget-object v7, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v7}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->applyGroupCallVisibleParticipants:I

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v8, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v8, v12

    move v11, v8

    move v13, v11

    const/4 v10, 0x0

    .line 749
    :goto_0
    array-length v14, v1

    if-ge v8, v14, :cond_12

    .line 751
    aget v14, v1, v8

    if-nez v14, :cond_0

    .line 752
    iget-object v14, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    move/from16 v16, v13

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ChatObject$Call;->getSelfId()J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    goto :goto_1

    :cond_0
    move/from16 v16, v13

    .line 754
    iget-object v12, v0, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    aget v13, v1, v8

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    :goto_1
    if-eqz v12, :cond_f

    .line 757
    aget-boolean v13, p3, v8

    iput-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasVoice:Z

    .line 758
    aget-boolean v13, p3, v8

    const-wide/16 v17, 0x1f4

    if-nez v13, :cond_1

    iget-wide v13, v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastVoiceUpdateTime:J

    sub-long v13, v3, v13

    cmp-long v13, v13, v17

    if-lez v13, :cond_2

    .line 759
    :cond_1
    aget-boolean v13, p3, v8

    iput-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasVoiceDelayed:Z

    .line 760
    iput-wide v3, v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastVoiceUpdateTime:J

    .line 762
    :cond_2
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v13

    .line 763
    aget v19, p2, v8

    const v20, 0x3dcccccd    # 0.1f

    cmpl-float v19, v19, v20

    const-wide/16 v20, 0x0

    const-string v15, " "

    const-string v7, "GroupCall"

    if-lez v19, :cond_a

    .line 764
    aget-boolean v17, p3, v8

    if-eqz v17, :cond_4

    move/from16 v19, v11

    iget v11, v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastTypingDate:I

    add-int/2addr v11, v9

    move-object/from16 v22, v10

    if-ge v11, v2, :cond_5

    .line 765
    iget-wide v9, v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastVisibleDate:J

    cmp-long v9, v3, v9

    if-eqz v9, :cond_3

    .line 766
    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    .line 768
    :cond_3
    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastTypingDate:I

    const/16 v19, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v22, v10

    move/from16 v19, v11

    .line 771
    :cond_5
    :goto_2
    iput-wide v5, v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastSpeakTime:J

    .line 772
    aget v9, p2, v8

    iput v9, v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->amplitude:F

    .line 774
    iget-object v9, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v13, v14, v10}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_9

    cmp-long v9, v13, v20

    const-string v10, "add to current speaking "

    if-lez v9, :cond_7

    .line 776
    iget-object v9, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v9}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    .line 777
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v9, :cond_6

    const/4 v9, 0x0

    goto :goto_3

    :cond_6
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v2

    move-wide/from16 v23, v3

    goto :goto_5

    .line 779
    :cond_7
    iget-object v9, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v9}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    move v11, v2

    move-wide/from16 v23, v3

    neg-long v2, v13

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :goto_5
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v13, v14, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v13, 0x1

    goto/16 :goto_c

    :cond_9
    move v11, v2

    move-wide/from16 v23, v3

    goto/16 :goto_b

    :cond_a
    move-wide/from16 v23, v3

    move-object/from16 v22, v10

    move/from16 v19, v11

    move v11, v2

    .line 786
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastSpeakTime:J

    sub-long v2, v5, v2

    cmp-long v2, v2, v17

    if-ltz v2, :cond_e

    .line 787
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v14, v3}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 788
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v13, v14}, Landroidx/collection/LongSparseArray;->remove(J)V

    cmp-long v2, v13, v20

    const-string v3, "remove from speaking "

    if-lez v2, :cond_c

    .line 791
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 792
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_b

    const/4 v10, 0x0

    goto :goto_6

    :cond_b
    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_6
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 794
    :cond_c
    iget-object v2, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v9, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 795
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_d

    const/4 v10, 0x0

    goto :goto_7

    :cond_d
    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_7
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    const/4 v13, 0x1

    goto :goto_9

    :cond_e
    move/from16 v13, v16

    :goto_9
    const/4 v2, 0x0

    .line 801
    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->amplitude:F

    goto :goto_c

    :cond_f
    move-wide/from16 v23, v3

    move-object/from16 v22, v10

    move/from16 v19, v11

    move v11, v2

    .line 803
    aget v2, v1, v8

    if-eqz v2, :cond_11

    if-nez v22, :cond_10

    .line 805
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    goto :goto_a

    :cond_10
    move-object/from16 v10, v22

    .line 807
    :goto_a
    aget v2, v1, v8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v13, v16

    goto :goto_d

    :cond_11
    :goto_b
    move/from16 v13, v16

    :goto_c
    move-object/from16 v10, v22

    :goto_d
    add-int/lit8 v8, v8, 0x1

    move v2, v11

    move/from16 v11, v19

    move-wide/from16 v3, v23

    const/4 v9, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_12
    move-object/from16 v22, v10

    move/from16 v19, v11

    move/from16 v16, v13

    if-eqz v22, :cond_13

    move-object/from16 v7, v22

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 811
    invoke-direct {v0, v7, v1, v2}, Lorg/telegram/messenger/ChatObject$Call;->loadUnknownParticipants(Ljava/util/ArrayList;ZLorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;)V

    :cond_13
    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz v19, :cond_14

    .line 814
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 815
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    new-array v5, v2, [Ljava/lang/Object;

    iget-wide v6, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_14
    if-eqz v16, :cond_16

    .line 818
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-lez v3, :cond_15

    .line 819
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->updateCurrentSpeakingRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 820
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->updateCurrentSpeakingRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x226

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 822
    :cond_15
    iget-object v3, v0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallSpeakingUsersUpdated:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v5, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    iget-object v5, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public reloadGroupCall()V
    .locals 3

    .line 946
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupCall;-><init>()V

    .line 947
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupCall;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    const/16 v1, 0x64

    .line 948
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupCall;->limit:I

    .line 949
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public saveActiveDates()V
    .locals 5

    .line 1466
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1467
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1468
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    int-to-long v3, v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastActiveDate:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCall(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/tgnet/TLRPC$TL_phone_groupCall;)V
    .locals 5

    .line 302
    iput-wide p2, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    .line 303
    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    .line 304
    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 305
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->record_start_date:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/messenger/ChatObject$Call;->recording:Z

    const p1, 0x7fffffff

    .line 307
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCall;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge p2, v0, :cond_1

    .line 308
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCall;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 309
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 310
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-direct {p0, v1, p3}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V

    .line 312
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->date:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 314
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 315
    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCall;->participants_next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->nextLoadOffset:Ljava/lang/String;

    .line 316
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    .line 318
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->createNoVideoParticipant()V

    .line 319
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz p1, :cond_2

    .line 320
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ChatObject$Call;->createRtmpStreamParticipant(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public setSelfPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 874
    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    goto :goto_0

    .line 876
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    if-eqz v0, :cond_1

    .line 877
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 878
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_0

    .line 879
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    if-eqz v0, :cond_2

    .line 880
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 881
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    goto :goto_0

    .line 883
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 884
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 561
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallTitle;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallTitle;-><init>()V

    .line 562
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallTitle;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 563
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallTitle;->title:Ljava/lang/String;

    .line 564
    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public shouldShowPanel()Z
    .locals 2

    .line 420
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    if-gtz v1, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public sortParticipants()V
    .locals 14

    .line 1273
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1274
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1275
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1276
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    .line 1278
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->rtmpStreamParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v2, :cond_0

    .line 1279
    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->getSelfId()J

    move-result-wide v2

    .line 1283
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    .line 1284
    iget-object v4, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    const/4 v4, 0x1

    .line 1285
    iput-boolean v4, p0, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    const/4 v5, 0x0

    .line 1288
    iput v5, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    .line 1289
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v7, v6, :cond_a

    .line 1290
    iget-object v9, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1291
    invoke-static {v9, v5, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v10

    .line 1292
    invoke-static {v9, v4, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v11

    .line 1293
    iget-boolean v12, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->self:Z

    if-nez v12, :cond_2

    if-nez v10, :cond_1

    if-eqz v11, :cond_2

    .line 1294
    :cond_1
    iget v13, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    add-int/2addr v13, v4

    iput v13, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    :cond_2
    if-nez v10, :cond_5

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_3
    if-nez v12, :cond_4

    .line 1309
    iget-boolean v10, p0, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    if-eqz v10, :cond_4

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-nez v10, :cond_9

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-nez v10, :cond_9

    .line 1310
    :cond_4
    iput v5, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoIndex:I

    goto :goto_3

    .line 1298
    :cond_5
    :goto_1
    iget-boolean v8, p0, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    if-eqz v8, :cond_7

    .line 1299
    iget v8, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoIndex:I

    if-nez v8, :cond_8

    if-eqz v12, :cond_6

    const v8, 0x7fffffff

    .line 1301
    iput v8, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoIndex:I

    goto :goto_2

    .line 1303
    :cond_6
    sget v8, Lorg/telegram/messenger/ChatObject$Call;->videoPointer:I

    add-int/2addr v8, v4

    sput v8, Lorg/telegram/messenger/ChatObject$Call;->videoPointer:I

    iput v8, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoIndex:I

    goto :goto_2

    .line 1307
    :cond_7
    iput v5, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoIndex:I

    :cond_8
    :goto_2
    move v8, v4

    :cond_9
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1314
    :cond_a
    new-instance v6, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0, v2, v3, v1}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/ChatObject$Call;JZ)V

    .line 1352
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    :catch_0
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1357
    :goto_4
    invoke-static {v1, v5, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_c

    invoke-static {v1, v4, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1358
    :cond_c
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->unmuted_video_count:I

    iget v6, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    if-le v2, v6, :cond_e

    .line 1359
    iput v2, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    .line 1360
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1361
    iget-object v6, v2, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-ne v6, p0, :cond_e

    .line 1362
    invoke-virtual {v2, v5}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v6

    if-eq v6, v3, :cond_d

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v2

    if-ne v2, v3, :cond_e

    .line 1363
    :cond_d
    iget v2, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/telegram/messenger/ChatObject$Call;->activeVideos:I

    .line 1369
    :cond_e
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v6, 0x1388

    if-le v2, v6, :cond_11

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const-wide/16 v9, 0x0

    if-eqz v0, :cond_f

    iget-wide v0, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->raise_hand_rating:J

    cmp-long v0, v0, v9

    if-nez v0, :cond_11

    .line 1370
    :cond_f
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v6

    :goto_5
    if-ge v1, v0, :cond_11

    .line 1371
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1372
    iget-wide v11, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->raise_hand_rating:J

    cmp-long v7, v11, v9

    if-eqz v7, :cond_10

    goto :goto_6

    .line 1375
    :cond_10
    invoke-direct {p0, v2, v5}, Lorg/telegram/messenger/ChatObject$Call;->processAllSources(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V

    .line 1376
    iget-object v7, p0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1377
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1380
    :cond_11
    invoke-direct {p0}, Lorg/telegram/messenger/ChatObject$Call;->checkOnlineParticipants()V

    .line 1382
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    if-nez v0, :cond_12

    if-eqz v8, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v0, :cond_12

    .line 1383
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    move v0, v5

    move v1, v0

    .line 1387
    :goto_7
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 1388
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1389
    iget-boolean v6, p0, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    if-eqz v6, :cond_1c

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoIndex:I

    if-eqz v6, :cond_1c

    .line 1390
    iget-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->self:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_16

    invoke-static {v2, v4, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-static {v2, v5, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1391
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->videoParticipantsCache:Ljava/util/HashMap;

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-nez v6, :cond_13

    .line 1393
    new-instance v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-direct {v6, v2, v5, v4}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZZ)V

    .line 1394
    iget-object v8, p0, Lorg/telegram/messenger/ChatObject$Call;->videoParticipantsCache:Ljava/util/HashMap;

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1396
    :cond_13
    iput-object v2, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1397
    iput-boolean v5, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    .line 1398
    iput-boolean v4, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->hasSame:Z

    .line 1401
    :goto_8
    iget-object v8, p0, Lorg/telegram/messenger/ChatObject$Call;->videoParticipantsCache:Ljava/util/HashMap;

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-nez v8, :cond_14

    .line 1403
    new-instance v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-direct {v8, v2, v4, v4}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZZ)V

    goto :goto_9

    .line 1405
    :cond_14
    iput-object v2, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1406
    iput-boolean v4, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    .line 1407
    iput-boolean v4, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->hasSame:Z

    .line 1409
    :goto_9
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    iget v2, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->aspectRatio:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_15

    .line 1411
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    .line 1413
    :cond_15
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    iget v2, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->aspectRatio:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1d

    .line 1415
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_a
    sub-int/2addr v1, v4

    goto :goto_e

    .line 1418
    :cond_16
    iget-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->self:Z

    if-eqz v6, :cond_18

    .line 1419
    invoke-static {v2, v4, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1420
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-direct {v7, v2, v4, v5}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZZ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    :cond_17
    invoke-static {v2, v5, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1423
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-direct {v7, v2, v5, v5}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZZ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1426
    :cond_18
    invoke-static {v2, v4, p0}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v6

    .line 1428
    iget-object v8, p0, Lorg/telegram/messenger/ChatObject$Call;->videoParticipantsCache:Ljava/util/HashMap;

    if-eqz v6, :cond_19

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_b

    :cond_19
    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_b
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-nez v8, :cond_1b

    .line 1430
    new-instance v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-direct {v8, v2, v6, v5}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZZ)V

    .line 1431
    iget-object v9, p0, Lorg/telegram/messenger/ChatObject$Call;->videoParticipantsCache:Ljava/util/HashMap;

    if-eqz v6, :cond_1a

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_c

    :cond_1a
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_c
    invoke-virtual {v9, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 1433
    :cond_1b
    iput-object v2, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1434
    iput-boolean v6, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    .line 1435
    iput-boolean v5, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->hasSame:Z

    .line 1437
    :goto_d
    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1438
    iget v2, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->aspectRatio:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1d

    .line 1439
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_a

    .line 1444
    :cond_1c
    iget-object v6, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 1448
    :cond_1e
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v3

    if-ne v0, v4, :cond_1f

    .line 1449
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    .line 1450
    iget-object v1, p0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    return-void
.end method

.method public toggleRecord(Ljava/lang/String;I)V
    .locals 6

    .line 1498
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->recording:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call;->recording:Z

    .line 1499
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_toggleGroupCallRecord;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_toggleGroupCallRecord;-><init>()V

    .line 1500
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_toggleGroupCallRecord;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 1501
    iget-boolean v2, p0, Lorg/telegram/messenger/ChatObject$Call;->recording:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_toggleGroupCallRecord;->start:Z

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 1503
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_toggleGroupCallRecord;->title:Ljava/lang/String;

    .line 1504
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_toggleGroupCallRecord;->flags:I

    or-int/2addr p1, v2

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_toggleGroupCallRecord;->flags:I

    :cond_0
    const/4 p1, 0x0

    if-eq p2, v1, :cond_1

    if-ne p2, v2, :cond_3

    .line 1507
    :cond_1
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_toggleGroupCallRecord;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_toggleGroupCallRecord;->flags:I

    .line 1508
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_toggleGroupCallRecord;->video:Z

    if-ne p2, v1, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    move p2, p1

    .line 1509
    :goto_0
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_toggleGroupCallRecord;->video_portrait:Z

    .line 1511
    :cond_3
    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v3, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/ChatObject$Call$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/ChatObject$Call;)V

    invoke-virtual {p2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1517
    iget-object p2, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, p1

    iget-object p1, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, v3, v2

    invoke-virtual {p2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public updateVisibleParticipants()V
    .locals 5

    .line 827
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatObject$Call;->sortParticipants()V

    .line 828
    iget-object v0, p0, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
