.class public Lorg/telegram/messenger/voip/VoIPService;
.super Landroid/app/Service;
.source "VoIPService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;,
        Lorg/telegram/messenger/voip/VoIPService$CallConnection;,
        Lorg/telegram/messenger/voip/VoIPService$StateListener;,
        Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;,
        Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;
    }
.end annotation


# static fields
.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final AUDIO_ROUTE_BLUETOOTH:I = 0x2

.field public static final AUDIO_ROUTE_EARPIECE:I = 0x0

.field public static final AUDIO_ROUTE_SPEAKER:I = 0x1

.field public static final CALL_MIN_LAYER:I = 0x41

.field public static final CAPTURE_DEVICE_CAMERA:I = 0x0

.field public static final CAPTURE_DEVICE_SCREEN:I = 0x1

.field public static final DISCARD_REASON_DISCONNECT:I = 0x2

.field public static final DISCARD_REASON_HANGUP:I = 0x1

.field public static final DISCARD_REASON_LINE_BUSY:I = 0x4

.field public static final DISCARD_REASON_MISSED:I = 0x3

.field private static final ID_INCOMING_CALL_NOTIFICATION:I = 0xca

.field private static final ID_ONGOING_CALL_NOTIFICATION:I = 0xc9

.field private static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final QUALITY_FULL:I = 0x2

.field public static final QUALITY_MEDIUM:I = 0x1

.field public static final QUALITY_SMALL:I = 0x0

.field public static final STATE_BUSY:I = 0x11

.field public static final STATE_CREATING:I = 0x6

.field public static final STATE_ENDED:I = 0xb

.field public static final STATE_ESTABLISHED:I = 0x3

.field public static final STATE_EXCHANGING_KEYS:I = 0xc

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_HANGING_UP:I = 0xa

.field public static final STATE_RECONNECTING:I = 0x5

.field public static final STATE_REQUESTING:I = 0xe

.field public static final STATE_RINGING:I = 0x10

.field public static final STATE_WAITING:I = 0xd

.field public static final STATE_WAITING_INCOMING:I = 0xf

.field public static final STATE_WAIT_INIT:I = 0x1

.field public static final STATE_WAIT_INIT_ACK:I = 0x2

.field private static final USE_CONNECTION_SERVICE:Z

.field public static audioLevelsCallback:Lorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;

.field public static callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

.field private static setModeRunnable:Ljava/lang/Runnable;

.field private static sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

.field private static final sync:Ljava/lang/Object;


# instance fields
.field private a_or_b:[B

.field private afterSoundRunnable:Ljava/lang/Runnable;

.field private audioConfigured:Z

.field private audioRouteToSet:I

.field private authKey:[B

.field private bluetoothScoActive:Z

.field private bluetoothScoConnecting:Z

.field private btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private callDiscardReason:I

.field private callReqId:I

.field private callStartTime:J

.field private captureDevice:[J

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private checkRequestId:I

.field private classGuid:I

.field private connectingSoundRunnable:Ljava/lang/Runnable;

.field private cpuWakelock:Landroid/os/PowerManager$WakeLock;

.field private createGroupCall:Z

.field private currentAccount:I

.field private currentBackgroundEndpointId:[Ljava/lang/String;

.field private currentBackgroundSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

.field public currentBluetoothDeviceName:Ljava/lang/String;

.field public currentGroupModeStreaming:Z

.field private currentState:I

.field private currentStreamRequestTimestamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private delayedStartOutgoingCall:Ljava/lang/Runnable;

.field private destroyCaptureDevice:[Z

.field private didDeleteConnectionServiceContact:Z

.field private endCallAfterRequest:Z

.field fetchingBluetoothDeviceName:Z

.field private forceRating:Z

.field private g_a:[B

.field private g_a_hash:[B

.field public groupCall:Lorg/telegram/messenger/ChatObject$Call;

.field private groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field private hasAudioFocus:Z

.field public hasFewPeers:Z

.field private isBtHeadsetConnected:Z

.field private isFrontFaceCamera:Z

.field private isHeadsetPlugged:Z

.field private isOutgoing:Z

.field private isPrivateScreencast:Z

.field private isProximityNear:Z

.field private isVideoAvailable:Z

.field private joinHash:Ljava/lang/String;

.field private keyFingerprint:J

.field private lastError:Ljava/lang/String;

.field private lastNetInfo:Landroid/net/NetworkInfo;

.field private lastTypingTimeSend:J

.field private localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

.field private mHasEarpiece:Ljava/lang/Boolean;

.field private micMute:Z

.field public micSwitching:Z

.field private myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

.field private mySource:[I

.field private needPlayEndSound:Z

.field private needRateCall:Z

.field private needSendDebugLog:Z

.field private needSwitchToBluetoothAfterScoActivates:Z

.field private notificationsDisabled:Z

.field private onDestroyRunnable:Ljava/lang/Runnable;

.field private pendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PhoneCall;",
            ">;"
        }
    .end annotation
.end field

.field private playedConnectedSound:Z

.field private playingSound:Z

.field private prevTrafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

.field private previousAudioOutput:I

.field public privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

.field private proximityWakelock:Landroid/os/PowerManager$WakeLock;

.field private final proxyVideoSinkLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field private reconnectScreenCapture:Z

.field private remoteAudioState:I

.field private remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

.field private remoteSinks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;",
            ">;"
        }
    .end annotation
.end field

.field private remoteVideoState:I

.field private ringtonePlayer:Landroid/media/MediaPlayer;

.field private scheduleDate:I

.field private serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field public final sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

.field private shortPollRunnable:Ljava/lang/Runnable;

.field private signalBarCount:I

.field private soundPool:Landroid/media/SoundPool;

.field private spAllowTalkId:I

.field private spBusyId:I

.field private spConnectingId:I

.field private spEndId:I

.field private spFailedID:I

.field private spPlayId:I

.field private spRingbackID:I

.field private spStartRecordId:I

.field private spVoiceChatConnecting:I

.field private spVoiceChatEndId:I

.field private spVoiceChatStartId:I

.field private speakerphoneStateToSet:Z

.field private startedRinging:Z

.field private stateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/voip/VoIPService$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private switchingAccount:Z

.field private switchingCamera:Z

.field private switchingStream:Z

.field private switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

.field private systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

.field private tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

.field private timeoutRunnable:Ljava/lang/Runnable;

.field private unmutedByHold:Z

.field private updateNotificationRunnable:Ljava/lang/Runnable;

.field private user:Lorg/telegram/tgnet/TLRPC$User;

.field private vibrator:Landroid/os/Vibrator;

.field public videoCall:Z

.field private videoState:[I

.field private final waitingFrameParticipant:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private wasConnected:Z

.field private wasEstablished:Z


# direct methods
.method public static synthetic $r8$lambda$-GaXRhY6JQoV517shdjAPaG92Xs(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCheckShortpoll$33(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0-LCcGJSM8Xol8iQNAuJ1lGYgg4(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$getConnectionAndStartCall$73()V

    return-void
.end method

.method public static synthetic $r8$lambda$00mPCrLC48Nl6__Xf3AO09EQbWU(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$41(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0EmzDBz_ioiujL2HWoY4uhQT8xM(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$declineIncomingCall$72(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0y2w749CWa07IeTX8zoLgVOZkpc(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$27(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2TM_qe6z107yzSHtnb6eQu1CdkA(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callEnded$93()V

    return-void
.end method

.method public static synthetic $r8$lambda$2tTekcYS4k24m1N7v0o3Fp2hEys(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$setupCaptureDevice$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$32BeK3LRi5U6oAjfDwBisF3vPbQ(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onSignalBarCountChanged$89(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3RuNawtNj9PrhzClZqa2OgSz8KM(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onCallUpdated$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$3bqH4KXIMtggm_j1RUg3ZWKZ2WA(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acceptIncomingCall$68(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3dnBZ7QB4uTvhblxd9zYQG64MU0(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$updateConnectionState$51(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$54xamydPRx_MWHFVYLQrHm38N_o(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$21(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$59z9su2zhKY1KIdUx1IR4tJNri0(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callEnded$92()V

    return-void
.end method

.method public static synthetic $r8$lambda$6_vX6B5fTcPeOS-8T_YdqcXhCJw()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onDestroy$64()V

    return-void
.end method

.method public static synthetic $r8$lambda$725QI2WvpbjDNoKPlEvaCGudyTU(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onDestroy$66()V

    return-void
.end method

.method public static synthetic $r8$lambda$7OGfH3ygFjYVVzZI4olvaqx0FRs(Lorg/telegram/messenger/voip/VoIPService;IJI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$46(IJI)V

    return-void
.end method

.method public static synthetic $r8$lambda$7h_O_fDOiGsk0cgg8DFuMzOq5aY(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/AudioManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$configureDeviceForCall$78(Landroid/media/AudioManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8b9EnUliWa7oD0zD1gv_-BgHJSw(Lorg/telegram/messenger/voip/VoIPService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$initiateActualEncryptedCall$57(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$9t2bQMd7a2qawkKAJxWSQwGt2Ag(Lorg/telegram/messenger/voip/VoIPService;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$50(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$B0eAKygTSH-_UOopoQhftbjx1Ag(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$setMicMute$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$BGha68ZIELyjUsHRz3w5ByI7Nv4(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$playConnectedSound$58()V

    return-void
.end method

.method public static synthetic $r8$lambda$B_f8NIZVRF89Pn1_jdFxX08l_nM()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acceptIncomingCall$67()V

    return-void
.end method

.method public static synthetic $r8$lambda$CInUSuLGi83dTg7aobxD7-p99LY(Lorg/telegram/messenger/voip/VoIPService;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startScreenCapture$32(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CZ-8B-o_XYqqtHkecjvLhdR4qcI(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startOutgoingCall$10(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D70-tp3cWpRCZwNNwoK47MjG1ag(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$updateConnectionState$52()V

    return-void
.end method

.method public static synthetic $r8$lambda$DOFjKb4Brg36cgmYyqUNMz4Ppiw(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startOutgoingCall$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$EwnevUuDXoTm87B1u78H_64VEAQ(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$declineIncomingCall$71()V

    return-void
.end method

.method public static synthetic $r8$lambda$FmxuE-v9wKsL1b9KImXSUK5SC5Q(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$playStartRecordSound$87()V

    return-void
.end method

.method public static synthetic $r8$lambda$GubXs2ICVlf-AGKWhNBxjXZL2rI(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startScreenCapture$30(Lorg/telegram/tgnet/TLRPC$Updates;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HH-CiFA5TnOTya-PTE3AbAPlpP8(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onCallUpdated$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$HNZ1ebH5e1FX_DtQh2zRpuPbuA4(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acceptIncomingCall$70(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I2wMitISzQQY34idFCpOFWcyTYA(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$loadResources$76()V

    return-void
.end method

.method public static synthetic $r8$lambda$IKnzf8sxArrwrmzKnrr4TwkiCqw()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startOutgoingCall$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$Il2MxpkTDFQ6R51l5wmZORzMK9g(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callFailed$81(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JwPjyiCOQ2lLGJGmSDg7RhhaIkU(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onConnectionStateChanged$86(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KGuyg8FtV_osT9_LWyPKaz6eifA(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$endConnectionServiceCall$94()V

    return-void
.end method

.method public static synthetic $r8$lambda$KoGoLgc_yYLMB0-t8fUtZ4CJNFA(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$24(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KxpABIpLPTM__4cq3Wd7igpxt3g(Lorg/telegram/messenger/voip/VoIPService;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acknowledgeCall$12(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LjPk8Bl_hES2PdVSGhWtLvR1mEw(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acknowledgeCall$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lka7omcLcrLHx_t4ywt59OdZbhU(Landroid/media/AudioManager;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onDestroy$65(Landroid/media/AudioManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ls-ZTyD-JFGlEGLVx4QUDFkkeR8(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$44(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$N5t0qKWBrBono9V26_-UwBljI08(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConnectingSound$59()V

    return-void
.end method

.method public static synthetic $r8$lambda$OL0VaOJq08FYZT08W0XIz6og2y0(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$initiateActualEncryptedCall$54()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q3UL4Tdllg-Bjno40a0pJeNIPLo(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$playAllowTalkSound$88()V

    return-void
.end method

.method public static synthetic $r8$lambda$R7aIJ0hfH0k-wJqUiHH4HdM9QWI(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCheckShortpoll$34(Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TcZ1EUu2pgFTzj7p6WBWI8q5kZ4(Lorg/telegram/messenger/voip/VoIPService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$initiateActualEncryptedCall$56(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$TpQ5Q41Ep77WO0S6xgDBQEMwmHM(Lorg/telegram/messenger/voip/VoIPService;I[I[F[Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$38(I[I[F[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$VTVFFyhbXV8U-ib6kHDvS7jnAHs(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$25(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ViGKH3i-lKyW7ig5Y9VH8-AiFUo(Lorg/telegram/messenger/voip/VoIPService;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$49(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vvl18H7h0aDT3feOidrUSoyjKPo(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startOutgoingCall$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Whw_70T_B58Kxo-9daP564M0r9s(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCheckShortpoll$35()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y9c-I3TEkt29fdLee45S3jc8ygA(Lorg/telegram/messenger/voip/VoIPService;IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$28(IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YZ56_hvTz8h37zg7aRn6nmgA990(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callEnded$90()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZIHsH6Z5sjWc5fEbKAwZuDKpc-8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onSignalingData$60(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a5jbEB9d76aIK6c30irTaKSw0xg(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$26(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ajNlEGklecm9dXTXmEB3zlfyLz0(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$stopScreenCapture$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b4vHAm3fuGn1uVT-w-faorwdVD4(Landroid/content/SharedPreferences;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$updateServerConfig$74(Landroid/content/SharedPreferences;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bnTkyyoJ5M3yvrWvllPwcY6Qzfo(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$42(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bwfBNCVRN4pE3Twfk0FUXc4OhlQ(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onConnectionStateChanged$84()V

    return-void
.end method

.method public static synthetic $r8$lambda$d-gPDi6eB_EYWJ_ETxddJ9x_a_M(Landroid/media/AudioManager;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$updateBluetoothHeadsetState$80(Landroid/media/AudioManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dja3EyEMp0fxxgWGkHs3sGKr-BQ(Lorg/telegram/messenger/voip/VoIPService;IJJII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$47(IJJII)V

    return-void
.end method

.method public static synthetic $r8$lambda$eJGvb0aemxiIn7fMZZClFzErLSk(Lorg/telegram/messenger/voip/VoIPService;IJ[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$40(IJ[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eUcy9mksz1FvJ2nC3ej-L_R42Kg(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startScreenCapture$29(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fcW_vI8HqmQ3XZ8xHa6rLkLfEjg(Lorg/telegram/messenger/voip/VoIPService;J[ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$39(J[ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$giBTRlkGjpiccvZJcTzmtNuJcew(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startRingtoneAndVibration$63(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gtAl8RbcHgfSfYl83b3Qr8KyA60(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$updateConnectionState$53()V

    return-void
.end method

.method public static synthetic $r8$lambda$hAV5OhtSLvTAsH0yLOL9fxOTDAY(Lorg/telegram/messenger/voip/VoIPService;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$36(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hTIdLj_R0YI6lCFd2usFXxhHWoM(Lorg/telegram/messenger/voip/VoIPService;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$toggleSpeakerphoneOrShowRouteSheet$62(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hleq3Ty1af2NVK7WwCQIH099R2Y(Lorg/telegram/messenger/voip/VoIPService;[BLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startOutgoingCall$9([BLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iu0IwB1ZqPhfM9FjRyTywale81U(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onConnectionStateChanged$85()V

    return-void
.end method

.method public static synthetic $r8$lambda$jKqES-rSngqAE1k097SywnpR3mE(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kXiI7xwGF-I0_8qUJUnH-ePfrbE(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acceptIncomingCall$69(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lMraPYs4WPrbxJ1S5edIpo2QI0I(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startScreenCapture$31(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lTmDahP8HuXWkXPzdioNiBNCgeo(Lorg/telegram/messenger/voip/VoIPService;IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$48(IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$lxNWhxJSsXZBJXT8FibNdjFxrO4(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startOutgoingCall$8(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$mktR9MgsKT_8wlkiznNVHVSFs_E(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;IJIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$43(Ljava/lang/String;IJIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$oWkfDU75sOor3eFxJIoS9x5E24c(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$hangUp$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p7alq_fWQDCqwRw_0OnhvrWve2k(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void
.end method

.method public static synthetic $r8$lambda$pix1NOYwzv3rtMHvJeMKEIOYhAI(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$hangUp$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$prtiaaNi89Zx13HBs-iBKMuPIJ0(Lorg/telegram/messenger/voip/VoIPService;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$editCallMember$61(ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qSBoog7qkpdm-HNQL4ftd2ZWATE(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$processAcceptedCall$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qbIuLFh8n7-0WwkydNSeLTJ8nMA(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onStartCommand$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$qe354xzwICVW_5ks_GGWxhj0kD0(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callEnded$91()V

    return-void
.end method

.method public static synthetic $r8$lambda$r5yzN8gsYhDAgaCqeWlMCDQ0W6g(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onTgVoipStop$75(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rfPZiMWW8RW22SiYo1Y05S1o66E()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->lambda$configureDeviceForCall$77()V

    return-void
.end method

.method public static synthetic $r8$lambda$sGyKepZG_AXU05uC_kp7qQ1qX1s(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callFailed$82()V

    return-void
.end method

.method public static synthetic $r8$lambda$tD8E0bsgTzjrdDyIHEVobl6ZE_o(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$37(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ugREHKZ2mabioYLSeYrf5u4VJUI(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$processAcceptedCall$18(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vKtXr5ZQokjqtyylu7tpL-MVXdI()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$vNa69qujbpk7NNZkEyVGkJq6SYc(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/AudioManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$configureDeviceForCall$79(Landroid/media/AudioManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vdYeGQdFDP6C9CO_Hr8hSmfCj8E(Lorg/telegram/messenger/voip/VoIPService;[I[F[Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$initiateActualEncryptedCall$55([I[F[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$wHDwT_fPtxDapIl4q42PbqkVf1k(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callFailed$83()V

    return-void
.end method

.method public static synthetic $r8$lambda$wx0FYXDsdU1IswhwY_3PE82WcPY(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$20(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y2hkS0FnRKij3_B1BEOyfgZvzgs(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onCallUpdated$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$y6ZCLrqfb90Pe7tZWgDlkiMdlLo(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onStartCommand$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$yMl6PX0KyAbfg5QTpaBv6WqP8_A(Lorg/telegram/messenger/voip/VoIPService;IJJII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$45(IJJII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 182
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->isDeviceCompatibleWithConnectionServiceAPI()Z

    move-result v0

    sput-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 142
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    .line 184
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    const/4 v1, 0x0

    .line 190
    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/4 v2, 0x1

    .line 200
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    .line 207
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->previousAudioOutput:I

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    .line 252
    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 255
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    new-array v1, v0, [Lorg/telegram/messenger/voip/NativeInstance;

    .line 256
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    new-array v1, v0, [J

    .line 257
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    new-array v1, v0, [Z

    .line 258
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    new-array v1, v0, [I

    .line 259
    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    .line 270
    iput v2, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteAudioState:I

    .line 272
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 284
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    invoke-direct {v1}, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    .line 312
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    .line 315
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$1;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->afterSoundRunnable:Ljava/lang/Runnable;

    .line 352
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$2;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 378
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$3;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->receiver:Landroid/content/BroadcastReceiver;

    .line 506
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    .line 507
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$4;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/voip/VoIPService$4;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->proxyVideoSinkLruCache:Landroid/util/LruCache;

    new-array v1, v0, [Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    .line 652
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    new-array v1, v0, [Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    .line 653
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    new-array v1, v0, [Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    .line 654
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBackgroundSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    new-array v0, v0, [Ljava/lang/String;

    .line 655
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBackgroundEndpointId:[Ljava/lang/String;

    .line 657
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private acceptIncomingCallFromNotification()V
    .locals 3

    .line 4293
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 4294
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_2

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Landroid/app/Service;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-eqz v0, :cond_2

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Landroid/app/Service;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 4297
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/VoIPPermissionActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4299
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_1

    const-string v1, "Error starting permission activity"

    .line 4300
    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 4305
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    .line 4307
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getUIActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "voip"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x2000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 4309
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_3

    const-string v1, "Error starting incall activity"

    .line 4310
    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 142
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    return v0
.end method

.method static synthetic access$100()Lorg/telegram/messenger/voip/VoIPService;
    .locals 1

    .line 142
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 142
    iget p0, p0, Lorg/telegram/messenger/voip/VoIPService;->previousAudioOutput:I

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/messenger/voip/VoIPService;I)I
    .locals 0

    .line 142
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->previousAudioOutput:I

    return p1
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/voip/VoIPService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 142
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->fetchBluetoothDeviceName()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;
    .locals 0

    .line 142
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/voip/VoIPService;)[Lorg/telegram/messenger/voip/NativeInstance;
    .locals 0

    .line 142
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/HashMap;
    .locals 0

    .line 142
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/HashMap;
    .locals 0

    .line 142
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/voip/VoIPService;)Landroid/util/LruCache;
    .locals 0

    .line 142
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->proxyVideoSinkLruCache:Landroid/util/LruCache;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/voip/NativeInstance;Lorg/telegram/messenger/voip/Instance$TrafficStats;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->updateTrafficStats(Lorg/telegram/messenger/voip/NativeInstance;Lorg/telegram/messenger/voip/Instance$TrafficStats;)V

    return-void
.end method

.method static synthetic access$2502(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/voip/VoIPService$CallConnection;)Lorg/telegram/messenger/voip/VoIPService$CallConnection;
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCallFromNotification()V

    return-void
.end method

.method static synthetic access$2702(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startRinging()V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 142
    iget p0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->didDeleteConnectionServiceContact:Z

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 142
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 142
    iget p0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/messenger/voip/VoIPService;I)I
    .locals 0

    .line 142
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 142
    iget p0, p0, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$402(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    return p1
.end method

.method static synthetic access$500()Ljava/lang/Runnable;
    .locals 1

    .line 142
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 142
    sput-object p0, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .line 142
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/voip/VoIPService;)Landroid/media/SoundPool;
    .locals 0

    .line 142
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/messenger/voip/VoIPService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 142
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method private acknowledgeCall(Z)V
    .locals 5

    .line 1017
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;

    if-eqz v0, :cond_1

    .line 1018
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 1019
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " was discarded before the service started, stopping"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1021
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 1024
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x2724

    invoke-static {v0}, Lorg/telegram/messenger/XiaomiUtilities;->isCustomPermissionGranted(I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "keyguard"

    .line 1025
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1026
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    const-string p1, "MIUI: no permission to show when locked but the screen is locked. \u00af\\_(\u30c4)_/\u00af"

    .line 1027
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1029
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 1033
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;-><init>()V

    .line 1034
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 1035
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 1036
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 1037
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda92;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda92;-><init>(Lorg/telegram/messenger/voip/VoIPService;Z)V

    const/4 p1, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private addAccountToTelecomManager()Landroid/telecom/PhoneAccountHandle;
    .locals 7

    const-string v0, "telecom"

    .line 4364
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 4365
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 4366
    new-instance v2, Landroid/telecom/PhoneAccountHandle;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lorg/telegram/messenger/voip/TelegramConnectionService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4367
    new-instance v3, Landroid/telecom/PhoneAccount$Builder;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    const/16 v1, 0x800

    .line 4368
    invoke-virtual {v3, v1}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_launcher_dr:I

    .line 4369
    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/telecom/PhoneAccount$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v1

    const v3, -0xd35a20

    .line 4370
    invoke-virtual {v1, v3}, Landroid/telecom/PhoneAccount$Builder;->setHighlightColor(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v1

    const-string v3, "sip"

    .line 4371
    invoke-virtual {v1, v3}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v1

    .line 4372
    invoke-virtual {v1}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v1

    .line 4373
    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    return-object v2
.end method

.method private broadcastUnknownParticipants(J[I)V
    .locals 10

    .line 1990
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 1993
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v2

    const/4 v0, 0x0

    .line 1995
    array-length v4, p3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    .line 1996
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    aget v7, p3, v5

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-nez v6, :cond_1

    .line 1998
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->participantsByVideoSources:Landroid/util/SparseArray;

    aget v7, p3, v5

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-nez v6, :cond_1

    .line 2000
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->participantsByPresentationSources:Landroid/util/SparseArray;

    aget v7, p3, v5

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    :cond_1
    if-eqz v6, :cond_4

    .line 2003
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-eqz v9, :cond_4

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 2007
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2009
    :cond_3
    new-instance v7, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;

    aget v8, p3, v5

    invoke-direct {v7, v6, v8}, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;I)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_8

    .line 2012
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [I

    .line 2013
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    .line 2014
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;

    .line 2015
    iget v4, v4, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;->audioSsrc:I

    aput v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2017
    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, p3}, Lorg/telegram/messenger/voip/NativeInstance;->onMediaDescriptionAvailable(J[I)V

    .line 2019
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_3
    if-ge p2, p1, :cond_8

    .line 2020
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;

    .line 2021
    iget-object v2, p3, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted_by_you:Z

    if-eqz v3, :cond_7

    .line 2022
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v2, v2, v1

    iget p3, p3, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;->audioSsrc:I

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p3, v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setVolume(ID)V

    goto :goto_4

    .line 2024
    :cond_7
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v3, v3, v1

    iget p3, p3, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;->audioSsrc:I

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)I

    move-result v2

    int-to-double v4, v2

    const-wide v6, 0x40c3880000000000L    # 10000.0

    div-double/2addr v4, v6

    invoke-virtual {v3, p3, v4, v5}, Lorg/telegram/messenger/voip/NativeInstance;->setVolume(ID)V

    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    return-void
.end method

.method private callEnded()V
    .locals 5

    .line 4206
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 4207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ended"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4209
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 4210
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    .line 4212
    :cond_2
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/16 v0, 0x2bc

    .line 4214
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 4221
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 4222
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4223
    iput-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    .line 4225
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 4226
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    .line 4227
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v1, :cond_4

    .line 4228
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4230
    :cond_4
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x1f4

    .line 4233
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->afterSoundRunnable:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4235
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 4236
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4237
    iput-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 4239
    :cond_6
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    if-eqz v1, :cond_7

    int-to-long v0, v0

    goto :goto_1

    :cond_7
    const-wide/16 v0, 0x0

    :goto_1
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->endConnectionServiceCall(J)V

    .line 4240
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private callFailed()V
    .locals 3

    .line 3862
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->getLastError()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "ERROR_UNKNOWN"

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(Ljava/lang/String;)V

    return-void
.end method

.method private callFailed(Ljava/lang/String;)V
    .locals 7

    .line 4062
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_2

    .line 4063
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "Discarding failed call"

    .line 4064
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4066
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;-><init>()V

    .line 4067
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 4068
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 4069
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 4070
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v3

    div-long/2addr v3, v1

    long-to-int v4, v3

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->duration:I

    .line 4071
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    if-eqz v5, :cond_1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/NativeInstance;->getPreferredRelayId()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->connection_id:J

    .line 4072
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 4073
    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda94;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda94;

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4086
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " failed with error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 4088
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4090
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastError:Ljava/lang/String;

    .line 4091
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const-string v0, "ERROR_LOCALIZED"

    .line 4092
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    if-eqz p1, :cond_3

    .line 4093
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    .line 4094
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda32;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 4095
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->afterSoundRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4097
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz p1, :cond_4

    .line 4098
    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v0}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 4099
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {p1}, Landroid/telecom/Connection;->destroy()V

    const/4 p1, 0x0

    .line 4100
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    .line 4102
    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private cancelGroupCheckShortPoll()V
    .locals 3

    .line 1966
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1969
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    if-eqz v0, :cond_1

    .line 1970
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1971
    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    .line 1973
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 1974
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1975
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    :cond_2
    :goto_0
    return-void
.end method

.method private checkIsNear()V
    .locals 3

    .line 3703
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget v0, v0, v1

    if-ne v0, v2, :cond_1

    .line 3704
    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->checkIsNear(Z)V

    :cond_1
    return-void
.end method

.method private checkIsNear(Z)V
    .locals 2

    .line 3709
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    if-eq p1, v0, :cond_2

    .line 3710
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proximity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3713
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    if-eqz p1, :cond_1

    .line 3716
    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 3718
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3721
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private configureDeviceForCall()V
    .locals 5

    .line 3588
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configureDeviceForCall, route to set = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3592
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_3

    .line 3593
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioTrackUsageAttribute(I)V

    .line 3594
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x80000000

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioStreamType(I)V

    .line 3597
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    const-string v0, "audio"

    .line 3598
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3599
    sget-boolean v1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-nez v1, :cond_4

    .line 3600
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/AudioManager;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_4
    const-string v0, "sensor"

    .line 3659
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    .line 3660
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_0
    const-string v2, "power"

    .line 3663
    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const/16 v3, 0x20

    const-string v4, "telegram-voip-prx"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x3

    .line 3664
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3667
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_5

    const-string v1, "Error initializing proximity sensor"

    .line 3668
    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private convertDataSavingMode(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return p1

    .line 1647
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isRoaming()Z

    move-result p1

    return p1
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3390
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3391
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3393
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3394
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3396
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 3397
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createGroupInstance(IZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2032
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aput v3, v4, v1

    if-nez v1, :cond_0

    .line 2034
    iput-boolean v2, v0, Lorg/telegram/messenger/voip/VoIPService;->switchingAccount:Z

    .line 2037
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->cancelGroupCheckShortPoll()V

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2039
    iput-boolean v3, v0, Lorg/telegram/messenger/voip/VoIPService;->wasConnected:Z

    goto :goto_0

    .line 2040
    :cond_1
    iget-boolean v4, v0, Lorg/telegram/messenger/voip/VoIPService;->wasConnected:Z

    if-nez v4, :cond_2

    .line 2041
    iput-boolean v2, v0, Lorg/telegram/messenger/voip/VoIPService;->reconnectScreenCapture:Z

    return-void

    .line 2045
    :cond_2
    :goto_0
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v4, v1

    if-nez v4, :cond_6

    .line 2047
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "voip_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v4, v5, v3}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogFilePath(JZ)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v5, v4

    .line 2048
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    iget-object v6, v0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v7, v6, v1

    if-ne v1, v2, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-nez v1, :cond_5

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    if-eqz v6, :cond_5

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_3
    new-instance v11, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;

    invoke-direct {v11, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    new-instance v12, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda71;

    invoke-direct {v12, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda71;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    new-instance v13, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda76;

    invoke-direct {v13, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda76;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    new-instance v14, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda74;

    invoke-direct {v14, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda74;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    new-instance v15, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda73;

    invoke-direct {v15, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda73;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    new-instance v6, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda75;

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda75;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    move-object/from16 v16, v6

    move-wide v6, v7

    move v8, v9

    move v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    invoke-static/range {v5 .. v15}, Lorg/telegram/messenger/voip/NativeInstance;->makeGroup(Ljava/lang/String;JZZLorg/telegram/messenger/voip/NativeInstance$PayloadCallback;Lorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;Lorg/telegram/messenger/voip/NativeInstance$VideoSourcesCallback;Lorg/telegram/messenger/voip/NativeInstance$RequestBroadcastPartCallback;Lorg/telegram/messenger/voip/NativeInstance$RequestBroadcastPartCallback;Lorg/telegram/messenger/voip/NativeInstance$RequestCurrentTimeCallback;)Lorg/telegram/messenger/voip/NativeInstance;

    move-result-object v5

    aput-object v5, v4, v1

    .line 2180
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v4, v1

    new-instance v5, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda69;

    invoke-direct {v5, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda69;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/voip/NativeInstance;->setOnStateUpdatedListener(Lorg/telegram/messenger/voip/Instance$OnStateUpdatedListener;)V

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    .line 2182
    :goto_4
    iget-object v5, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v5, v5, v1

    xor-int/2addr v4, v2

    invoke-virtual {v5, v4, v3}, Lorg/telegram/messenger/voip/NativeInstance;->resetGroupInstance(ZZ)V

    .line 2183
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v5, v4, v1

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-eqz v4, :cond_7

    .line 2184
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aput-boolean v3, v4, v1

    :cond_7
    if-nez v1, :cond_8

    .line 2187
    invoke-direct {v0, v2}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    :cond_8
    return-void
.end method

.method private createSsrcGroups(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;
    .locals 8

    .line 1278
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1281
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1283
    new-instance v4, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    invoke-direct {v4}, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;-><init>()V

    aput-object v4, v1, v3

    .line 1284
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    .line 1285
    aget-object v5, v1, v3

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->semantics:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;->semantics:Ljava/lang/String;

    .line 1286
    aget-object v5, v1, v3

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, v5, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;->ssrcs:[I

    const/4 v5, 0x0

    .line 1287
    :goto_1
    aget-object v6, v1, v3

    iget-object v6, v6, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;->ssrcs:[I

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 1288
    aget-object v6, v1, v3

    iget-object v6, v6, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;->ssrcs:[I

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private dispatchStateChanged(I)V
    .locals 3

    .line 3550
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "== Call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " state changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3553
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    .line 3554
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_1

    .line 3555
    invoke-virtual {v0}, Landroid/telecom/Connection;->setActive()V

    :cond_1
    const/4 v0, 0x0

    .line 3557
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3558
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3559
    invoke-interface {v1, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onStateChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private endConnectionServiceCall(J)V
    .locals 4

    .line 4244
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_1

    .line 4245
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 4269
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 4271
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method private fetchBluetoothDeviceName()V
    .locals 3

    .line 3674
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->fetchingBluetoothDeviceName:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3678
    :try_start_0
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBluetoothDeviceName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3679
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->fetchingBluetoothDeviceName:Z

    .line 3680
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1, p0, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3682
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    const-string v0, "connectivity"

    .line 3858
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEmoji()[Ljava/lang/String;
    .locals 5

    .line 2523
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2525
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2526
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2529
    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojifyForCall([B)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkType()I
    .locals 3

    .line 3813
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 3816
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_1

    const/16 v0, 0x9

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    goto :goto_1

    .line 3818
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v1, 0xb

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    :pswitch_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getRoundAvatarBitmap(Lorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3868
    :try_start_0
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v3, "50_50"

    if-eqz v2, :cond_1

    .line 3869
    :try_start_1
    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 3870
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_3

    .line 3871
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v4, v5, v0, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3873
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 3876
    :cond_0
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3877
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 3878
    iget v4, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v4, v2, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 3880
    :try_start_3
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3885
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3886
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_3

    .line 3887
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v4, v5, v0, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3889
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 3892
    :cond_2
    :try_start_4
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3893
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 3894
    iget v4, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v4, v2, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 3896
    :try_start_5
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    .line 3902
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    if-nez v0, :cond_5

    .line 3905
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 3907
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_4

    .line 3908
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_1

    .line 3910
    :cond_4
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :goto_1
    const/16 p1, 0x2a

    .line 3912
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3913
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3914
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, p1

    .line 3917
    :cond_5
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3918
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 3919
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 3920
    invoke-virtual {v2}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 3921
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 3922
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3923
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    .locals 1

    .line 828
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    return-object v0
.end method

.method private getStatsNetworkType()I
    .locals 1

    .line 2572
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    .line 2573
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 2574
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3401
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3402
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3403
    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 3404
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    return-object v0
.end method

.method private getUIActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 3287
    const-class v0, Lorg/telegram/ui/LaunchActivity;

    return-object v0
.end method

.method public static hasRtmpStream()Z
    .locals 1

    .line 824
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initializeAccountRelatedThings()V
    .locals 2

    .line 3441
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateServerConfig()V

    .line 3442
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3443
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    return-void
.end method

.method private initiateActualEncryptedCall()V
    .locals 38

    move-object/from16 v1, p0

    const-string v0, "calls_access_hashes"

    const-string v2, " "

    .line 2286
    iget-object v3, v1, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2287
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2288
    iput-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 2291
    :cond_0
    :try_start_0
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_1

    .line 2292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InitCall: keyID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2294
    :cond_1
    iget v3, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2295
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2298
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 2300
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2302
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2303
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v5

    const/16 v7, 0x14

    const/4 v8, 0x2

    if-le v5, v7, :cond_7

    const-wide v9, 0x7fffffffffffffffL

    .line 2306
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v7, v4

    .line 2307
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2308
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2309
    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2310
    array-length v13, v12

    if-ge v13, v8, :cond_5

    .line 2311
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_2

    .line 2314
    :cond_5
    :try_start_1
    aget-object v12, v12, v8

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v14, v12, v9

    if-gez v14, :cond_4

    move-object v7, v11

    move-wide v9, v12

    goto :goto_2

    .line 2320
    :catch_0
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_3

    .line 2325
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2328
    :cond_7
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-lt v0, v2, :cond_8

    .line 2333
    :try_start_3
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    const/4 v0, 0x0

    .line 2337
    :goto_3
    :try_start_4
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :catch_2
    const/4 v2, 0x0

    .line 2342
    :goto_4
    :try_start_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2345
    iget v6, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    .line 2346
    iget v7, v6, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    int-to-double v9, v7

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double v14, v9, v11

    .line 2347
    iget v6, v6, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    int-to-double v6, v6

    div-double v16, v6, v11

    const-string v6, "VoipDataSaving"

    .line 2348
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getDataSavingDefault()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {v1, v6}, Lorg/telegram/messenger/voip/VoIPService;->convertDataSavingMode(I)I

    move-result v18

    .line 2349
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->getGlobalServerConfig()Lorg/telegram/messenger/voip/Instance$ServerConfig;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v0, :cond_a

    .line 2350
    iget-boolean v0, v6, Lorg/telegram/messenger/voip/Instance$ServerConfig;->useSystemAec:Z

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    const/16 v20, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/16 v20, 0x1

    :goto_6
    if-eqz v2, :cond_c

    .line 2351
    iget-boolean v0, v6, Lorg/telegram/messenger/voip/Instance$ServerConfig;->useSystemNs:Z

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    const/16 v21, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/16 v21, 0x1

    .line 2352
    :goto_8
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v9, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_d
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v9, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-static {v9, v10, v3}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogFilePath(JZ)Ljava/lang/String;

    move-result-object v0

    :goto_9
    move-object/from16 v25, v0

    .line 2353
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v9, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-static {v9, v10, v7}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogFilePath(JZ)Ljava/lang/String;

    move-result-object v26

    .line 2354
    new-instance v28, Lorg/telegram/messenger/voip/Instance$Config;

    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->p2p_allowed:Z

    const/16 v22, 0x1

    const/16 v23, 0x0

    iget-boolean v6, v6, Lorg/telegram/messenger/voip/Instance$ServerConfig;->enableStunMarking:Z

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->protocol:Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->max_layer:I

    move-object/from16 v13, v28

    move/from16 v19, v2

    move/from16 v24, v6

    move/from16 v27, v0

    invoke-direct/range {v13 .. v27}, Lorg/telegram/messenger/voip/Instance$Config;-><init>(DDIZZZZZZLjava/lang/String;Ljava/lang/String;I)V

    .line 2357
    new-instance v0, Ljava/io/File;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v6, "voip_persistent_state.json"

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    const-string v0, "dbg_force_tcp_in_calls"

    .line 2360
    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x3

    goto :goto_a

    :cond_e
    const/4 v2, 0x2

    .line 2362
    :goto_a
    iget-object v6, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhoneCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v15, v6, [Lorg/telegram/messenger/voip/Instance$Endpoint;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v6, :cond_f

    .line 2364
    :try_start_6
    iget-object v9, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$PhoneCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$PhoneConnection;

    .line 2365
    new-instance v23, Lorg/telegram/messenger/voip/Instance$Endpoint;

    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phoneConnectionWebrtc;

    iget-wide v11, v9, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->id:J

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->ip:Ljava/lang/String;

    iget-object v7, v9, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->ipv6:Ljava/lang/String;

    iget v8, v9, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->port:I

    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->peer_tag:[B

    iget-boolean v3, v9, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->turn:Z

    move/from16 v27, v6

    iget-boolean v6, v9, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->stun:Z

    move-object/from16 v30, v5

    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->username:Ljava/lang/String;

    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->password:Ljava/lang/String;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->tcp:Z

    move/from16 v22, v9

    move-object/from16 v9, v23

    move/from16 v31, v14

    move-object v14, v7

    move-object v7, v15

    move v15, v8

    move/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v3

    move/from16 v19, v6

    move-object/from16 v20, v5

    move-object/from16 v21, v1

    invoke-direct/range {v9 .. v22}, Lorg/telegram/messenger/voip/Instance$Endpoint;-><init>(ZJLjava/lang/String;Ljava/lang/String;II[BZZLjava/lang/String;Ljava/lang/String;Z)V

    aput-object v23, v7, v31

    add-int/lit8 v14, v31, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x2

    move-object/from16 v1, p0

    move-object v15, v7

    move/from16 v6, v27

    move-object/from16 v5, v30

    const/4 v7, 0x1

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_12

    :cond_f
    move-object/from16 v30, v5

    move-object v7, v15

    if-eqz v0, :cond_10

    .line 2368
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda21;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v1, p0

    :try_start_7
    invoke-direct {v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_c

    :cond_10
    move-object/from16 v1, p0

    :goto_c
    const-string v0, "proxy_enabled"

    move-object/from16 v2, v30

    const/4 v3, 0x0

    .line 2373
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "proxy_enabled_calls"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "proxy_ip"

    const/4 v3, 0x0

    .line 2374
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "proxy_secret"

    .line 2375
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2377
    new-instance v3, Lorg/telegram/messenger/voip/Instance$Proxy;

    const-string v4, "proxy_port"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "proxy_user"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "proxy_pass"

    invoke-interface {v2, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v4, v5, v2}, Lorg/telegram/messenger/voip/Instance$Proxy;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v31, v3

    goto :goto_d

    :cond_11
    const/4 v6, 0x0

    move-object/from16 v31, v6

    .line 2382
    :goto_d
    new-instance v0, Lorg/telegram/messenger/voip/Instance$EncryptionKey;

    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    iget-boolean v3, v1, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/voip/Instance$EncryptionKey;-><init>([BZ)V

    const-string v2, "2.7.7"

    .line 2384
    iget-object v3, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->protocol:Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_12

    const/4 v3, 0x1

    goto :goto_e

    :cond_12
    const/4 v3, 0x0

    .line 2385
    :goto_e
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    const/4 v4, 0x0

    aget-wide v5, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-eqz v10, :cond_13

    if-nez v3, :cond_13

    .line 2386
    aget-wide v5, v2, v4

    invoke-static {v5, v6}, Lorg/telegram/messenger/voip/NativeInstance;->destroyVideoCapturer(J)V

    .line 2387
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aput-wide v8, v2, v4

    .line 2388
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v4, v2, v4

    .line 2390
    :cond_13
    iget-boolean v2, v1, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-nez v2, :cond_17

    .line 2391
    iget-boolean v2, v1, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    if-eqz v2, :cond_16

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_14

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Landroid/app/Service;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_16

    .line 2392
    :cond_14
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    iget-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-boolean v6, v1, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    if-eqz v6, :cond_15

    const/4 v6, 0x1

    goto :goto_f

    :cond_15
    const/4 v6, 0x0

    :goto_f
    invoke-static {v4, v6}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v8

    aput-wide v8, v2, v5

    .line 2393
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    const/4 v4, 0x2

    aput v4, v2, v5

    goto :goto_10

    .line 2395
    :cond_16
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    const/4 v4, 0x0

    aput v4, v2, v4

    .line 2399
    :cond_17
    :goto_10
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    iget-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->protocol:Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v27, v4

    check-cast v27, Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getNetworkType()I

    move-result v32

    iget-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v34, v4, v5

    iget-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v35, v4, v5

    new-instance v4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda70;

    invoke-direct {v4, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda70;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    move-object/from16 v30, v7

    move-object/from16 v33, v0

    move-object/from16 v37, v4

    invoke-static/range {v27 .. v37}, Lorg/telegram/messenger/voip/Instance;->makeInstance(Ljava/lang/String;Lorg/telegram/messenger/voip/Instance$Config;Ljava/lang/String;[Lorg/telegram/messenger/voip/Instance$Endpoint;Lorg/telegram/messenger/voip/Instance$Proxy;ILorg/telegram/messenger/voip/Instance$EncryptionKey;Lorg/webrtc/VideoSink;JLorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;)Lorg/telegram/messenger/voip/NativeInstance;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v2, v4

    .line 2406
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v4

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda68;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda68;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setOnStateUpdatedListener(Lorg/telegram/messenger/voip/Instance$OnStateUpdatedListener;)V

    .line 2407
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v4

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda66;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setOnSignalBarsUpdatedListener(Lorg/telegram/messenger/voip/Instance$OnSignalBarsUpdatedListener;)V

    .line 2408
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v4

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda67;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda67;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setOnSignalDataListener(Lorg/telegram/messenger/voip/Instance$OnSignalingDataListener;)V

    .line 2409
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v4

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda65;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda65;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setOnRemoteMediaStateUpdatedListener(Lorg/telegram/messenger/voip/Instance$OnRemoteMediaStateUpdatedListener;)V

    .line 2419
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v4

    iget-boolean v2, v1, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setMuteMicrophone(Z)V

    .line 2421
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    if-eq v3, v0, :cond_18

    .line 2422
    iput-boolean v3, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    const/4 v3, 0x0

    .line 2423
    :goto_11
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_18

    .line 2424
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 2425
    iget-boolean v2, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    invoke-interface {v0, v2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onVideoAvailableChange(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 2428
    :cond_18
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, v2

    .line 2430
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$6;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/voip/VoIPService$6;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_13

    :catch_4
    move-exception v0

    .line 2440
    :goto_12
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_19

    const-string v2, "error starting call"

    .line 2441
    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2443
    :cond_19
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    :goto_13
    return-void
.end method

.method public static isAnyKindOfCallActive()Z
    .locals 3

    .line 4344
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4345
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isDeviceCompatibleWithConnectionServiceAPI()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isFinished()Z
    .locals 2

    .line 4351
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

.method private isRinging()Z
    .locals 2

    .line 1065
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$acceptIncomingCall$67()V
    .locals 3

    .line 3133
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$acceptIncomingCall$68(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    if-nez p1, :cond_1

    .line 3191
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 3192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accept call ok! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 3194
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;->phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 3195
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;

    if-eqz p2, :cond_3

    .line 3196
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->onCallUpdated(Lorg/telegram/tgnet/TLRPC$PhoneCall;)V

    goto :goto_0

    .line 3199
    :cond_1
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_2

    .line 3200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error on phone.acceptCall: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3202
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$acceptIncomingCall$69(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3189
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda52;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$acceptIncomingCall$70(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    if-nez p3, :cond_7

    .line 3140
    move-object p3, p2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    .line 3141
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;

    if-eqz p2, :cond_2

    .line 3142
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    iget v0, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result p2

    if-nez p2, :cond_1

    .line 3143
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    const-string p1, "stopping VoIP service, bad prime"

    .line 3144
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3146
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 3150
    :cond_1
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setSecretPBytes([B)V

    .line 3151
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setSecretG(I)V

    .line 3152
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setLastSecretVersion(I)V

    .line 3153
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getLastSecretVersion()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->saveSecretParams(II[B)V

    :cond_2
    const/16 p2, 0x100

    new-array v0, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 3157
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    int-to-byte v3, v3

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3159
    :cond_3
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez p3, :cond_5

    .line 3160
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    const-string p1, "call is null"

    .line 3161
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3163
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 3166
    :cond_5
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    .line 3167
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result p3

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    .line 3168
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 3169
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p3, p1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 3170
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_hash:[B

    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a_hash:[B

    .line 3172
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 3173
    array-length p3, p1

    if-le p3, p2, :cond_6

    new-array p3, p2, [B

    .line 3175
    invoke-static {p1, v3, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p3

    .line 3179
    :cond_6
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;-><init>()V

    .line 3180
    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->g_b:[B

    .line 3181
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 3182
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 3183
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 3184
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;-><init>()V

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    .line 3185
    iput-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->udp_reflector:Z

    iput-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->udp_p2p:Z

    const/16 p3, 0x41

    .line 3186
    iput p3, p1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->min_layer:I

    .line 3187
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->getConnectionMaxLayer()I

    move-result p3

    iput p3, p1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->max_layer:I

    .line 3188
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    sget-object p3, Lorg/telegram/messenger/voip/Instance;->AVAILABLE_VERSIONS:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3189
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda82;

    invoke-direct {p3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda82;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const/4 v0, 0x2

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_1

    .line 3206
    :cond_7
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$acknowledgeCall$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V
    .locals 3

    .line 1038
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-nez v0, :cond_0

    return-void

    .line 1041
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receivedCall response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_3

    .line 1045
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 1046
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "error on receivedCall: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1048
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 1050
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz p1, :cond_4

    .line 1051
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/telegram/messenger/ContactsController;->createOrUpdateConnectionServiceContact(JLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "telecom"

    .line 1052
    invoke-virtual {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    .line 1053
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "call_type"

    .line 1054
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1055
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->addAccountToTelecomManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 1058
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startRinging()V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$acknowledgeCall$12(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1037
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$callEnded$90()V
    .locals 1

    const/16 v0, 0xb

    .line 4212
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    return-void
.end method

.method private synthetic lambda$callEnded$91()V
    .locals 2

    .line 4215
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 4216
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 4217
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$callEnded$92()V
    .locals 7

    .line 4228
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spEndId:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private synthetic lambda$callEnded$93()V
    .locals 7

    .line 4230
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatEndId:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private static synthetic lambda$callFailed$81(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4075
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_1

    .line 4076
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error on phone.discardCall: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 4079
    :cond_0
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_1

    .line 4080
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "phone.discardCall "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$callFailed$82()V
    .locals 1

    const/4 v0, 0x4

    .line 4091
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    return-void
.end method

.method private synthetic lambda$callFailed$83()V
    .locals 7

    .line 4094
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spFailedID:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private static synthetic lambda$configureDeviceForCall$77()V
    .locals 2

    .line 3606
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3607
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$configureDeviceForCall$78(Landroid/media/AudioManager;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3618
    invoke-virtual {p1, p0, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 3619
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3620
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    if-eqz v2, :cond_3

    if-eq v2, v1, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 3622
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez v2, :cond_1

    .line 3623
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 3625
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3627
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3630
    :cond_1
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3631
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 3639
    :cond_2
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3640
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 3635
    :cond_3
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3636
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 3643
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3644
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_0

    .line 3646
    :cond_5
    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 3647
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    if-eqz p1, :cond_6

    .line 3648
    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    goto :goto_0

    .line 3650
    :cond_6
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 3653
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateOutputGainControlState()V

    .line 3654
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    return-void
.end method

.method private synthetic lambda$configureDeviceForCall$79(Landroid/media/AudioManager;)V
    .locals 1

    .line 3602
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3603
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 3604
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3605
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda62;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda62;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 3613
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3615
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3617
    :goto_0
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/AudioManager;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createGroupInstance$36(IILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2050
    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCall(ILjava/lang/String;Z)V

    goto :goto_0

    .line 2052
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->startScreenCapture(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$createGroupInstance$37(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createGroupInstance$38(I[I[F[Z)V
    .locals 11

    .line 2055
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 2058
    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lorg/telegram/messenger/ChatObject$Call;->processVoiceLevelsUpdate([I[F[Z)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2061
    :goto_0
    array-length v3, p2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    .line 2062
    aget v3, p2, v1

    if-nez v3, :cond_2

    .line 2063
    iget-wide v5, p0, Lorg/telegram/messenger/voip/VoIPService;->lastTypingTimeSend:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    sub-long/2addr v7, v9

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    aget v3, p3, v1

    const v5, 0x3dcccccd    # 0.1f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    aget-boolean v3, p4, v1

    if-eqz v3, :cond_1

    .line 2064
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/messenger/voip/VoIPService;->lastTypingTimeSend:J

    .line 2065
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;-><init>()V

    .line 2066
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_speakingInGroupCallAction;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_speakingInGroupCallAction;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 2067
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2068
    iget v5, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda97;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda97;

    invoke-virtual {v5, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2072
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    new-array v4, v4, [Ljava/lang/Object;

    aget v6, p3, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-virtual {v3, v5, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 2076
    :cond_2
    aget v2, p3, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 2079
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2080
    sget-object p1, Lorg/telegram/messenger/voip/VoIPService;->audioLevelsCallback:Lorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;

    if-eqz p1, :cond_4

    .line 2081
    invoke-interface {p1, p2, p3, p4}, Lorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;->run([I[F[Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$createGroupInstance$39(J[ILjava/util/ArrayList;)V
    .locals 0

    .line 2089
    sget-object p4, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez p4, :cond_0

    goto :goto_0

    .line 2092
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->broadcastUnknownParticipants(J[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createGroupInstance$40(IJ[I)V
    .locals 1

    .line 2085
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2088
    :cond_0
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda64;

    invoke-direct {p1, p0, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/messenger/voip/VoIPService;J[I)V

    invoke-virtual {v0, p4, p1}, Lorg/telegram/messenger/ChatObject$Call;->processUnknownVideoParticipants([ILorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createGroupInstance$41(Ljava/lang/String;)V
    .locals 1

    .line 2114
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$createGroupInstance$42(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2123
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    return-void
.end method

.method private synthetic lambda$createGroupInstance$43(Ljava/lang/String;IJIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 13

    move-object v0, p0

    move v1, p2

    move-object/from16 v2, p8

    .line 2114
    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda45;

    move-object v4, p1

    invoke-direct {v3, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2115
    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v3, v1

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-eqz p7, :cond_1

    .line 2119
    move-object/from16 v2, p7

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    .line 2120
    aget-object v4, v3, v1

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$upload_File;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v7, v1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v8

    move-wide/from16 v5, p3

    move-wide/from16 v9, p9

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/messenger/voip/NativeInstance;->onStreamPartAvailable(JLjava/nio/ByteBuffer;IJII)V

    goto :goto_2

    .line 2122
    :cond_1
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v4, "GROUPCALL_JOIN_MISSING"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2123
    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2126
    :cond_2
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v4, "TIME_TOO_BIG"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "FLOOD_WAIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    const/4 v7, -0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 2131
    :goto_1
    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v3, v2, v1

    const/4 v6, 0x0

    move-wide/from16 v4, p3

    move-wide/from16 v8, p9

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v3 .. v11}, Lorg/telegram/messenger/voip/NativeInstance;->onStreamPartAvailable(JLjava/nio/ByteBuffer;IJII)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$createGroupInstance$44(Ljava/lang/String;I)V
    .locals 1

    .line 2135
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$createGroupInstance$45(IJJII)V
    .locals 13

    move-object v8, p0

    move-wide v4, p2

    move/from16 v6, p6

    move/from16 v7, p7

    if-eqz p1, :cond_0

    return-void

    .line 2098
    :cond_0
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;-><init>()V

    const/high16 v0, 0x20000

    .line 2099
    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I

    .line 2100
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;-><init>()V

    .line 2101
    iget-object v1, v8, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 2102
    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->time_ms:J

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x1

    cmp-long v10, p4, v1

    if-nez v10, :cond_1

    .line 2104
    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->scale:I

    :cond_1
    if-eqz v6, :cond_2

    .line 2107
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    or-int/2addr v1, v3

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    .line 2108
    iput v6, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->video_channel:I

    .line 2109
    iput v7, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->video_quality:I

    .line 2111
    :cond_2
    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 2112
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v6, :cond_3

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 2113
    iget v0, v8, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v12, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda99;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v10

    move v3, p1

    move-wide v4, p2

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda99;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;IJII)V

    const/4 v0, 0x2

    const/4 v1, 0x2

    iget-object v2, v8, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->stream_dc_id:I

    move-object p1, v11

    move-object p2, v9

    move-object/from16 p3, v12

    move/from16 p4, v0

    move/from16 p5, v1

    move/from16 p6, v2

    invoke-virtual/range {p1 .. p6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegateTimestamp;III)I

    move-result v0

    .line 2135
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, v10, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createGroupInstance$46(IJI)V
    .locals 1

    if-nez p1, :cond_0

    .line 2141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ""

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2142
    :goto_0
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 2144
    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p4, 0x1

    invoke-virtual {p3, p2, p4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2145
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private synthetic lambda$createGroupInstance$47(IJJII)V
    .locals 6

    if-eqz p1, :cond_0

    return-void

    .line 2140
    :cond_0
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda42;

    move-object v0, p1

    move-object v1, p0

    move v2, p6

    move-wide v3, p2

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/messenger/voip/VoIPService;IJI)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createGroupInstance$48(IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 1

    const-wide/16 p6, 0x0

    if-nez p5, :cond_1

    .line 2161
    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCallStreamChannels;

    .line 2162
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    .line 2163
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    const/4 p6, 0x0

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;

    iget-wide p6, p5, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;->last_timestamp_ms:J

    .line 2165
    :cond_0
    iget-object p5, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-boolean v0, p5, Lorg/telegram/messenger/ChatObject$Call;->loadedRtmpStreamParticipant:Z

    if-nez v0, :cond_1

    .line 2166
    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Lorg/telegram/messenger/ChatObject$Call;->createRtmpStreamParticipant(Ljava/util/List;)V

    .line 2167
    iget-object p4, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/4 p5, 0x1

    iput-boolean p5, p4, Lorg/telegram/messenger/ChatObject$Call;->loadedRtmpStreamParticipant:Z

    .line 2170
    :cond_1
    iget-object p4, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p5, p4, p1

    if-eqz p5, :cond_2

    .line 2171
    aget-object p1, p4, p1

    invoke-virtual {p1, p2, p3, p6, p7}, Lorg/telegram/messenger/voip/NativeInstance;->onRequestTimeComplete(JJ)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$createGroupInstance$49(IJ)V
    .locals 7

    .line 2149
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v0, :cond_3

    .line 2150
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupCallStreamChannels;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupCallStreamChannels;-><init>()V

    .line 2151
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupCallStreamChannels;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 2152
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2158
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda98;

    invoke-direct {v3, p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda98;-><init>(Lorg/telegram/messenger/voip/VoIPService;IJ)V

    const/4 v4, 0x2

    const/4 v5, 0x2

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->stream_dc_id:I

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegateTimestamp;III)I

    goto :goto_1

    .line 2153
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    .line 2154
    aget-object p1, v0, p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->onRequestTimeComplete(JJ)V

    :cond_2
    return-void

    .line 2175
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v0, p1

    if-eqz v1, :cond_4

    .line 2176
    aget-object p1, v0, p1

    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->onRequestTimeComplete(JJ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$createGroupInstance$50(IIZ)V
    .locals 0

    .line 2180
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->updateConnectionState(IIZ)V

    return-void
.end method

.method private synthetic lambda$declineIncomingCall$71()V
    .locals 2

    .line 3222
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 3223
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$declineIncomingCall$72(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 3265
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 3266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error on phone.discardCall: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 3269
    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz p2, :cond_1

    .line 3270
    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 3271
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 3273
    :cond_1
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_2

    .line 3274
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "phone.discardCall "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$editCallMember$61(ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 2660
    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 2662
    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "GROUPCALL_VIDEO_TOO_MUCH"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2663
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1}, Lorg/telegram/messenger/ChatObject$Call;->reloadGroupCall()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 2667
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$endConnectionServiceCall$94()V
    .locals 4

    .line 4246
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_6

    .line 4247
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->callDiscardReason:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 4261
    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_2

    .line 4255
    :cond_0
    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_2

    .line 4258
    :cond_1
    new-instance v1, Landroid/telecom/DisconnectCause;

    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    :goto_0
    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_2

    .line 4252
    :cond_3
    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_2

    .line 4249
    :cond_4
    new-instance v1, Landroid/telecom/DisconnectCause;

    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x6

    :goto_1
    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 4264
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->destroy()V

    const/4 v0, 0x0

    .line 4265
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    :cond_6
    return-void
.end method

.method private synthetic lambda$getConnectionAndStartCall$73()V
    .locals 1

    const/4 v0, 0x0

    .line 3300
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    .line 3301
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startOutgoingCall()V

    return-void
.end method

.method private synthetic lambda$hangUp$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 878
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz p2, :cond_0

    .line 879
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 880
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hangUp$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 888
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz p2, :cond_0

    .line 889
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 890
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initiateActualEncryptedCall$54()V
    .locals 2

    const-string v0, "This call uses TCP which will degrade its quality."

    const/4 v1, 0x0

    .line 2368
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$initiateActualEncryptedCall$55([I[F[Z)V
    .locals 4

    .line 2400
    sget-object p1, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2403
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, p3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2404
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    new-array v1, v0, [Ljava/lang/Object;

    aget p2, p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p1, p3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$initiateActualEncryptedCall$56(II)V
    .locals 2

    .line 2410
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteAudioState:I

    .line 2411
    iput p2, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    .line 2412
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->checkIsNear()V

    const/4 v0, 0x0

    .line 2414
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2415
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 2416
    invoke-interface {v1, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onMediaStateUpdated(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$initiateActualEncryptedCall$57(II)V
    .locals 1

    .line 2409
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/messenger/voip/VoIPService;II)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadResources$76()V
    .locals 3

    .line 3535
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    .line 3536
    sget v2, Lorg/telegram/messenger/R$raw;->voip_connecting:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    .line 3537
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voip_ringback:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spRingbackID:I

    .line 3538
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voip_failed:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spFailedID:I

    .line 3539
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voip_end:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spEndId:I

    .line 3540
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voip_busy:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spBusyId:I

    .line 3541
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voicechat_leave:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatEndId:I

    .line 3542
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voicechat_join:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatStartId:I

    .line 3543
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voicechat_connecting:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatConnecting:I

    .line 3544
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voip_onallowtalk:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spAllowTalkId:I

    .line 3545
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voip_recordstart:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spStartRecordId:I

    return-void
.end method

.method private synthetic lambda$onCallUpdated$15()V
    .locals 7

    .line 1470
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spBusyId:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private synthetic lambda$onCallUpdated$16()V
    .locals 9

    .line 1546
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 1547
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 1549
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->spRingbackID:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    return-void
.end method

.method private synthetic lambda$onCallUpdated$17()V
    .locals 2

    const/4 v0, 0x0

    .line 1556
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x3

    .line 1557
    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onConnectionStateChanged$84()V
    .locals 2

    .line 4132
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 4133
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 4134
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$onConnectionStateChanged$85()V
    .locals 9

    .line 4163
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 4164
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 4166
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatConnecting:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    :goto_0
    move v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    return-void
.end method

.method private synthetic lambda$onConnectionStateChanged$86(I)V
    .locals 6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 4117
    iget-wide v1, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 4118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 4123
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    :cond_1
    if-ne p1, v0, :cond_5

    .line 4127
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 4128
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4129
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    .line 4131
    :cond_2
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 4137
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->wasEstablished:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 4138
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->wasEstablished:Z

    .line 4139
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-nez v1, :cond_3

    const-string v1, "vibrator"

    .line 4140
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 4141
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x64

    .line 4142
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 4145
    :cond_3
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$8;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$8;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v2, 0x1388

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4154
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 4155
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result v3

    invoke-virtual {v1, v3, v2, v0}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto :goto_0

    .line 4157
    :cond_4
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result v3

    invoke-virtual {v1, v3, v2, v0}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    :cond_5
    :goto_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 4162
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 4169
    :cond_6
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    return-void
.end method

.method private static synthetic lambda$onDestroy$64()V
    .locals 3

    .line 3012
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onDestroy$65(Landroid/media/AudioManager;)V
    .locals 2

    .line 3059
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 3060
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 3061
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3063
    sput-object v1, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    .line 3064
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 3066
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3068
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "Error setting audio more to normal"

    .line 3069
    invoke-static {v0, p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 3064
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onDestroy$66()V
    .locals 1

    .line 3084
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSignalBarCountChanged$89(I)V
    .locals 2

    .line 4184
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->signalBarCount:I

    const/4 v0, 0x0

    .line 4185
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4186
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 4187
    invoke-interface {v1, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onSignalBarsCountChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onSignalingData$60(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onStartCommand$1()V
    .locals 1

    const/4 v0, 0x0

    .line 781
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    .line 782
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startOutgoingCall()V

    return-void
.end method

.method private synthetic lambda$onStartCommand$2()V
    .locals 3

    .line 819
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onTgVoipStop$75(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3432
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 3433
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sent debug logs, response = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$playAllowTalkSound$88()V
    .locals 7

    .line 4178
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spAllowTalkId:I

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private synthetic lambda$playConnectedSound$58()V
    .locals 7

    .line 2448
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatStartId:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private synthetic lambda$playStartRecordSound$87()V
    .locals 7

    .line 4174
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spStartRecordId:I

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private synthetic lambda$processAcceptedCall$18(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1635
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    goto :goto_0

    .line 1637
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;->phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 1638
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->initiateActualEncryptedCall()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$processAcceptedCall$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1633
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda53;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setMicMute$0()V
    .locals 2

    .line 477
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 480
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    .line 481
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->getRoundAvatarBitmap(Lorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$setupCaptureDevice$13()V
    .locals 1

    const/4 v0, 0x0

    .line 1157
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->micSwitching:Z

    return-void
.end method

.method private synthetic lambda$startConnectingSound$59()V
    .locals 9

    .line 2454
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 2455
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 2457
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-nez v0, :cond_1

    .line 2459
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$7;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$7;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$startGroupCall$20(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V
    .locals 3

    .line 1715
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-nez v0, :cond_0

    return-void

    .line 1718
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    .line 1719
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    .line 1720
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-wide v1, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putGroupCall(JLorg/telegram/messenger/ChatObject$Call;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1721
    invoke-direct {p0, v0, p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCall(ILjava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$startGroupCall$21(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    .line 1729
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1730
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void
.end method

.method private synthetic lambda$startGroupCall$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1709
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1710
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1711
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Update;

    .line 1712
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    if-eqz v2, :cond_0

    .line 1713
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    .line 1714
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda56;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1726
    :cond_1
    :goto_1
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    goto :goto_2

    .line 1728
    :cond_2
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda50;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method private static synthetic lambda$startGroupCall$23()V
    .locals 3

    .line 1747
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startGroupCall$24(I)V
    .locals 2

    .line 1775
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method private synthetic lambda$startGroupCall$25(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)V
    .locals 2

    .line 1785
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method private synthetic lambda$startGroupCall$26(Z)V
    .locals 1

    .line 1800
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    return-void
.end method

.method private synthetic lambda$startGroupCall$27(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1804
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "JOIN_AS_PEER_INVALID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 1805
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1807
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v0, :cond_0

    .line 1808
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v2, -0x8001

    and-int/2addr v0, v2

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 1810
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v2, -0x4000001

    and-int/2addr v0, v2

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    :goto_0
    const/4 v0, 0x0

    .line 1812
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1813
    invoke-static {}, Lorg/telegram/ui/Components/JoinCallAlert;->resetCache()V

    .line 1815
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    goto :goto_1

    .line 1816
    :cond_2
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "GROUPCALL_SSRC_DUPLICATE_MUCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1817
    invoke-direct {p0, v2, v2}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    goto :goto_1

    .line 1819
    :cond_3
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "GROUPCALL_INVALID"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 1820
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v4, v5, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    .line 1822
    :cond_4
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v4, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1823
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$startGroupCall$28(IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    if-eqz p3, :cond_4

    .line 1775
    new-instance p4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda38;

    invoke-direct {p4, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1776
    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1777
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v0

    .line 1778
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p4, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    .line 1779
    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Update;

    .line 1780
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    if-eqz v4, :cond_1

    .line 1781
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    .line 1782
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    .line 1783
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1784
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    cmp-long v9, v7, v0

    if-nez v9, :cond_0

    .line 1785
    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda55;

    invoke-direct {v3, p0, v6}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1786
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_2

    .line 1787
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "join source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1792
    :cond_1
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    if-eqz v4, :cond_2

    .line 1793
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    .line 1794
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->presentation:Z

    if-nez v4, :cond_2

    .line 1795
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1799
    :cond_3
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1800
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda58;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/messenger/voip/VoIPService;Z)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1801
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCheckShortpoll()V

    goto :goto_3

    .line 1803
    :cond_4
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda49;

    invoke-direct {p1, p0, p4}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$startGroupCheckShortpoll$33(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 1927
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 1930
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 1931
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    .line 1934
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$Vector;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1935
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 1936
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v1, p3, v0

    if-eqz v1, :cond_1

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;->sources:Ljava/util/ArrayList;

    aget p3, p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1937
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 1941
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v3, v1, v2

    if-eqz v3, :cond_2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;->sources:Ljava/util/ArrayList;

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1942
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_5

    .line 1946
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, 0x190

    if-ne p1, p3, :cond_5

    .line 1948
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget p3, p1, v2

    if-eqz p3, :cond_4

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;->sources:Ljava/util/ArrayList;

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    const/4 p3, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_6

    .line 1953
    invoke-direct {p0, v0, v0}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    :cond_6
    if-eqz p1, :cond_7

    .line 1956
    invoke-direct {p0, v2, v0}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    .line 1958
    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget p2, p1, v2

    if-nez p2, :cond_8

    aget p1, p1, v0

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz p1, :cond_9

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz p1, :cond_9

    .line 1959
    :cond_8
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCheckShortpoll()V

    :cond_9
    :goto_3
    return-void
.end method

.method private synthetic lambda$startGroupCheckShortpoll$34(Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1926
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda48;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startGroupCheckShortpoll$35()V
    .locals 4

    .line 1916
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    if-nez v3, :cond_0

    const/4 v3, 0x1

    aget v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1919
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;-><init>()V

    .line 1920
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 1921
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 1922
    aget v3, v1, v2

    if-eqz v3, :cond_1

    .line 1923
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;->sources:Ljava/util/ArrayList;

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1926
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda91;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda91;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$startOutgoingCall$10(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v0, 0x0

    .line 914
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    .line 915
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    if-eqz v1, :cond_0

    .line 916
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    return-void

    :cond_0
    if-nez p3, :cond_5

    .line 920
    move-object p3, p2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    .line 921
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;

    if-eqz p2, :cond_2

    .line 922
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    iget v1, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-static {p2, v1}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result p2

    if-nez p2, :cond_1

    .line 923
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 926
    :cond_1
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setSecretPBytes([B)V

    .line 927
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setSecretG(I)V

    .line 928
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setLastSecretVersion(I)V

    .line 929
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getLastSecretVersion()I

    move-result p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v2

    invoke-virtual {p1, p2, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->saveSecretParams(II[B)V

    :cond_2
    const/16 p2, 0x100

    new-array v1, p2, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 933
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    int-to-byte v3, v3

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 936
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result p3

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    .line 937
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object p1

    invoke-direct {v4, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p3, v2, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 938
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 939
    array-length p3, p1

    if-le p3, p2, :cond_4

    new-array p3, p2, [B

    .line 941
    invoke-static {p1, v3, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p3

    .line 945
    :cond_4
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;-><init>()V

    .line 946
    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p3, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 947
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;-><init>()V

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    .line 948
    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    iput-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->video:Z

    .line 949
    iput-boolean v3, p3, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->udp_p2p:Z

    .line 950
    iput-boolean v3, p3, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->udp_reflector:Z

    const/16 v2, 0x41

    .line 951
    iput v2, p3, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->min_layer:I

    .line 952
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->getConnectionMaxLayer()I

    move-result v2

    iput v2, p3, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->max_layer:I

    .line 953
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/messenger/voip/Instance;->AVAILABLE_VERSIONS:Ljava/util/List;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 954
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    .line 955
    array-length p3, p1

    int-to-long v2, p3

    invoke-static {p1, v0, v2, v3}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->g_a_hash:[B

    .line 956
    sget-object p1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result p1

    iput p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->random_id:I

    .line 958
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda93;

    invoke-direct {p3, p0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda93;-><init>(Lorg/telegram/messenger/voip/VoIPService;[B)V

    const/4 v0, 0x2

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_1

    .line 1008
    :cond_5
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_6

    .line 1009
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error on getDhConfig "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1011
    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$startOutgoingCall$5()V
    .locals 3

    .line 905
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startOutgoingCall$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 981
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 983
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error on phone.discardCall: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 985
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "phone.discardCall "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 988
    :cond_1
    :goto_0
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startOutgoingCall$7()V
    .locals 5

    const/4 v0, 0x0

    .line 974
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 975
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;-><init>()V

    .line 976
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 977
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 978
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 979
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 980
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda79;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda79;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$startOutgoingCall$8(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[B)V
    .locals 0

    if-nez p1, :cond_3

    .line 960
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;->phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 961
    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    const/16 p1, 0xd

    .line 962
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 963
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    if-eqz p1, :cond_0

    .line 964
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    return-void

    .line 967
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz p1, :cond_2

    .line 968
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 969
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/voip/VoIPService;->onCallUpdated(Lorg/telegram/tgnet/TLRPC$PhoneCall;)V

    goto :goto_0

    .line 971
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 973
    :cond_2
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 991
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 993
    :cond_3
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, 0x190

    if-ne p2, p3, :cond_4

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PARTICIPANT_VERSION_OUTDATED"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "ERROR_PEER_OUTDATED"

    .line 994
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 995
    :cond_4
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, 0x193

    if-ne p2, p3, :cond_5

    const-string p1, "ERROR_PRIVACY"

    .line 996
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 p3, 0x196

    if-ne p2, p3, :cond_6

    const-string p1, "ERROR_LOCALIZED"

    .line 998
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 1000
    :cond_6
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_7

    .line 1001
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error on phone.requestCall: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1003
    :cond_7
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$startOutgoingCall$9([BLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 958
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda54;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[B)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startRingtoneAndVibration$63(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 2925
    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2927
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$startScreenCapture$29(I)V
    .locals 2

    .line 1842
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method private synthetic lambda$startScreenCapture$30(Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 13

    .line 1845
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 1846
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v2

    .line 1847
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_5

    .line 1848
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Update;

    .line 1849
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    if-eqz v7, :cond_0

    .line 1850
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    .line 1851
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->presentation:Z

    if-eqz v7, :cond_4

    .line 1852
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v7, v7, v1

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/voip/NativeInstance;->setJoinResponsePayload(Ljava/lang/String;)V

    goto :goto_3

    .line 1854
    :cond_0
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    if-eqz v7, :cond_4

    .line 1855
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    .line 1856
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    .line 1857
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1858
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v10

    cmp-long v12, v10, v2

    if-nez v12, :cond_3

    .line 1859
    iget-object v6, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz v6, :cond_4

    .line 1860
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    .line 1861
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->audio_source:I

    aput v6, v7, v1

    goto :goto_3

    .line 1863
    :cond_1
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    .line 1864
    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    .line 1865
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1866
    iget-object v10, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v10, v1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private synthetic lambda$startScreenCapture$31(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    .line 1882
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "GROUPCALL_VIDEO_TOO_MUCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1883
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1}, Lorg/telegram/messenger/ChatObject$Call;->reloadGroupCall()V

    goto :goto_1

    .line 1884
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "JOIN_AS_PEER_INVALID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1885
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1887
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v0, :cond_1

    .line 1888
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 1890
    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    :goto_0
    const/4 v0, 0x0

    .line 1892
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1893
    invoke-static {}, Lorg/telegram/ui/Components/JoinCallAlert;->resetCache()V

    :cond_2
    const/4 p1, 0x2

    .line 1895
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    goto :goto_1

    .line 1896
    :cond_3
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "GROUPCALL_SSRC_DUPLICATE_MUCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1897
    invoke-direct {p0, v2, v1}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    goto :goto_1

    .line 1899
    :cond_4
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "GROUPCALL_INVALID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1900
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v3, v4, v1, v2}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$startScreenCapture$32(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1842
    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda40;

    invoke-direct {p3, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1843
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1844
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda57;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$Updates;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1878
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1879
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCheckShortpoll()V

    goto :goto_0

    .line 1881
    :cond_0
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda51;

    invoke-direct {p1, p0, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$stopScreenCapture$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1201
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1202
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$toggleSpeakerphoneOrShowRouteSheet$62(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2687
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2690
    :cond_0
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    return-void
.end method

.method private static synthetic lambda$updateBluetoothHeadsetState$80(Landroid/media/AudioManager;)V
    .locals 0

    .line 3772
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private synthetic lambda$updateConnectionState$51(I)V
    .locals 2

    .line 2198
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2201
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    const/4 v1, 0x1

    .line 2202
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->updateConnectionState(IIZ)V

    const/4 p1, 0x0

    .line 2203
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$updateConnectionState$52()V
    .locals 9

    .line 2210
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 2211
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 2213
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatConnecting:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    return-void
.end method

.method private synthetic lambda$updateConnectionState$53()V
    .locals 2

    .line 2228
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 2229
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 2230
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateServerConfig$74(Landroid/content/SharedPreferences;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-nez p2, :cond_0

    .line 3354
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 3355
    invoke-static {p1}, Lorg/telegram/messenger/voip/Instance;->setGlobalServerConfig(Ljava/lang/String;)V

    .line 3356
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "voip_server_config"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private loadResources()V
    .locals 2

    .line 3531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 3532
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioTrackUsageAttribute(I)V

    .line 3534
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onTgVoipPreStop()V
    .locals 0

    return-void
.end method

.method private onTgVoipStop(Lorg/telegram/messenger/voip/Instance$FinalState;)V
    .locals 5

    .line 3409
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    return-void

    .line 3412
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/voip/Instance$FinalState;->debugLog:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3414
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogFilePath(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/messenger/voip/Instance$FinalState;->debugLog:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3416
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3420
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needRateCall:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->forceRating:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lorg/telegram/messenger/voip/Instance$FinalState;->isRatingSuggested:Z

    if-eqz v0, :cond_3

    .line 3421
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startRatingActivity()V

    .line 3422
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->needRateCall:Z

    .line 3424
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/telegram/messenger/voip/Instance$FinalState;->debugLog:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3425
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;-><init>()V

    .line 3426
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;->debug:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 3427
    iget-object p1, p1, Lorg/telegram/messenger/voip/Instance$FinalState;->debugLog:Ljava/lang/String;

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 3428
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 3429
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 3430
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 3431
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    sget-object v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda96;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda96;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 3436
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    :cond_4
    return-void
.end method

.method private processAcceptedCall()V
    .locals 7

    const/16 v0, 0xc

    .line 1589
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1590
    new-instance v0, Ljava/math/BigInteger;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1591
    new-instance v1, Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_b:[B

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1593
    invoke-static {v1, v0}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1594
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "stopping VoIP service, bad Ga and Gb"

    .line 1595
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1597
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1601
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    invoke-direct {v3, v2, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1603
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1604
    array-length v1, v0

    const/4 v3, 0x0

    const/16 v4, 0x100

    if-le v1, v4, :cond_3

    new-array v1, v4, [B

    .line 1606
    array-length v5, v0

    sub-int/2addr v5, v4

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 1608
    :cond_3
    array-length v1, v0

    if-ge v1, v4, :cond_4

    new-array v1, v4, [B

    .line 1610
    array-length v5, v0

    rsub-int v5, v5, 0x100

    array-length v6, v0

    invoke-static {v0, v3, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    .line 1611
    :goto_0
    array-length v6, v0

    rsub-int v6, v6, 0x100

    if-ge v5, v6, :cond_2

    .line 1612
    aput-byte v3, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1616
    :cond_4
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v1

    const/16 v4, 0x8

    new-array v5, v4, [B

    .line 1618
    array-length v6, v1

    sub-int/2addr v6, v4

    invoke-static {v1, v6, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1619
    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v3

    .line 1620
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    .line 1621
    iput-wide v3, p0, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    .line 1622
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;-><init>()V

    .line 1623
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->g_a:[B

    .line 1624
    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->key_fingerprint:J

    .line 1625
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 1626
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 1627
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 1628
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    .line 1629
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->getConnectionMaxLayer()I

    move-result v3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->max_layer:I

    .line 1630
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    const/16 v3, 0x41

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->min_layer:I

    .line 1631
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->udp_reflector:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->udp_p2p:Z

    .line 1632
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/messenger/voip/Instance;->AVAILABLE_VERSIONS:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1633
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda85;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda85;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private showIncomingNotification(Ljava/lang/String;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLObject;ZI)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 3928
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "voip"

    .line 3929
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3930
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "VoipInVideoCallBranding"

    const-string v7, "VoipInCallBranding"

    if-eqz p4, :cond_0

    .line 3931
    sget v8, Lorg/telegram/messenger/R$string;->VoipInVideoCallBranding:I

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    sget v8, Lorg/telegram/messenger/R$string;->VoipInCallBranding:I

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 3932
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    sget v8, Lorg/telegram/messenger/R$drawable;->notification:I

    .line 3933
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 3934
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v8, 0x0

    const/high16 v9, 0x2000000

    .line 3935
    invoke-static {v1, v8, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 3936
    sget v10, Lorg/telegram/messenger/R$drawable;->fork_notification:I

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 3937
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".call_sound_provider/start_ringing"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 3938
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v11, v12, :cond_7

    .line 3939
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v9, "calls_notification_channel"

    .line 3940
    invoke-interface {v12, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string v15, "notification"

    .line 3941
    invoke-virtual {v1, v15}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    .line 3942
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "incoming_calls2"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 3944
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 3946
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "incoming_calls3"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v8

    const/4 v2, 0x4

    move-object/from16 v16, v7

    if-eqz v8, :cond_5

    .line 3949
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v7

    if-lt v7, v2, :cond_3

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v7

    if-nez v7, :cond_3

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 3950
    :cond_3
    :goto_1
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_4

    const-string v7, "User messed up the notification channel; deleting it and creating a proper one"

    .line 3951
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3953
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    .line 3955
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v9, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_6

    .line 3961
    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 3962
    invoke-virtual {v7, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    const/4 v8, 0x2

    .line 3963
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 3964
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 3965
    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    .line 3966
    new-instance v8, Landroid/app/NotificationChannel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v12, Lorg/telegram/messenger/R$string;->IncomingCalls:I

    move-object/from16 v17, v6

    const-string v6, "IncomingCalls"

    invoke-static {v6, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v9, v6, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 3967
    invoke-virtual {v8, v10, v7}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v2, 0x0

    .line 3968
    invoke-virtual {v8, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 3969
    invoke-virtual {v8, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v2, 0x1

    .line 3970
    invoke-virtual {v8, v2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 3972
    :try_start_0
    invoke-virtual {v15, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3974
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3975
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_6
    move-object/from16 v17, v6

    .line 3979
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_4

    :cond_7
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    const/16 v2, 0x15

    if-lt v11, v2, :cond_8

    const/4 v2, 0x2

    .line 3981
    invoke-virtual {v5, v10, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 3983
    :cond_8
    :goto_4
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lorg/telegram/messenger/voip/VoIPActionsReceiver;

    invoke-direct {v2, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3984
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".DECLINE_CALL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3985
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v6

    const-string v8, "call_id"

    invoke-virtual {v2, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3986
    sget v6, Lorg/telegram/messenger/R$string;->VoipDeclineCall:I

    const-string v7, "VoipDeclineCall"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x18

    if-lt v11, v10, :cond_9

    .line 3988
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3989
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const v13, -0xbbcca

    invoke-direct {v9, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v12, v9, v14, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v9, v12

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    :goto_5
    const/high16 v12, 0x12000000

    .line 3991
    invoke-static {v1, v14, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3992
    sget v13, Lorg/telegram/messenger/R$drawable;->ic_call_end_white_24dp:I

    invoke-virtual {v5, v13, v9, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3993
    new-instance v9, Landroid/content/Intent;

    const-class v13, Lorg/telegram/messenger/voip/VoIPActionsReceiver;

    invoke-direct {v9, v1, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3994
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".ANSWER_CALL"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3995
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v13

    invoke-virtual {v9, v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3996
    sget v8, Lorg/telegram/messenger/R$string;->VoipAnswerCall:I

    const-string v13, "VoipAnswerCall"

    invoke-static {v13, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    if-lt v11, v10, :cond_a

    .line 3998
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3999
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    const v15, -0xff5600

    invoke-direct {v14, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v15

    const/4 v12, 0x0

    invoke-virtual {v10, v14, v12, v15, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v14, v10

    goto :goto_6

    :cond_a
    const/4 v12, 0x0

    :goto_6
    const/high16 v10, 0x12000000

    .line 4001
    invoke-static {v1, v12, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 4002
    sget v10, Lorg/telegram/messenger/R$drawable;->ic_call:I

    invoke-virtual {v5, v10, v14, v9}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v10, 0x2

    .line 4003
    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/16 v10, 0x11

    if-lt v11, v10, :cond_b

    .line 4005
    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    :cond_b
    const/16 v10, 0x15

    if-lt v11, v10, :cond_c

    const v10, -0xd35a20

    .line 4008
    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    new-array v10, v12, [J

    .line 4009
    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    const-string v10, "call"

    .line 4010
    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/high16 v10, 0x2000000

    .line 4011
    invoke-static {v1, v12, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v10, 0x1

    invoke-virtual {v5, v4, v10}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 4012
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_c

    .line 4013
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 4014
    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 4015
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tel:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 4019
    :cond_c
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    const/16 v10, 0x15

    if-lt v11, v10, :cond_14

    .line 4021
    new-instance v10, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v12

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_d

    sget v14, Lorg/telegram/messenger/R$layout;->call_notification_rtl:I

    goto :goto_7

    :cond_d
    sget v14, Lorg/telegram/messenger/R$layout;->call_notification:I

    :goto_7
    invoke-direct {v10, v12, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 4022
    sget v12, Lorg/telegram/messenger/R$id;->name:I

    invoke-virtual {v10, v12, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4024
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v12, 0x8

    if-eqz v0, :cond_11

    .line 4025
    sget v0, Lorg/telegram/messenger/R$id;->subtitle:I

    invoke-virtual {v10, v0, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4026
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v0

    const/4 v12, 0x1

    if-le v0, v12, :cond_f

    .line 4027
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 4028
    sget v14, Lorg/telegram/messenger/R$id;->title:I

    if-eqz p4, :cond_e

    sget v15, Lorg/telegram/messenger/R$string;->VoipInVideoCallBrandingWithName:I

    move-object/from16 p5, v4

    new-array v4, v12, [Ljava/lang/Object;

    iget-object v12, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v12, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    aput-object v0, v4, v12

    const-string v0, "VoipInVideoCallBrandingWithName"

    invoke-static {v0, v15, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_e
    move-object/from16 p5, v4

    const/4 v12, 0x0

    sget v4, Lorg/telegram/messenger/R$string;->VoipInCallBrandingWithName:I

    const/4 v15, 0x1

    new-array v12, v15, [Ljava/lang/Object;

    iget-object v15, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v15, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    aput-object v0, v12, v15

    const-string v0, "VoipInCallBrandingWithName"

    invoke-static {v0, v4, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v10, v14, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_b

    :cond_f
    move-object/from16 p5, v4

    .line 4030
    sget v0, Lorg/telegram/messenger/R$id;->title:I

    if-eqz p4, :cond_10

    sget v4, Lorg/telegram/messenger/R$string;->VoipInVideoCallBranding:I

    move-object/from16 v12, v17

    goto :goto_9

    :cond_10
    sget v4, Lorg/telegram/messenger/R$string;->VoipInCallBranding:I

    move-object/from16 v12, v16

    :goto_9
    invoke-static {v12, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_b

    :cond_11
    move-object/from16 p5, v4

    .line 4033
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_12

    .line 4034
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 4035
    sget v12, Lorg/telegram/messenger/R$id;->subtitle:I

    sget v14, Lorg/telegram/messenger/R$string;->VoipAnsweringAsAccount:I

    new-array v15, v4, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v15, v4

    const-string v0, "VoipAnsweringAsAccount"

    invoke-static {v0, v14, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_a

    .line 4037
    :cond_12
    sget v0, Lorg/telegram/messenger/R$id;->subtitle:I

    invoke-virtual {v10, v0, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4039
    :goto_a
    sget v0, Lorg/telegram/messenger/R$id;->title:I

    move-object/from16 v4, p2

    invoke-virtual {v10, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4041
    :goto_b
    invoke-direct {v1, v3}, Lorg/telegram/messenger/voip/VoIPService;->getRoundAvatarBitmap(Lorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4042
    sget v3, Lorg/telegram/messenger/R$id;->answer_text:I

    invoke-static {v13, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4043
    sget v3, Lorg/telegram/messenger/R$id;->decline_text:I

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4044
    sget v3, Lorg/telegram/messenger/R$id;->photo:I

    invoke-virtual {v10, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 4045
    sget v3, Lorg/telegram/messenger/R$id;->answer_btn:I

    invoke-virtual {v10, v3, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4046
    sget v3, Lorg/telegram/messenger/R$id;->decline_btn:I

    invoke-virtual {v10, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4047
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    const/16 v0, 0x1f

    if-lt v11, v0, :cond_13

    const v0, -0xd7d1cf

    .line 4050
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    const/4 v0, 0x1

    .line 4051
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 4052
    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p5

    goto :goto_c

    :cond_13
    move-object/from16 v0, p5

    .line 4054
    iput-object v10, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v10, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    goto :goto_c

    :cond_14
    move-object v0, v4

    :goto_c
    const/16 v2, 0xca

    .line 4057
    invoke-virtual {v1, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 4058
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->startRingtoneAndVibration()V

    return-void
.end method

.method private showNotification()V
    .locals 2

    .line 3362
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 3363
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->getRoundAvatarBitmap(Lorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3365
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->getRoundAvatarBitmap(Lorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8

    .line 2867
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_0

    const-string v1, "voip_chat"

    goto :goto_0

    :cond_0
    const-string v1, "voip"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2868
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_1

    .line 2869
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    const-string v2, "currentAccount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2871
    :cond_1
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2872
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/16 v2, 0x32

    const/high16 v3, 0x2000000

    .line 2873
    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2874
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_4

    .line 2875
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->VoipLiveStream:I

    const-string v2, "VoipLiveStream"

    goto :goto_1

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->VoipVoiceChat:I

    const-string v2, "VoipVoiceChat"

    :goto_1
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2876
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lorg/telegram/messenger/R$drawable;->voicechat_muted:I

    goto :goto_2

    :cond_3
    sget v1, Lorg/telegram/messenger/R$drawable;->voicechat_active:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_3

    .line 2878
    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->VoipOutgoingCall:I

    const-string v2, "VoipOutgoingCall"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2879
    sget v1, Lorg/telegram/messenger/R$drawable;->notification:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2880
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_notification:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2882
    :goto_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-lt v1, v2, :cond_7

    .line 2883
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lorg/telegram/messenger/voip/VoIPActionsReceiver;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2884
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".END_CALL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2885
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/high16 v5, 0xa000000

    if-eqz v4, :cond_6

    .line 2886
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_call_end_white_24dp:I

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget v6, Lorg/telegram/messenger/R$string;->VoipChannelLeaveAlertTitle:I

    const-string v7, "VoipChannelLeaveAlertTitle"

    goto :goto_4

    :cond_5
    sget v6, Lorg/telegram/messenger/R$string;->VoipGroupLeaveAlertTitle:I

    const-string v7, "VoipGroupLeaveAlertTitle"

    :goto_4
    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v3, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v4, v6, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_5

    .line 2888
    :cond_6
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_call_end_white_24dp:I

    sget v6, Lorg/telegram/messenger/R$string;->VoipEndCall:I

    const-string v7, "VoipEndCall"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v3, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v4, v6, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :goto_5
    const/4 v2, 0x2

    .line 2890
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    :cond_7
    const/16 v2, 0x11

    if-lt v1, v2, :cond_8

    .line 2893
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    :cond_8
    const/16 v2, 0x1a

    if-lt v1, v2, :cond_9

    const v3, -0xd7d1cf

    .line 2896
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    .line 2897
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    goto :goto_6

    :cond_9
    const/16 v3, 0x15

    if-lt v1, v3, :cond_a

    const v3, -0xd35a20

    .line 2899
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_a
    :goto_6
    if-lt v1, v2, :cond_b

    .line 2902
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    .line 2903
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_b
    if-eqz p2, :cond_c

    .line 2906
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_c
    const/16 v1, 0xc9

    .line 2909
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    if-eqz p2, :cond_d

    .line 2911
    instance-of p2, v0, Ljava/lang/IllegalArgumentException;

    if-eqz p2, :cond_d

    const/4 p2, 0x0

    .line 2912
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_d
    :goto_7
    return-void
.end method

.method private startConnectingSound()V
    .locals 2

    .line 2453
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startGroupCall(ILjava/lang/String;Z)V
    .locals 5

    .line 1684
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eq v0, p0, :cond_0

    return-void

    .line 1687
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->createGroupCall:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1688
    new-instance p1, Lorg/telegram/messenger/ChatObject$Call;

    invoke-direct {p1}, Lorg/telegram/messenger/ChatObject$Call;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 1689
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_groupCall;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_groupCall;-><init>()V

    iput-object p2, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 1690
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p2, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput v3, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 1691
    iput v2, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    .line 1692
    iput-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_start_video:Z

    .line 1693
    iput-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_join_muted:Z

    .line 1694
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide p2, p1, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    .line 1695
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    .line 1696
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->setSelfPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 1697
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1}, Lorg/telegram/messenger/ChatObject$Call;->createNoVideoParticipant()V

    const/4 p1, 0x6

    .line 1699
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1700
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phone_createGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phone_createGroupCall;-><init>()V

    .line 1701
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_createGroupCall;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1702
    sget-object p2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result p2

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_createGroupCall;->random_id:I

    .line 1703
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->scheduleDate:I

    if-eqz p2, :cond_1

    .line 1704
    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_createGroupCall;->schedule_date:I

    .line 1705
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_createGroupCall;->flags:I

    or-int/2addr p2, v1

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_createGroupCall;->flags:I

    .line 1707
    :cond_1
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda81;

    invoke-direct {p3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda81;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, p1, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 1734
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->createGroupCall:Z

    return-void

    :cond_2
    if-nez p2, :cond_4

    .line 1739
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez p1, :cond_3

    .line 1740
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, p2, p3, v3}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz p1, :cond_3

    .line 1742
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->setSelfPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 1745
    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->configureDeviceForCall()V

    .line 1746
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 1747
    sget-object p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda63;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda63;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1748
    invoke-direct {p0, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    goto/16 :goto_2

    .line 1750
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_5

    goto/16 :goto_2

    .line 1753
    :cond_5
    invoke-direct {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1754
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_6

    .line 1755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initital source = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1757
    :cond_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;-><init>()V

    .line 1758
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->muted:Z

    .line 1759
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget v4, v4, v3

    if-eq v4, v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->video_stopped:Z

    .line 1760
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 1761
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1762
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1763
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 1764
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->invite_hash:Ljava/lang/String;

    .line 1765
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->flags:I

    or-int/2addr p2, v1

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->flags:I

    .line 1767
    :cond_8
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p2, :cond_9

    .line 1768
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->join_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 1770
    :cond_9
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->join_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1771
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    iput-wide v1, p2, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    .line 1773
    :goto_1
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda88;

    invoke-direct {v1, p0, p1, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda88;-><init>(Lorg/telegram/messenger/voip/VoIPService;IZ)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_a
    :goto_2
    return-void
.end method

.method private startGroupCheckShortpoll()V
    .locals 3

    .line 1912
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    aget v1, v1, v2

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1915
    :cond_0
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startOutgoingCall()V
    .locals 4

    .line 898
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0}, Landroid/telecom/Connection;->setDialing()V

    .line 901
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->configureDeviceForCall()V

    .line 902
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 903
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startConnectingSound()V

    const/16 v0, 0xe

    .line 904
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 905
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda61;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda61;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 907
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 909
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    .line 910
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 911
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 912
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getLastSecretVersion()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 913
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda89;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda89;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/MessagesStorage;)V

    const/4 v0, 0x2

    invoke-virtual {v2, v1, v3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    return-void
.end method

.method private startRatingActivity()V
    .locals 0

    return-void
.end method

.method private startRinging()V
    .locals 8

    .line 3312
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    return-void

    .line 3315
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_1

    .line 3316
    invoke-virtual {v0}, Landroid/telecom/Connection;->setRinging()V

    .line 3318
    :cond_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    .line 3319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting ringing for call "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3321
    :cond_2
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 3322
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->notificationsDisabled:Z

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 3323
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/voip/VoIPService;->showIncomingNotification(Ljava/lang/String;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLObject;ZI)V

    .line 3324
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    const-string v0, "Showing incoming call notification"

    .line 3325
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 3328
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->startRingtoneAndVibration(J)V

    .line 3329
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    const-string v0, "Starting incall activity for incoming call"

    .line 3330
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x3039

    .line 3333
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "voip"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3335
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_5

    const-string v1, "Error starting incall activity"

    .line 3336
    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private startRingtoneAndVibration(J)V
    .locals 8

    const-string v0, "custom_"

    .line 2918
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "audio"

    .line 2919
    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 2920
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_a

    .line 2922
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    .line 2923
    new-instance v6, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2930
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 2931
    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    const/4 v6, 0x2

    if-eqz v3, :cond_1

    .line 2932
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_1

    .line 2934
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2935
    sget-boolean v3, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-nez v3, :cond_2

    .line 2936
    invoke-virtual {v2, p0, v6, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 2941
    :cond_2
    :goto_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ringtone_path_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const-string v3, "CallsRingtonePath"

    .line 2944
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2946
    :goto_2
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v7, p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2947
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 2949
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2950
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    .line 2951
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    const/4 v3, 0x0

    .line 2952
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    .line 2956
    :cond_4
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calls_vibrate_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_4

    :cond_5
    const-string p1, "vibrate_calls"

    .line 2959
    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_4
    const/4 p2, 0x4

    if-eq p1, v6, :cond_6

    if-eq p1, p2, :cond_6

    .line 2961
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v5, :cond_7

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v6, :cond_7

    :cond_6
    if-ne p1, p2, :cond_a

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p2

    if-ne p2, v5, :cond_a

    :cond_7
    const-string p2, "vibrator"

    .line 2962
    invoke-virtual {p0, p2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v0, 0x2bc

    const/4 v2, 0x3

    if-ne p1, v5, :cond_8

    const-wide/16 v0, 0x15e

    goto :goto_5

    :cond_8
    if-ne p1, v2, :cond_9

    const-wide/16 v0, 0x578

    :cond_9
    :goto_5
    new-array p1, v2, [J

    const-wide/16 v2, 0x0

    aput-wide v2, p1, v4

    aput-wide v0, p1, v5

    const-wide/16 v0, 0x1f4

    aput-wide v0, p1, v6

    .line 2969
    invoke-virtual {p2, p1, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_a
    return-void
.end method

.method private startScreenCapture(ILjava/lang/String;)V
    .locals 3

    .line 1832
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1835
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1836
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCallPresentation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCallPresentation;-><init>()V

    .line 1837
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCallPresentation;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 1838
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCallPresentation;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1839
    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1840
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda86;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda86;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBluetoothHeadsetState(Z)V
    .locals 3

    .line 3747
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 3750
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 3751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBluetoothHeadsetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3753
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    const-string v0, "audio"

    .line 3754
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 3755
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->isRinging()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    if-eqz p1, :cond_5

    .line 3756
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 3757
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    const-string p1, "SCO already active, setting audio routing"

    .line 3758
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3760
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result p1

    if-nez p1, :cond_6

    .line 3761
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 3762
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_0

    .line 3765
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    const-string p1, "startBluetoothSco"

    .line 3766
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3768
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result p1

    if-nez p1, :cond_6

    .line 3769
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 3770
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda3;-><init>(Landroid/media/AudioManager;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 3780
    :cond_5
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    .line 3781
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    .line 3783
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3784
    invoke-interface {v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_1

    :cond_7
    return-void
.end method

.method private updateConnectionState(IIZ)V
    .locals 4

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 2195
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x3

    :goto_1
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 2196
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    .line 2197
    :cond_3
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    if-nez p2, :cond_5

    .line 2207
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCheckShortpoll()V

    .line 2208
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingAccount:Z

    if-nez p1, :cond_c

    .line 2209
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 2217
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->cancelGroupCheckShortPoll()V

    const/4 p1, 0x0

    if-nez p3, :cond_6

    .line 2219
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    .line 2220
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingAccount:Z

    .line 2222
    :cond_6
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    const/4 p3, 0x0

    if-eqz p2, :cond_7

    .line 2223
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2224
    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    .line 2226
    :cond_7
    iget-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    if-eqz p2, :cond_8

    .line 2227
    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2233
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_9

    .line 2234
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2235
    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    goto :goto_2

    .line 2238
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->playConnectedSound()V

    .line 2240
    :cond_9
    :goto_2
    iget-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->wasConnected:Z

    if-nez p2, :cond_c

    .line 2241
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->wasConnected:Z

    .line 2242
    iget-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->reconnectScreenCapture:Z

    if-eqz p2, :cond_a

    .line 2243
    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    .line 2244
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->reconnectScreenCapture:Z

    .line 2246
    :cond_a
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, p1

    if-eqz p2, :cond_b

    .line 2248
    iget-boolean p3, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    if-nez p3, :cond_b

    .line 2249
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/NativeInstance;->setMuteMicrophone(Z)V

    .line 2252
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->setParticipantsVolume()V

    :cond_c
    :goto_3
    return-void
.end method

.method private updateNetworkType()V
    .locals 3

    .line 3801
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 3802
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3805
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v1

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->setNetworkType(I)V

    goto :goto_0

    .line 3808
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    :goto_0
    return-void
.end method

.method private updateServerConfig()V
    .locals 4

    .line 3350
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "voip_server_config"

    const-string v2, "{}"

    .line 3351
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/voip/Instance;->setGlobalServerConfig(Ljava/lang/String;)V

    .line 3352
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_phone_getCallConfig;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_phone_getCallConfig;-><init>()V

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda77;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda77;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private updateTrafficStats(Lorg/telegram/messenger/voip/NativeInstance;Lorg/telegram/messenger/voip/Instance$TrafficStats;)V
    .locals 12

    if-nez p2, :cond_0

    .line 3565
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/NativeInstance;->getTrafficStats()Lorg/telegram/messenger/voip/Instance$TrafficStats;

    move-result-object p2

    .line 3567
    :cond_0
    iget-wide v0, p2, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesSentWifi:J

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->prevTrafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_1

    iget-wide v4, p1, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesSentWifi:J

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :goto_0
    sub-long/2addr v0, v4

    .line 3568
    iget-wide v4, p2, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedWifi:J

    if-eqz p1, :cond_2

    iget-wide v6, p1, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedWifi:J

    goto :goto_1

    :cond_2
    move-wide v6, v2

    :goto_1
    sub-long/2addr v4, v6

    .line 3569
    iget-wide v6, p2, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesSentMobile:J

    if-eqz p1, :cond_3

    iget-wide v8, p1, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesSentMobile:J

    goto :goto_2

    :cond_3
    move-wide v8, v2

    :goto_2
    sub-long/2addr v6, v8

    .line 3570
    iget-wide v8, p2, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedMobile:J

    if-eqz p1, :cond_4

    iget-wide v10, p1, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedMobile:J

    goto :goto_3

    :cond_4
    move-wide v10, v2

    :goto_3
    sub-long/2addr v8, v10

    .line 3571
    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->prevTrafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

    const/4 p1, 0x1

    const/4 p2, 0x0

    cmp-long v10, v0, v2

    if-lez v10, :cond_5

    .line 3573
    iget v10, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v10

    invoke-virtual {v10, p1, p2, v0, v1}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    :cond_5
    cmp-long v0, v4, v2

    if-lez v0, :cond_6

    .line 3576
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    :cond_6
    const/4 p1, 0x2

    cmp-long v0, v6, v2

    if-lez v0, :cond_8

    .line 3579
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1, p2, v6, v7}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    :cond_8
    cmp-long v0, v8, v2

    if-lez v0, :cond_a

    .line 3582
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    :goto_5
    invoke-virtual {v0, p1, p2, v8, v9}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    :cond_a
    return-void
.end method


# virtual methods
.method public acceptIncomingCall()V
    .locals 4

    .line 3127
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController;->ignoreSetOnline:Z

    .line 3128
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 3129
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 3130
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->configureDeviceForCall()V

    .line 3131
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startConnectingSound()V

    const/16 v0, 0xc

    .line 3132
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 3133
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda60;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda60;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3134
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 3135
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    const/16 v2, 0x100

    .line 3136
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 3137
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getLastSecretVersion()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 3138
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda90;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda90;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public addRemoteSink(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;
    .locals 4

    .line 1249
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    if-eqz p2, :cond_1

    .line 1252
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_2

    return-object v2

    .line 1256
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    if-eqz v2, :cond_3

    .line 1257
    invoke-static {v2}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->access$2200(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)Lorg/webrtc/VideoSink;

    move-result-object v3

    if-ne v3, p3, :cond_3

    return-object v2

    :cond_3
    if-nez v2, :cond_4

    .line 1261
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->proxyVideoSinkLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    :cond_4
    if-nez v2, :cond_5

    .line 1264
    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    invoke-direct {v2}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;-><init>()V

    :cond_5
    if-eqz p3, :cond_6

    .line 1267
    invoke-virtual {v2, p3}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    :cond_6
    if-eqz p4, :cond_7

    .line 1270
    invoke-virtual {v2, p4}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setBackground(Lorg/webrtc/VideoSink;)V

    .line 1272
    :cond_7
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    invoke-virtual {p3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p3, p3, v1

    const/4 p4, 0x1

    if-eqz p2, :cond_8

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    goto :goto_1

    :cond_8
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->createSsrcGroups(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    move-result-object p1

    invoke-virtual {p3, p4, v0, p1, v2}, Lorg/telegram/messenger/voip/NativeInstance;->addIncomingVideoOutput(ILjava/lang/String;[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;Lorg/webrtc/VideoSink;)J

    move-result-wide p1

    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->access$1802(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;J)J

    return-object v2
.end method

.method callFailedFromConnectionService()V
    .locals 1

    .line 4106
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_0

    const-string v0, "ERROR_CONNECTION_SERVICE"

    .line 4107
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 4109
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    :goto_0
    return-void
.end method

.method public checkVideoFrame(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 520
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 524
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasPresentationFrame:I

    if-nez v1, :cond_3

    :cond_2
    if-nez p2, :cond_4

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasCameraFrame:I

    if-eqz v1, :cond_4

    :cond_3
    return-void

    .line 528
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->proxyVideoSinkLruCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 536
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 537
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_6

    .line 539
    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasPresentationFrame:I

    goto :goto_1

    .line 541
    :cond_6
    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasCameraFrame:I

    :goto_1
    return-void

    :cond_7
    if-eqz p2, :cond_8

    .line 546
    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasPresentationFrame:I

    goto :goto_2

    .line 548
    :cond_8
    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasCameraFrame:I

    .line 550
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$5;

    invoke-direct {v1, p0, v0, p2}, Lorg/telegram/messenger/voip/VoIPService$5;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->addRemoteSink(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    return-void

    :cond_9
    :goto_3
    const/4 v0, 0x2

    if-eqz p2, :cond_a

    .line 530
    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasPresentationFrame:I

    goto :goto_4

    .line 532
    :cond_a
    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasCameraFrame:I

    :goto_4
    return-void
.end method

.method public clearCamera()V
    .locals 3

    .line 1162
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 1163
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->clearVideoCapturer()V

    :cond_0
    return-void
.end method

.method public clearRemoteSinks()V
    .locals 1

    .line 581
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->proxyVideoSinkLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public createCaptureDevice(Z)V
    .locals 10

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 1102
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    .line 1104
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 1105
    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->isPrivateScreencast:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 1106
    invoke-virtual {p0, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 1108
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isPrivateScreencast:Z

    .line 1109
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v2, v3

    if-eqz v4, :cond_2

    .line 1110
    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/NativeInstance;->clearVideoCapturer()V

    :cond_2
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    .line 1114
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v6, :cond_4

    .line 1115
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v7, v6, p1

    cmp-long v9, v7, v4

    if-eqz v9, :cond_3

    return-void

    .line 1118
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v4, v4, p1

    invoke-static {v4, v1}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v4

    aput-wide v4, v6, p1

    .line 1119
    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    .line 1120
    invoke-virtual {p0, v2, v0}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 1121
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->groupCallScreencastStateChanged:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1123
    :cond_4
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->requestVideoCall(Z)V

    .line 1124
    invoke-virtual {p0, v2, v0}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 1125
    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1126
    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/VoIPFragment;->onScreenCastStart()V

    goto :goto_1

    .line 1130
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v2, v0, p1

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v2, v2, p1

    if-nez v2, :cond_8

    .line 1131
    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v3, v2, p1

    if-eqz v3, :cond_7

    aget-wide v6, v0, p1

    cmp-long v3, v6, v4

    if-eqz v3, :cond_7

    .line 1132
    aget-object v2, v2, p1

    aget-wide v6, v0, p1

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/voip/NativeInstance;->activateVideoCapturer(J)V

    .line 1134
    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v2, v0, p1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    return-void

    .line 1138
    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v2, v2, p1

    invoke-static {v2, v1}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v1

    aput-wide v1, v0, p1

    :cond_9
    :goto_1
    return-void
.end method

.method public declineIncomingCall()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3283
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    return-void
.end method

.method public declineIncomingCall(ILjava/lang/Runnable;)V
    .locals 6

    .line 3212
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 3213
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->callDiscardReason:I

    .line 3214
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xa

    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    .line 3215
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3216
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3217
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    goto :goto_0

    .line 3219
    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    const/4 p1, 0x1

    .line 3220
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    .line 3221
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void

    :cond_1
    if-eq v0, v1, :cond_9

    const/16 v2, 0xb

    if-ne v0, v2, :cond_2

    goto/16 :goto_3

    .line 3232
    :cond_2
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 3233
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 3234
    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    .line 3235
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    .line 3236
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    if-eqz p1, :cond_3

    .line 3237
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3238
    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    :cond_3
    return-void

    .line 3242
    :cond_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;-><init>()V

    .line 3243
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 3244
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 3245
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 3246
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->duration:I

    .line 3247
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v3, v2, v1

    if-eqz v3, :cond_5

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/NativeInstance;->getPreferredRelayId()J

    move-result-wide v1

    goto :goto_1

    :cond_5
    const-wide/16 v1, 0x0

    :goto_1
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->connection_id:J

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    const/4 v2, 0x3

    if-eq p1, v2, :cond_7

    const/4 v2, 0x4

    if-eq p1, v2, :cond_6

    .line 3260
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_2

    .line 3256
    :cond_6
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_2

    .line 3253
    :cond_7
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_2

    .line 3250
    :cond_8
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 3263
    :goto_2
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda78;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda78;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 3278
    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    .line 3279
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    :cond_9
    :goto_3
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 4338
    sget p2, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, p2, :cond_0

    .line 4339
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    :cond_0
    return-void
.end method

.method public editCallMember(Lorg/telegram/tgnet/TLObject;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 8

    if-eqz p1, :cond_a

    .line 2616
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2619
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;-><init>()V

    .line 2620
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 2621
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$User;

    const-string v2, " access_hash = "

    const-string v3, "edit group call part id = "

    if-eqz v1, :cond_2

    .line 2622
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 2623
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v1, :cond_1

    .line 2624
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 2626
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2627
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    .line 2628
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 2631
    :cond_2
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_4

    .line 2632
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2633
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2634
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    .line 2635
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    :goto_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 2639
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->muted:Z

    .line 2640
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    :cond_5
    if-eqz p4, :cond_6

    .line 2643
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->volume:I

    .line 2644
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    :cond_6
    if-eqz p5, :cond_7

    .line 2647
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->raise_hand:Z

    .line 2648
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    :cond_7
    if-eqz p3, :cond_8

    .line 2651
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->video_stopped:Z

    .line 2652
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    .line 2654
    :cond_8
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_9

    .line 2655
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "edit group call flags = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2657
    :cond_9
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    .line 2658
    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda87;

    invoke-direct {p3, p0, p1, p6}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda87;-><init>(Lorg/telegram/messenger/voip/VoIPService;ILjava/lang/Runnable;)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_a
    :goto_2
    return-void
.end method

.method public forceRating()V
    .locals 1

    const/4 v0, 0x1

    .line 2519
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->forceRating:Z

    return-void
.end method

.method public getAccount()I
    .locals 1

    .line 4333
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    return v0
.end method

.method public getCallDuration()J
    .locals 5

    .line 2848
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 2851
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getCallID()J
    .locals 2

    .line 3111
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getCallState()I
    .locals 1

    .line 3793
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    return v0
.end method

.method public getCallerId()J
    .locals 2

    .line 855
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 856
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    return-wide v0

    .line 858
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    return-wide v0
.end method

.method public getChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    .line 836
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getConnectionAndStartCall()Lorg/telegram/messenger/voip/VoIPService$CallConnection;
    .locals 4

    .line 3292
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-nez v0, :cond_2

    .line 3293
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "creating call connection"

    .line 3294
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3296
    :cond_0
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$CallConnection;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    .line 3297
    invoke-virtual {v0}, Landroid/telecom/Connection;->setInitializing()V

    .line 3298
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_1

    .line 3299
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    .line 3303
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3305
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+99084"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "tel"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Connection;->setAddress(Landroid/net/Uri;I)V

    .line 3306
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Connection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 3308
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    return-object v0
.end method

.method public getCurrentAudioRoute()I
    .locals 5

    .line 2816
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    .line 2817
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2818
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    return v3

    :cond_2
    return v1

    .line 2828
    :cond_3
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    return v0

    .line 2830
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    if-eqz v0, :cond_7

    const-string v0, "audio"

    .line 2831
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2832
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v4

    if-eqz v4, :cond_5

    return v3

    .line 2834
    :cond_5
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    return v1

    .line 2840
    :cond_7
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    return v0
.end method

.method public getDebugString()Ljava/lang/String;
    .locals 3

    .line 2844
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->getDebugInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getEncryptionKey()[B
    .locals 1

    .line 1585
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    return-object v0
.end method

.method public getGA()[B
    .locals 1

    .line 2515
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    return-object v0
.end method

.method public getGroupCallPeer()Lorg/telegram/tgnet/TLRPC$InputPeer;
    .locals 1

    .line 3797
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-object v0
.end method

.method public getLastError()Ljava/lang/String;
    .locals 1

    .line 3789
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteAudioState()I
    .locals 1

    .line 4355
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteAudioState:I

    return v0
.end method

.method public getRemoteVideoState()I
    .locals 1

    .line 4359
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    return v0
.end method

.method public getSelfId()J
    .locals 2

    .line 1346
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-nez v0, :cond_0

    .line 1347
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    return-wide v0

    .line 1349
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    if-eqz v1, :cond_1

    .line 1350
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    return-wide v0

    .line 1351
    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v1, :cond_2

    .line 1352
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    neg-long v0, v0

    return-wide v0

    .line 1354
    :cond_2
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    neg-long v0, v0

    return-wide v0
.end method

.method public getUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 832
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getVideoState(Z)I
    .locals 1

    .line 1218
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget p1, v0, p1

    return p1
.end method

.method public handleNotificationAction(Landroid/content/Intent;)V
    .locals 3

    .line 4281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".END_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4282
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 4283
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    goto :goto_0

    .line 4284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".DECLINE_CALL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4285
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 4286
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 4287
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ANSWER_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4288
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCallFromNotification()V

    :cond_2
    :goto_0
    return-void
.end method

.method public hangUp()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3115
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(ILjava/lang/Runnable;)V

    return-void
.end method

.method public hangUp(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3119
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(ILjava/lang/Runnable;)V

    return-void
.end method

.method public hangUp(ILjava/lang/Runnable;)V
    .locals 6

    .line 863
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p0, v0, p2}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    .line 864
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    if-ne p1, v2, :cond_4

    .line 869
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 871
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v4, -0x200001

    and-int/2addr v3, v4

    iput v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/4 v3, 0x0

    .line 872
    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 873
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v1, p2

    invoke-virtual {p1, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 875
    :cond_3
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phone_discardGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phone_discardGroupCall;-><init>()V

    .line 876
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_discardGroupCall;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 877
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda84;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda84;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2

    .line 884
    :cond_4
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phone_leaveGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phone_leaveGroupCall;-><init>()V

    .line 885
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_leaveGroupCall;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 886
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget p2, p2, v0

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_leaveGroupCall;->source:I

    .line 887
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda83;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda83;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public hangUp(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 3123
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(ILjava/lang/Runnable;)V

    return-void
.end method

.method public hasEarpiece()Z
    .locals 7

    .line 2533
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2534
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2535
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const-string v0, "phone"

    .line 2539
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 2542
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 2543
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    :try_start_0
    const-string v0, "audio"

    .line 2548
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2549
    const-class v3, Landroid/media/AudioManager;

    const-string v4, "getDevicesForStream"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2550
    const-class v4, Landroid/media/AudioManager;

    const-string v5, "DEVICE_OUT_EARPIECE"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    .line 2551
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 2552
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_4

    .line 2556
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    goto :goto_0

    .line 2558
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2561
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_5

    const-string v1, "Error while checking earpiece! "

    .line 2562
    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2564
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    .line 2567
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasVideoCapturer()Z
    .locals 6

    .line 516
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isBluetoothHeadsetConnected()Z
    .locals 1

    .line 3732
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3733
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3735
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    return v0
.end method

.method public isBluetoothOn()Z
    .locals 1

    const-string v0, "audio"

    .line 4193
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4194
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    return v0
.end method

.method public isBluetoothWillOn()Z
    .locals 1

    .line 4198
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    return v0
.end method

.method public isFrontFaceCamera()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    return v0
.end method

.method public isFullscreen(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)Z
    .locals 1

    .line 1321
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBackgroundSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v0, v0, p2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBackgroundEndpointId:[Ljava/lang/String;

    aget-object v0, v0, p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isHangingUp()Z
    .locals 2

    .line 1335
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    .line 4202
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    return v0
.end method

.method public isJoined()Z
    .locals 3

    .line 1069
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMicMute()Z
    .locals 1

    .line 2673
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    return v0
.end method

.method public isOutgoing()Z
    .locals 1

    .line 4277
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    return v0
.end method

.method public isScreencast()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isPrivateScreencast:Z

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 4

    .line 2805
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2806
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    .line 2807
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 2808
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    const-string v0, "audio"

    .line 2809
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2810
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    :goto_1
    return v0

    .line 2812
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    return v0
.end method

.method public isSwitchingStream()Z
    .locals 1

    .line 2282
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    return v0
.end method

.method public isVideoAvailable()Z
    .locals 1

    .line 2496
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    return v0
.end method

.method public migrateToChat(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 1651
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method

.method public mutedByAdmin()Z
    .locals 3

    .line 495
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v1

    .line 498
    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v0, :cond_0

    .line 499
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3740
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->hasAudioFocus:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3742
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->hasAudioFocus:Z

    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCallUpdated(Lorg/telegram/tgnet/TLRPC$PhoneCall;)V
    .locals 6

    .line 1438
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    return-void

    .line 1441
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez v0, :cond_1

    .line 1442
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 1448
    :cond_2
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 1449
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_3

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallUpdated called with wrong call id (got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", expected "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 1454
    :cond_4
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_5

    .line 1455
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    .line 1457
    :cond_5
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_6

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1460
    :cond_6
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 1461
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 1462
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->need_debug:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    .line 1463
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->need_rating:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needRateCall:Z

    .line 1464
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_7

    const-string v0, "call discarded, stopping service"

    .line 1465
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1467
    :cond_7
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    if-eqz p1, :cond_8

    const/16 p1, 0x11

    .line 1468
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1469
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    .line 1470
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1471
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->afterSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x5dc

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1472
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->endConnectionServiceCall(J)V

    .line 1473
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_2

    .line 1475
    :cond_8
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    goto/16 :goto_2

    .line 1477
    :cond_9
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    if-nez v0, :cond_15

    .line 1478
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    if-nez v0, :cond_b

    .line 1479
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_a

    const-string p1, "stopping VoIP service, Ga == null"

    .line 1480
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1482
    :cond_a
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1485
    :cond_b
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a_hash:[B

    array-length v3, v0

    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v4}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1486
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_c

    const-string p1, "stopping VoIP service, Ga hash doesn\'t match"

    .line 1487
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1489
    :cond_c
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1492
    :cond_d
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    .line 1493
    new-instance v0, Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1494
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1496
    invoke-static {v0, v2}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1497
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_e

    const-string p1, "stopping VoIP service, bad Ga and Gb (accepting)"

    .line 1498
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1500
    :cond_e
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1503
    :cond_f
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    invoke-direct {v3, v1, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1505
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1506
    array-length v1, v0

    const/16 v2, 0x100

    if-le v1, v2, :cond_11

    new-array v1, v2, [B

    .line 1508
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    move-object v0, v1

    goto :goto_1

    .line 1510
    :cond_11
    array-length v1, v0

    if-ge v1, v2, :cond_12

    new-array v1, v2, [B

    .line 1512
    array-length v3, v0

    rsub-int v3, v3, 0x100

    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    .line 1513
    :goto_0
    array-length v4, v0

    rsub-int v4, v4, 0x100

    if-ge v3, v4, :cond_10

    .line 1514
    aput-byte v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1518
    :cond_12
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v1

    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 1520
    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-static {v1, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1521
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    .line 1522
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    .line 1524
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->key_fingerprint:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_14

    .line 1525
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_13

    const-string p1, "key fingerprints don\'t match"

    .line 1526
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1528
    :cond_13
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1532
    :cond_14
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->initiateActualEncryptedCall()V

    goto :goto_2

    .line 1533
    :cond_15
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    if-nez v0, :cond_16

    .line 1534
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->processAcceptedCall()V

    goto :goto_2

    .line 1536
    :cond_16
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1a

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->receive_date:I

    if-eqz p1, :cond_1a

    const/16 p1, 0x10

    .line 1537
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1538
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_17

    const-string p1, "!!!!!! CALL RECEIVED"

    .line 1539
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1541
    :cond_17
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 1542
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1543
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    .line 1545
    :cond_18
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1551
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_19

    .line 1552
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1553
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 1555
    :cond_19
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda33;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 1559
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1a
    :goto_2
    return-void
.end method

.method protected onCameraFirstFrameAvailable()V
    .locals 2

    const/4 v0, 0x0

    .line 2592
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2593
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 2594
    invoke-interface {v1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onCameraFirstFrameAvailable()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConnectionStateChanged(IZ)V
    .locals 0

    .line 4115
    new-instance p2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda37;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate()V
    .locals 8

    const-string v0, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 3449
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 3450
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    const-string v1, "=============== VoIPService STARTING ==============="

    .line 3451
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "audio"

    .line 3454
    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 3455
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    const/4 v5, 0x2

    if-lt v3, v4, :cond_1

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3456
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3457
    invoke-static {v0}, Lorg/telegram/messenger/voip/Instance;->setBufferSize(I)V

    goto :goto_0

    :cond_1
    const v0, 0xbb80

    const/4 v4, 0x4

    .line 3459
    invoke-static {v0, v4, v5}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    div-int/2addr v0, v5

    invoke-static {v0}, Lorg/telegram/messenger/voip/Instance;->setBufferSize(I)V

    :goto_0
    const-string v0, "power"

    .line 3462
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v4, "telegram-voip"

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->cpuWakelock:Landroid/os/PowerManager$WakeLock;

    .line 3463
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3465
    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3467
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3468
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3469
    sget-boolean v4, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-nez v4, :cond_4

    const-string v7, "android.intent.action.HEADSET_PLUG"

    .line 3470
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3471
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v7, :cond_3

    const-string v7, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 3472
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 3473
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    const-string v7, "android.intent.action.PHONE_STATE"

    .line 3475
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.SCREEN_ON"

    .line 3476
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.SCREEN_OFF"

    .line 3477
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3479
    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3480
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->fetchBluetoothDeviceName()V

    .line 3482
    new-instance v0, Landroid/content/ComponentName;

    const-class v7, Lorg/telegram/messenger/voip/VoIPMediaButtonReceiver;

    invoke-direct {v0, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    if-nez v4, :cond_a

    .line 3484
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_a

    :try_start_1
    const-string v0, "media_router"

    .line 3486
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    const/16 v2, 0x18

    if-ge v3, v2, :cond_6

    .line 3488
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 3489
    :goto_2
    invoke-direct {p0, v6}, Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V

    .line 3490
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3491
    invoke-interface {v2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_3

    .line 3494
    :cond_6
    invoke-virtual {v0, v6}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 3495
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 3496
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v5, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    .line 3497
    :goto_4
    invoke-direct {p0, v6}, Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V

    .line 3498
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3499
    invoke-interface {v2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_5

    .line 3502
    :cond_8
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 3506
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 3510
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_9

    const-string v2, "error initializing voip controller"

    .line 3511
    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3513
    :cond_9
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    .line 3515
    :cond_a
    :goto_6
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v0, :cond_d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_d

    .line 3516
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    .line 3517
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v2, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lorg/telegram/messenger/R$string;->VoipOutgoingCall:I

    const-string v3, "VoipOutgoingCall"

    .line 3518
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3519
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3520
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_c

    .line 3521
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_b

    sget v1, Lorg/telegram/messenger/R$drawable;->voicechat_muted:I

    goto :goto_7

    :cond_b
    sget v1, Lorg/telegram/messenger/R$drawable;->voicechat_active:I

    :goto_7
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_8

    .line 3523
    :cond_c
    sget v1, Lorg/telegram/messenger/R$drawable;->notification:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3524
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_notification:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_8
    const/16 v1, 0xc9

    .line 3526
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_d
    return-void
.end method

.method public onDestroy()V
    .locals 11

    .line 2976
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "=============== VoIPService STOPPING ==============="

    .line 2977
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 2979
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 2980
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 2981
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    .line 2982
    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez v1, :cond_2

    .line 2983
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iput-boolean v2, v1, Lorg/telegram/messenger/MessagesController;->ignoreSetOnline:Z

    .line 2985
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v1, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_3
    const-string v1, "sensor"

    .line 2987
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    .line 2988
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2990
    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2992
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2993
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2995
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 2996
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 2997
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    .line 2999
    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    .line 3000
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3001
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    .line 3003
    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3004
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3005
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3006
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 3008
    :cond_8
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 3009
    sput-object v3, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    .line 3010
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 3011
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->cancelGroupCheckShortPoll()V

    .line 3012
    sget-object v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda59;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda59;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3013
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v1, v2

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_b

    .line 3014
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v8, v7

    rem-int/lit8 v8, v8, 0x5

    invoke-virtual {v1, v6, v8}, Lorg/telegram/messenger/StatsController;->incrementTotalCallsTime(II)V

    .line 3015
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->onTgVoipPreStop()V

    .line 3016
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/NativeInstance;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3017
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v1, v2

    .line 3018
    sget-object v6, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda4;

    invoke-direct {v7, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/voip/NativeInstance;)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3019
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3020
    iget v7, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    goto :goto_0

    .line 3022
    :cond_9
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    .line 3024
    :cond_a
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/NativeInstance;->stop()Lorg/telegram/messenger/voip/Instance$FinalState;

    move-result-object v1

    .line 3025
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v6, v6, v2

    iget-object v7, v1, Lorg/telegram/messenger/voip/Instance$FinalState;->trafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

    invoke-direct {p0, v6, v7}, Lorg/telegram/messenger/voip/VoIPService;->updateTrafficStats(Lorg/telegram/messenger/voip/NativeInstance;Lorg/telegram/messenger/voip/Instance$TrafficStats;)V

    .line 3026
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->onTgVoipStop(Lorg/telegram/messenger/voip/Instance$FinalState;)V

    .line 3028
    :goto_1
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->prevTrafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

    .line 3029
    iput-wide v4, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    .line 3030
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aput-object v3, v1, v2

    .line 3031
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->destroyInstance()V

    .line 3033
    :cond_b
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v6, v1, v0

    if-eqz v6, :cond_c

    .line 3034
    aget-object v1, v1, v0

    .line 3035
    sget-object v6, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda4;

    invoke-direct {v7, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/voip/NativeInstance;)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3036
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aput-object v3, v1, v0

    :cond_c
    const/4 v1, 0x0

    .line 3038
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    array-length v7, v6

    if-ge v1, v7, :cond_f

    .line 3039
    aget-wide v7, v6, v1

    cmp-long v9, v7, v4

    if-eqz v9, :cond_e

    .line 3040
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_d

    .line 3041
    aget-wide v7, v6, v1

    invoke-static {v7, v8}, Lorg/telegram/messenger/voip/NativeInstance;->destroyVideoCapturer(J)V

    .line 3043
    :cond_d
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aput-wide v4, v6, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3046
    :cond_f
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->cpuWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3047
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    if-nez v1, :cond_15

    const-string v1, "audio"

    .line 3048
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3049
    sget-boolean v4, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-nez v4, :cond_13

    .line 3050
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-nez v4, :cond_10

    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez v4, :cond_10

    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    if-eqz v4, :cond_11

    .line 3051
    :cond_10
    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 3052
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3053
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 3054
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    .line 3055
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    .line 3057
    :cond_11
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    if-nez v4, :cond_12

    .line 3058
    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda2;-><init>(Landroid/media/AudioManager;)V

    sput-object v5, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3074
    :cond_12
    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 3077
    :cond_13
    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lorg/telegram/messenger/voip/VoIPMediaButtonReceiver;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 3079
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3081
    :goto_3
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->hasAudioFocus:Z

    if-eqz v4, :cond_14

    .line 3082
    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 3084
    :cond_14
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3087
    :cond_15
    sget-boolean v1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v1, :cond_17

    .line 3088
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->didDeleteConnectionServiceContact:Z

    if-nez v1, :cond_16

    .line 3089
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->deleteConnectionServiceContact()V

    .line 3091
    :cond_16
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v1, :cond_17

    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    if-nez v4, :cond_17

    .line 3092
    invoke-virtual {v1}, Landroid/telecom/Connection;->destroy()V

    .line 3096
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lorg/telegram/ui/Components/voip/VoIPHelper;->lastCallTime:J

    .line 3098
    invoke-virtual {p0, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->setSinks(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V

    .line 3099
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_18

    .line 3100
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3102
    :cond_18
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    if-ltz v1, :cond_19

    .line 3103
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 3104
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3105
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->classGuid:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->startShortPoll(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    :cond_19
    return-void
.end method

.method public onGroupCallParticipantsUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;)V
    .locals 11

    .line 1359
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;->id:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 1362
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v0

    .line 1363
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_9

    .line 1364
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1365
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->left:Z

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    .line 1366
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    if-eqz v5, :cond_8

    .line 1367
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v6, v6, v3

    if-ne v5, v6, :cond_8

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v2, :cond_3

    .line 1370
    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1371
    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->self:Z

    if-nez v10, :cond_1

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    iget-object v10, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v10, v10, v3

    if-ne v9, v10, :cond_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-le v6, v8, :cond_8

    .line 1376
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void

    .line 1381
    :cond_4
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    cmp-long v6, v9, v0

    if-nez v6, :cond_8

    .line 1382
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v10, v9, v3

    if-eq v6, v10, :cond_6

    aget v9, v9, v3

    if-eqz v9, :cond_6

    if-eqz v6, :cond_6

    .line 1383
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_5

    .line 1384
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "source mismatch my = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " psrc = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1386
    :cond_5
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void

    .line 1388
    :cond_6
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPService;->currentGroupModeStreaming:Z

    if-eqz v6, :cond_7

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-eqz v6, :cond_7

    .line 1389
    iput-boolean v8, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    .line 1390
    invoke-direct {p0, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    .line 1392
    :cond_7
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v5, :cond_8

    .line 1393
    invoke-virtual {p0, v8, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_2
    return-void
.end method

.method public onGroupCallUpdated(Lorg/telegram/tgnet/TLRPC$GroupCall;)V
    .locals 5

    .line 1400
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_0

    return-void

    .line 1403
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_2

    .line 1406
    :cond_1
    instance-of p1, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallDiscarded;

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 1407
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void

    .line 1411
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1413
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stream"

    .line 1414
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1416
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    const/4 p1, 0x0

    .line 1419
    :goto_0
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentGroupModeStreaming:Z

    if-eq p1, v2, :cond_8

    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    if-eqz v2, :cond_8

    .line 1420
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->currentGroupModeStreaming:Z

    if-eq p1, v4, :cond_5

    .line 1421
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    .line 1423
    :cond_5
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentGroupModeStreaming:Z

    if-eqz p1, :cond_7

    .line 1426
    :try_start_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p1, p1, v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v2, :cond_6

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/voip/NativeInstance;->prepareForStream(Z)V

    goto :goto_1

    .line 1428
    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p1, p1, v1

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/voip/NativeInstance;->setJoinResponsePayload(Ljava/lang/String;)V

    .line 1430
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1432
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    return-void
.end method

.method onMediaButtonEvent(Landroid/view/KeyEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2503
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_3

    .line 2504
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2505
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xf

    if-ne p1, v1, :cond_2

    .line 2506
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    goto :goto_0

    .line 2508
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result p1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 3689
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->unmutedByHold:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3692
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const-string v0, "audio"

    .line 3693
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3694
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3697
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    const/4 v2, 0x1

    .line 3698
    :cond_2
    invoke-direct {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->checkIsNear(Z)V

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method public onSignalBarCountChanged(I)V
    .locals 1

    .line 4183
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSignalingData(Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCallSignalingData;)V
    .locals 6

    .line 1339
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->isGroup()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v2

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCallSignalingData;->phone_call_id:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1342
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCallSignalingData;->data:[B

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/NativeInstance;->onSignalingDataReceive([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSignalingData([B)V
    .locals 5

    .line 2482
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez v0, :cond_0

    return-void

    .line 2485
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_sendSignalingData;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_sendSignalingData;-><init>()V

    .line 2486
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_sendSignalingData;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 2487
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 2488
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 2489
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_sendSignalingData;->data:[B

    .line 2490
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    sget-object v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda95;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda95;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 668
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 669
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "Tried to start the VoIP service when it\'s already started"

    .line 670
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    return v3

    :cond_1
    const-string v0, "account"

    const/4 v4, -0x1

    .line 675
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    if-eq v0, v4, :cond_1b

    .line 679
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/voip/VoIPService;->classGuid:I

    const-string v0, "user_id"

    const-wide/16 v4, 0x0

    .line 680
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "chat_id"

    .line 681
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v0, "createGroupCall"

    const/4 v10, 0x0

    .line 682
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->createGroupCall:Z

    const-string v0, "hasFewPeers"

    .line 683
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->hasFewPeers:Z

    const-string v0, "hash"

    .line 684
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    const-string v0, "peerChannelId"

    .line 685
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v0, "peerChatId"

    .line 686
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v0, "peerUserId"

    move-wide v15, v11

    .line 687
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v0, v13, v4

    if-eqz v0, :cond_2

    .line 689
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 690
    iput-wide v13, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    const-string v10, "peerAccessHash"

    .line 691
    invoke-virtual {v2, v10, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_0

    :cond_2
    cmp-long v0, v15, v4

    if-eqz v0, :cond_3

    .line 693
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-wide v10, v15

    .line 694
    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    const-string v10, "peerAccessHash"

    .line 695
    invoke-virtual {v2, v10, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_0

    :cond_3
    cmp-long v0, v10, v4

    if-eqz v0, :cond_4

    .line 697
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 698
    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    const-string v10, "peerAccessHash"

    .line 699
    invoke-virtual {v2, v10, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    :cond_4
    :goto_0
    const-string v0, "scheduleDate"

    const/4 v10, 0x0

    .line 701
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/voip/VoIPService;->scheduleDate:I

    const-string v0, "is_outgoing"

    .line 703
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    const-string v0, "video_call"

    .line 704
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    const-string v0, "can_video_call"

    .line 705
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    const-string v0, "notifications_disabled"

    .line 706
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->notificationsDisabled:Z

    cmp-long v0, v6, v4

    if-eqz v0, :cond_5

    .line 708
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    :cond_5
    cmp-long v6, v8, v4

    if-eqz v6, :cond_6

    .line 711
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 712
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 713
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v5, v1, Lorg/telegram/messenger/voip/VoIPService;->classGuid:I

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v7}, Lorg/telegram/messenger/MessagesController;->startShortPoll(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    .line 716
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->loadResources()V

    const/4 v0, 0x0

    .line 717
    :goto_1
    iget-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    array-length v5, v4

    if-ge v0, v5, :cond_7

    .line 718
    new-instance v5, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    invoke-direct {v5}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;-><init>()V

    aput-object v5, v4, v0

    .line 719
    iget-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    new-instance v5, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    invoke-direct {v5}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;-><init>()V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :try_start_0
    const-string v0, "audio"

    .line 722
    invoke-virtual {v1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 723
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 725
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 727
    :goto_2
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->createGroupCall:Z

    if-nez v0, :cond_8

    .line 728
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v7}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-nez v0, :cond_8

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoIPService: trying to open group call without call "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    return v3

    .line 736
    :cond_8
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_c

    .line 737
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_a

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {v1, v0}, Landroid/app/Service;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    .line 745
    :cond_9
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    const/4 v4, 0x0

    aput v10, v0, v4

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v4, 0x0

    .line 738
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    iget-object v5, v1, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v5, v5, v4

    iget-boolean v7, v1, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    invoke-static {v5, v7}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v7

    aput-wide v7, v0, v4

    if-eqz v6, :cond_b

    .line 740
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v10, v0, v4

    goto :goto_4

    .line 742
    :cond_b
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v3, v0, v4

    .line 747
    :goto_4
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-nez v0, :cond_c

    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v0, :cond_c

    .line 748
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    .line 752
    :cond_c
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_e

    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_e

    .line 753
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_d

    const-string v0, "VoIPService: user == null AND chat == null"

    .line 754
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 756
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    return v3

    .line 759
    :cond_e
    sput-object v1, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    .line 760
    sget-object v4, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    monitor-enter v4

    .line 761
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    const/4 v5, 0x0

    if-eqz v0, :cond_f

    .line 762
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v6, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 763
    sput-object v5, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    .line 765
    :cond_f
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 767
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_15

    .line 768
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_11

    const/16 v0, 0xe

    .line 769
    invoke-direct {v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 770
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_10

    const-string v0, "telecom"

    .line 771
    invoke-virtual {v1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 772
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 773
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 774
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->addAccountToTelecomManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v7, "call_type"

    .line 775
    invoke-virtual {v6, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    .line 776
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 777
    iget v6, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    iget-object v7, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v10, v7}, Lorg/telegram/messenger/ContactsController;->createOrUpdateConnectionServiceContact(JLjava/lang/String;Ljava/lang/String;)V

    const-string v6, "tel"

    .line 778
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+99084"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_5

    .line 780
    :cond_10
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda34;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    .line 784
    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_5
    const/4 v4, 0x0

    goto :goto_6

    .line 787
    :cond_11
    iput-boolean v10, v1, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    const/4 v4, 0x0

    .line 788
    invoke-direct {v1, v4, v5, v4}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCall(ILjava/lang/String;Z)V

    .line 789
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-nez v0, :cond_12

    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v0, :cond_12

    .line 790
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    :cond_12
    :goto_6
    const-string v0, "start_incall_activity"

    .line 793
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 794
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_13

    const-string v2, "voip"

    goto :goto_7

    :cond_13
    const-string v2, "voip_chat"

    :goto_7
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 795
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_14

    const-string v2, "currentAccount"

    .line 796
    iget v4, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 798
    :cond_14
    invoke-virtual {v1, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 801
    :cond_15
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 802
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v0, :cond_16

    .line 803
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_8

    :cond_16
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    if-eqz v0, :cond_17

    .line 805
    iput-boolean v10, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    :cond_17
    if-eqz v0, :cond_18

    .line 807
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-nez v0, :cond_18

    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v0, :cond_18

    const/4 v2, 0x0

    .line 808
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    goto :goto_9

    :cond_18
    const/4 v2, 0x0

    .line 810
    :goto_9
    sput-object v5, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 811
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_19

    .line 812
    invoke-direct {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->acknowledgeCall(Z)V

    .line 813
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    goto :goto_a

    .line 815
    :cond_19
    invoke-direct {v1, v10}, Lorg/telegram/messenger/voip/VoIPService;->acknowledgeCall(Z)V

    .line 818
    :cond_1a
    :goto_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->initializeAccountRelatedThings()V

    .line 819
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda29;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return v3

    :catchall_0
    move-exception v0

    .line 765
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 677
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No account specified when starting VoIP service"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public playAllowTalkSound()V
    .locals 2

    .line 4178
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playConnectedSound()V
    .locals 2

    .line 2448
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 2449
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    return-void
.end method

.method public playStartRecordSound()V
    .locals 2

    .line 4174
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V
    .locals 1

    .line 2599
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2602
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2603
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    if-eqz v0, :cond_1

    .line 2604
    invoke-interface {p1, v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onStateChanged(I)V

    .line 2606
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->signalBarCount:I

    if-eqz v0, :cond_2

    .line 2607
    invoke-interface {p1, v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onSignalBarsCountChanged(I)V

    :cond_2
    return-void
.end method

.method public removeRemoteSink(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1308
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    if-eqz p1, :cond_1

    .line 1310
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, v0

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->access$1800(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->removeIncomingVideoOutput(J)V

    goto :goto_0

    .line 1313
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    if-eqz p1, :cond_1

    .line 1315
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, v0

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->access$1800(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->removeIncomingVideoOutput(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestFullScreen(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1295
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 1300
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, p3

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoEndpointQuality(Ljava/lang/String;I)V

    goto :goto_1

    .line 1302
    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, p3

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoEndpointQuality(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public requestVideoCall(Z)V
    .locals 8

    .line 1073
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1076
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v3, v2, v1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 1077
    aget-object v0, v0, v1

    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setupOutgoingVideoCreated(J)V

    .line 1078
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aput-boolean v1, v0, v1

    goto :goto_1

    .line 1080
    :cond_1
    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v2, v2, v1

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/voip/NativeInstance;->setupOutgoingVideo(Lorg/webrtc/VideoSink;I)V

    .line 1082
    :goto_1
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isPrivateScreencast:Z

    return-void
.end method

.method public setAudioOutput(I)V
    .locals 6

    .line 2727
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioOutput "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const-string v0, "audio"

    .line 2730
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2731
    sget-boolean v1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v4, :cond_4

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto/16 :goto_2

    .line 2734
    :cond_1
    invoke-virtual {v4, v2}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto/16 :goto_2

    :cond_2
    const/4 p1, 0x5

    .line 2737
    invoke-virtual {v4, p1}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto/16 :goto_2

    :cond_3
    const/16 p1, 0x8

    .line 2740
    invoke-virtual {v4, p1}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto/16 :goto_2

    .line 2743
    :cond_4
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_d

    if-nez v1, :cond_d

    if-eqz p1, :cond_a

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_5

    goto :goto_1

    .line 2746
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez p1, :cond_6

    .line 2747
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 2749
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2751
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2754
    :cond_6
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2755
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2757
    :goto_0
    iput v2, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    goto :goto_1

    .line 2760
    :cond_7
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 2761
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    if-eqz p1, :cond_9

    .line 2762
    :cond_8
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 2763
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    .line 2764
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    .line 2766
    :cond_9
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2767
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2768
    iput v5, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    goto :goto_1

    .line 2771
    :cond_a
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 2772
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    if-eqz p1, :cond_c

    .line 2773
    :cond_b
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 2774
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    .line 2775
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    .line 2777
    :cond_c
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2778
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2779
    iput v3, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 2782
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateOutputGainControlState()V

    goto :goto_2

    :cond_d
    if-eqz p1, :cond_10

    if-eq p1, v3, :cond_f

    if-eq p1, v2, :cond_e

    goto :goto_2

    .line 2786
    :cond_e
    iput v2, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 2787
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    goto :goto_2

    .line 2790
    :cond_f
    iput v5, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 2791
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    goto :goto_2

    .line 2794
    :cond_10
    iput v3, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 2795
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    .line 2799
    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 2800
    invoke-interface {v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_3

    :cond_11
    return-void
.end method

.method public setAudioRoute(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 586
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 588
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 590
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBackgroundSinks(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V
    .locals 2

    .line 1325
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setBackground(Lorg/webrtc/VideoSink;)V

    .line 1326
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setBackground(Lorg/webrtc/VideoSink;)V

    return-void
.end method

.method public setGroupCallHash(Ljava/lang/String;)V
    .locals 1

    .line 847
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentGroupModeStreaming:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 850
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    const/4 p1, 0x0

    .line 851
    invoke-direct {p0, p1, p1}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setGroupCallPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 2

    .line 1655
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_0

    return-void

    .line 1658
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1659
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ChatObject$Call;->setSelfPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 1660
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-wide v0, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1662
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_2

    .line 1664
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v0, :cond_1

    .line 1665
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 1667
    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 1670
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v0, :cond_3

    .line 1671
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 1673
    :cond_3
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    :cond_4
    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1677
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    .line 1678
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget p1, p1, v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 1679
    invoke-direct {p0, v0, v0}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    :cond_5
    return-void
.end method

.method public setLocalSink(Lorg/webrtc/VideoSink;Z)V
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1240
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    :goto_0
    return-void
.end method

.method public setMicMute(ZZZ)V
    .locals 9

    .line 463
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    if-eq v0, p1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->micSwitching:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 466
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    .line 467
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    .line 469
    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v0, :cond_1

    .line 470
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-nez v0, :cond_1

    const/4 p3, 0x1

    :cond_1
    if-eqz p3, :cond_2

    .line 475
    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/voip/VoIPService;->editCallMember(Lorg/telegram/tgnet/TLObject;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    .line 476
    sget-object p3, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 485
    :cond_2
    iget-boolean p3, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    const/4 v0, 0x0

    if-nez p3, :cond_3

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->unmutedByHold:Z

    .line 486
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p3, p2, v0

    if-eqz p3, :cond_4

    .line 487
    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/NativeInstance;->setMuteMicrophone(Z)V

    .line 489
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 490
    invoke-interface {p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public setNoiseSupressionEnabled(Z)V
    .locals 3

    .line 840
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    return-void

    .line 843
    :cond_0
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/NativeInstance;->setNoiseSuppressionEnabled(Z)V

    return-void
.end method

.method public setParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;I)V
    .locals 7

    .line 2275
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    int-to-double v3, p2

    const-wide v5, 0x40c3880000000000L    # 10000.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setVolume(ID)V

    .line 2276
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz p1, :cond_0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->audio_source:I

    if-eqz p1, :cond_0

    .line 2277
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1, v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setVolume(ID)V

    :cond_0
    return-void
.end method

.method public setParticipantsVolume()V
    .locals 5

    .line 2258
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 2260
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2261
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 2262
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->self:Z

    if-nez v4, :cond_2

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2265
    :cond_0
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted_by_you:Z

    if-eqz v4, :cond_1

    .line 2266
    invoke-virtual {p0, v3, v1}, Lorg/telegram/messenger/voip/VoIPService;->setParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;I)V

    goto :goto_1

    .line 2268
    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lorg/telegram/messenger/voip/VoIPService;->setParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setRemoteSink(Lorg/webrtc/VideoSink;Z)V
    .locals 1

    .line 1245
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    return-void
.end method

.method public setSinks(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V
    .locals 1

    const/4 v0, 0x0

    .line 1222
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/voip/VoIPService;->setSinks(Lorg/webrtc/VideoSink;ZLorg/webrtc/VideoSink;)V

    return-void
.end method

.method public setSinks(Lorg/webrtc/VideoSink;ZLorg/webrtc/VideoSink;)V
    .locals 2

    .line 1226
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v0, v0, p2

    .line 1227
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object p2, v1, p2

    if-eqz v0, :cond_0

    .line 1229
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1232
    invoke-virtual {p2, p3}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    :cond_1
    return-void
.end method

.method protected setSwitchingCamera(ZZ)V
    .locals 1

    .line 2581
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingCamera:Z

    if-nez p1, :cond_0

    .line 2583
    iput-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    const/4 p1, 0x0

    .line 2584
    :goto_0
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 2585
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 2586
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    invoke-interface {p2, v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onCameraSwitch(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVideoState(ZI)V
    .locals 9

    .line 1169
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1170
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v3, v1

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    if-nez v4, :cond_3

    .line 1171
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v3, v2, p1

    cmp-long v8, v3, v5

    if-eqz v8, :cond_1

    .line 1172
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput p2, v3, v1

    .line 1173
    aget-wide v4, v2, p1

    aget v0, v3, v1

    invoke-static {v4, v5, v0}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoStateCapturer(JI)V

    goto :goto_1

    :cond_1
    if-ne p2, v7, :cond_2

    .line 1174
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v3, 0x11

    if-eq v0, v3, :cond_2

    const/16 v3, 0xb

    if-eq v0, v3, :cond_2

    .line 1175
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v0, v0, v1

    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    invoke-static {v0, v3}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v3

    aput-wide v3, v2, p1

    .line 1176
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v7, v0, v1

    :cond_2
    :goto_1
    return-void

    .line 1180
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput p2, v4, v1

    .line 1181
    aget-object v0, v3, v1

    aget v3, v4, v1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoState(I)V

    .line 1182
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v3, v0, p1

    cmp-long v8, v3, v5

    if-eqz v8, :cond_4

    .line 1183
    aget-wide v3, v0, p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget v0, v0, v1

    invoke-static {v3, v4, v0}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoStateCapturer(JI)V

    :cond_4
    if-nez p1, :cond_7

    .line 1186
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_6

    .line 1187
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget v0, v0, v2

    if-eq v0, v7, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/voip/VoIPService;->editCallMember(Lorg/telegram/tgnet/TLObject;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    .line 1189
    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->checkIsNear()V

    :cond_7
    return-void
.end method

.method public setupCaptureDevice(ZZ)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 1145
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v3, v2, p1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v3, p1

    if-nez v4, :cond_0

    goto :goto_0

    .line 1148
    :cond_0
    aget-object v3, v3, p1

    aget-wide v4, v2, p1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/voip/NativeInstance;->setupOutgoingVideoCreated(J)V

    .line 1149
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aput-boolean v1, v2, p1

    .line 1150
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v0, v2, p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 1152
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    const/4 v2, 0x1

    if-ne p1, p2, :cond_3

    xor-int/lit8 p1, p2, 0x1

    .line 1153
    invoke-virtual {p0, p1, v1, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    .line 1154
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->micSwitching:Z

    .line 1156
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz p1, :cond_5

    .line 1157
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    xor-int/lit8 p1, p2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget p1, p1, v1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda7;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/voip/VoIPService;->editCallMember(Lorg/telegram/tgnet/TLObject;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public startRingtoneAndVibration()V
    .locals 2

    .line 3343
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->startedRinging:Z

    if-nez v0, :cond_0

    .line 3344
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->startRingtoneAndVibration(J)V

    const/4 v0, 0x1

    .line 3345
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->startedRinging:Z

    :cond_0
    return-void
.end method

.method public stopRinging()V
    .locals 2

    .line 2855
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2856
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 2857
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2858
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    .line 2860
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 2861
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 2862
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    :cond_1
    return-void
.end method

.method public stopScreenCapture()V
    .locals 5

    .line 1194
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1197
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_leaveGroupCallPresentation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_leaveGroupCallPresentation;-><init>()V

    .line 1198
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_leaveGroupCallPresentation;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 1199
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda80;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda80;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1205
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 1207
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/voip/NativeInstance;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1209
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1210
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 1211
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aput-boolean v1, v0, v1

    .line 1212
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v1

    .line 1213
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v2, v0, v1

    .line 1214
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallScreencastStateChanged:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public swapSinks()V
    .locals 2

    .line 1330
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->swap()V

    .line 1331
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->swap()V

    return-void
.end method

.method public switchCamera()V
    .locals 8

    .line 1086
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->hasVideoCapturer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingCamera:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1092
    :cond_0
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingCamera:Z

    .line 1093
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v1

    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->switchCamera(Z)V

    return-void

    .line 1087
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v4, v0, v1

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingCamera:Z

    if-nez v2, :cond_2

    .line 1088
    aget-wide v1, v0, v1

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    xor-int/2addr v0, v3

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/voip/NativeInstance;->switchCameraCapturer(JZ)V

    :cond_2
    return-void
.end method

.method public toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;Z)V
    .locals 7

    .line 2677
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2678
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/messenger/R$string;->VoipOutputDevices:I

    const-string v3, "VoipOutputDevices"

    .line 2679
    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/CharSequence;

    sget v4, Lorg/telegram/messenger/R$string;->VoipAudioRoutingSpeaker:I

    const-string v5, "VoipAudioRoutingSpeaker"

    .line 2681
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2682
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-eqz v4, :cond_0

    sget v4, Lorg/telegram/messenger/R$string;->VoipAudioRoutingHeadset:I

    const-string v6, "VoipAudioRoutingHeadset"

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->VoipAudioRoutingEarpiece:I

    const-string v6, "VoipAudioRoutingEarpiece"

    :goto_0
    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 2683
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBluetoothDeviceName:Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    sget v4, Lorg/telegram/messenger/R$string;->VoipAudioRoutingBluetooth:I

    const-string v6, "VoipAudioRoutingBluetooth"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v3, v1

    new-array v0, v0, [I

    sget v4, Lorg/telegram/messenger/R$drawable;->calls_menu_speaker:I

    aput v4, v0, v5

    .line 2685
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-eqz v4, :cond_2

    sget v4, Lorg/telegram/messenger/R$drawable;->calls_menu_headset:I

    goto :goto_2

    :cond_2
    sget v4, Lorg/telegram/messenger/R$drawable;->calls_menu_phone:I

    :goto_2
    aput v4, v0, v2

    sget v2, Lorg/telegram/messenger/R$drawable;->calls_menu_bluetooth:I

    aput v2, v0, v1

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    .line 2680
    invoke-virtual {p1, v3, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    .line 2693
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 2695
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_3

    .line 2696
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x7f6

    invoke-virtual {p2, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_3

    .line 2698
    :cond_3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x7d3

    invoke-virtual {p2, v0}, Landroid/view/Window;->setType(I)V

    .line 2701
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void

    .line 2704
    :cond_5
    sget-boolean p1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz p1, :cond_9

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 2705
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_7

    .line 2706
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {p1}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    goto :goto_4

    :cond_6
    const/16 p2, 0x8

    :goto_4
    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto :goto_6

    .line 2708
    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {p1}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v1, :cond_8

    const/4 v1, 0x5

    :cond_8
    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto :goto_6

    .line 2710
    :cond_9
    iget-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    if-eqz p2, :cond_b

    if-nez p1, :cond_b

    const-string p1, "audio"

    .line 2711
    invoke-virtual {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 2712
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 2713
    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_5

    .line 2715
    :cond_a
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2717
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateOutputGainControlState()V

    goto :goto_6

    .line 2719
    :cond_b
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    .line 2721
    :goto_6
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 2722
    invoke-interface {p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_7

    :cond_c
    return-void
.end method

.method public unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V
    .locals 1

    .line 2612
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateOutputGainControlState()V
    .locals 5

    .line 4316
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4319
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    .line 4320
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const-string v0, "audio"

    .line 4321
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4322
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setAudioOutputGainControlEnabled(Z)V

    .line 4323
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v3, v3, v1

    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_1
    invoke-virtual {v3, v1}, Lorg/telegram/messenger/voip/NativeInstance;->setEchoCancellationStrength(I)V

    goto :goto_3

    .line 4325
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 4326
    :goto_2
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/voip/NativeInstance;->setAudioOutputGainControlEnabled(Z)V

    .line 4327
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v3, v1

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/voip/NativeInstance;->setEchoCancellationStrength(I)V

    :cond_6
    :goto_3
    return-void
.end method
