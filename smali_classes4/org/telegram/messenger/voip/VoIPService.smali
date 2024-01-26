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

.field private audioDeviceCallback:Landroid/media/AudioDeviceCallback;

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

.field private volatile groupCallBottomSheetLatch:Ljava/util/concurrent/CountDownLatch;

.field private groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field private hasAudioFocus:Z

.field public hasFewPeers:Z

.field private isBtHeadsetConnected:Z

.field private volatile isCallEnded:Z

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

.field private lastSensorEvent:Landroid/hardware/SensorEvent;

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
.method public static synthetic $r8$lambda$-AVSvMB8MsU4sCOg3D01KbNCXhU(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startRingtoneAndVibration$67(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-GaXRhY6JQoV517shdjAPaG92Xs(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCheckShortpoll$33(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$00mPCrLC48Nl6__Xf3AO09EQbWU(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$41(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0y2w749CWa07IeTX8zoLgVOZkpc(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$27(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1_p_RJVwW0dEOsM7QSdr1HRGD6Y(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$playAllowTalkSound$92()V

    return-void
.end method

.method public static synthetic $r8$lambda$2tTekcYS4k24m1N7v0o3Fp2hEys(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$setupCaptureDevice$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$3RuNawtNj9PrhzClZqa2OgSz8KM(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onCallUpdated$15()V

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

.method public static synthetic $r8$lambda$7OGfH3ygFjYVVzZI4olvaqx0FRs(Lorg/telegram/messenger/voip/VoIPService;IJI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$46(IJI)V

    return-void
.end method

.method public static synthetic $r8$lambda$7j7YlA3eNc8k0QzFF9D6C2V-mzo(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onSignalBarCountChanged$93(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8b9EnUliWa7oD0zD1gv_-BgHJSw(Lorg/telegram/messenger/voip/VoIPService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$initiateActualEncryptedCall$57(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$9X-tmwtFnONWHKi8OSSrVAk--I4(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callEnded$97()V

    return-void
.end method

.method public static synthetic $r8$lambda$9t2bQMd7a2qawkKAJxWSQwGt2Ag(Lorg/telegram/messenger/voip/VoIPService;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$50(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ae4241IVVelehOcMSm8lsQJ3MQg(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callFailed$86()V

    return-void
.end method

.method public static synthetic $r8$lambda$AwNZkYPPhuleOFj8DCTmM58q7wE(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$loadResources$80()V

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

.method public static synthetic $r8$lambda$Do7ZYadZk78ucLGS6QIyQEP_xcs(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$switchToSpeaker$63()V

    return-void
.end method

.method public static synthetic $r8$lambda$EbNdkPsEGv7ACOfqO47W3WII8yo(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onConnectionStateChanged$90(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GL3YZ8c-5bVhprtgv4C-1i8KSYU(Lorg/telegram/messenger/voip/VoIPService;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$toggleSpeakerphoneOrShowRouteSheet$64(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GubXs2ICVlf-AGKWhNBxjXZL2rI(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startScreenCapture$30(Lorg/telegram/tgnet/TLRPC$Updates;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H-7JtQfkm2lEKYEOT20r6ldG45Y(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$endConnectionServiceCall$98()V

    return-void
.end method

.method public static synthetic $r8$lambda$HH-CiFA5TnOTya-PTE3AbAPlpP8(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onCallUpdated$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$IKnzf8sxArrwrmzKnrr4TwkiCqw()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startOutgoingCall$5()V

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

.method public static synthetic $r8$lambda$L7rNT8EJqHgk1SFNn9Z12f0pHw4(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/AudioManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$configureDeviceForCall$83(Landroid/media/AudioManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LjPk8Bl_hES2PdVSGhWtLvR1mEw(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acknowledgeCall$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ls-ZTyD-JFGlEGLVx4QUDFkkeR8(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$44(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LzWgzP-_2137WYJBckAE87siNRE(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$getConnectionAndStartCall$77()V

    return-void
.end method

.method public static synthetic $r8$lambda$N5t0qKWBrBono9V26_-UwBljI08(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConnectingSound$59()V

    return-void
.end method

.method public static synthetic $r8$lambda$NWFgegNCLFqZMzfuMCV9b_mpzCU(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$switchToSpeaker$62(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OL0VaOJq08FYZT08W0XIz6og2y0(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$initiateActualEncryptedCall$54()V

    return-void
.end method

.method public static synthetic $r8$lambda$OwiyV1RtlJoq4IHGWe4Kg4OkwS8()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acceptIncomingCall$71()V

    return-void
.end method

.method public static synthetic $r8$lambda$P7WhJ0TcLGKP7S79O5ZW4MaR1Sk(Landroid/media/AudioManager;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onDestroy$69(Landroid/media/AudioManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PScamH8uyhhIFLHssZ1ToUoTG-E(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$declineIncomingCall$76(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qj2mzCu1V_wPIitPU7Ws99jCQUk(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$toggleSpeakerphoneOrShowRouteSheet$66(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R7aIJ0hfH0k-wJqUiHH4HdM9QWI(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCheckShortpoll$34(Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TZg-uowGiLe7Jc1VdADsHt2mGrk(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callFailed$85(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

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

.method public static synthetic $r8$lambda$V7_2zS0nclCaTgq9N4ccNq3_zOo(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onDestroy$70()V

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

.method public static synthetic $r8$lambda$Vug10jfpreNK6iiFDamsELo-Q88()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onDestroy$68()V

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

.method public static synthetic $r8$lambda$XiocmBdpgrZTb5T8GfgaDO1-DcY(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acceptIncomingCall$72(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XxuPdlO4pfbCxKT0JIxem5dz1e4(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$playStartRecordSound$91()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y9c-I3TEkt29fdLee45S3jc8ygA(Lorg/telegram/messenger/voip/VoIPService;IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$28(IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZIHsH6Z5sjWc5fEbKAwZuDKpc-8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onSignalingData$60(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZJn1xs0Qn6R6HHIlE_sutlBKa9g(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callEnded$95()V

    return-void
.end method

.method public static synthetic $r8$lambda$_w7IUQvKCXkiLc8DwUAk6rc9TiY(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acceptIncomingCall$73(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a5jbEB9d76aIK6c30irTaKSw0xg(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$26(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$aKhARf_iVoXaf0O_UymrQreLYBU(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$declineIncomingCall$75()V

    return-void
.end method

.method public static synthetic $r8$lambda$ajNlEGklecm9dXTXmEB3zlfyLz0(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$stopScreenCapture$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bnTkyyoJ5M3yvrWvllPwcY6Qzfo(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$42(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cjEhwXdiy_SfKbbJJ8yGMQaQ6BE(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onConnectionStateChanged$88()V

    return-void
.end method

.method public static synthetic $r8$lambda$dja3EyEMp0fxxgWGkHs3sGKr-BQ(Lorg/telegram/messenger/voip/VoIPService;IJJII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$47(IJJII)V

    return-void
.end method

.method public static synthetic $r8$lambda$e9YL8VJx2kZI7D4LLArPiIpiM6k(Landroid/media/AudioManager;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$updateBluetoothHeadsetState$84(Landroid/media/AudioManager;)V

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

.method public static synthetic $r8$lambda$edk8N9JW8TKGWWU7e2B30XrOiVc(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/AudioManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$configureDeviceForCall$82(Landroid/media/AudioManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fcW_vI8HqmQ3XZ8xHa6rLkLfEjg(Lorg/telegram/messenger/voip/VoIPService;J[ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$39(J[ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gtAl8RbcHgfSfYl83b3Qr8KyA60(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$updateConnectionState$53()V

    return-void
.end method

.method public static synthetic $r8$lambda$h2PBrcTHtp9ufUoLW09hf6EBeOw(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callEnded$94()V

    return-void
.end method

.method public static synthetic $r8$lambda$h8dgyjXd1Yvwif4ubEMb7RJJrQM(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Integer;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$toggleSpeakerphoneOrShowRouteSheet$65(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Integer;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hAV5OhtSLvTAsH0yLOL9fxOTDAY(Lorg/telegram/messenger/voip/VoIPService;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$36(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hSs6tUwIbq5Mnh5by0lF0ig372M(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callEnded$96()V

    return-void
.end method

.method public static synthetic $r8$lambda$hleq3Ty1af2NVK7WwCQIH099R2Y(Lorg/telegram/messenger/voip/VoIPService;[BLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startOutgoingCall$9([BLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jKqES-rSngqAE1k097SywnpR3mE(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

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

.method public static synthetic $r8$lambda$o2XKMqXFuNNY6Z89sFBMcwFNWAM(Landroid/content/SharedPreferences;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$updateServerConfig$78(Landroid/content/SharedPreferences;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oBvwKsZ-pqE2MAjttmd3HGgHARM()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->lambda$configureDeviceForCall$81()V

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

.method public static synthetic $r8$lambda$pjbl9sxFK_0SK0vItkvhGMYrwLU(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onConnectionStateChanged$89()V

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

.method public static synthetic $r8$lambda$vZzfdE14qENOjoeE-dXGTDrfae8(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callFailed$87()V

    return-void
.end method

.method public static synthetic $r8$lambda$vdYeGQdFDP6C9CO_Hr8hSmfCj8E(Lorg/telegram/messenger/voip/VoIPService;[I[F[Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$initiateActualEncryptedCall$55([I[F[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$wKKgFhF5qlaMBGgFfCUPfKElSpU(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onTgVoipStop$79(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wqwfF_sXAVGAoqlSwGla6t81ea4(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acceptIncomingCall$74(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

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

    .line 191
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->isDeviceCompatibleWithConnectionServiceAPI()Z

    move-result v0

    sput-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 151
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    .line 193
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    const/4 v1, 0x0

    .line 199
    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/4 v2, 0x1

    .line 209
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    .line 216
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->previousAudioOutput:I

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    .line 262
    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 265
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    new-array v1, v0, [Lorg/telegram/messenger/voip/NativeInstance;

    .line 266
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    new-array v1, v0, [J

    .line 267
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    new-array v1, v0, [Z

    .line 268
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    new-array v1, v0, [I

    .line 269
    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    .line 280
    iput v2, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteAudioState:I

    .line 282
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 294
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    invoke-direct {v1}, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    .line 323
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    .line 326
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$1;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->afterSoundRunnable:Ljava/lang/Runnable;

    .line 367
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$2;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 395
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$3;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->receiver:Landroid/content/BroadcastReceiver;

    .line 529
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    .line 530
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$4;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/voip/VoIPService$4;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->proxyVideoSinkLruCache:Landroid/util/LruCache;

    new-array v1, v0, [Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    .line 675
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    new-array v1, v0, [Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    .line 676
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    new-array v1, v0, [Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    .line 677
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBackgroundSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    new-array v0, v0, [Ljava/lang/String;

    .line 678
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBackgroundEndpointId:[Ljava/lang/String;

    .line 680
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

    .line 4475
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 4476
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

    .line 4479
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

    .line 4481
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_1

    const-string v1, "Error starting permission activity"

    .line 4482
    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 4487
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    .line 4489
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getUIActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "voip"

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

    .line 4491
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_3

    const-string v1, "Error starting incall activity"

    .line 4492
    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/voip/VoIPService;)Landroid/media/AudioDeviceCallback;
    .locals 0

    .line 151
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 151
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/voip/VoIPService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 151
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 151
    iget p0, p0, Lorg/telegram/messenger/voip/VoIPService;->previousAudioOutput:I

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/voip/VoIPService;I)I
    .locals 0

    .line 151
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->previousAudioOutput:I

    return p1
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0

    .line 151
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/voip/VoIPService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 151
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->fetchBluetoothDeviceName()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 0

    .line 151
    iget-boolean p0, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0

    .line 151
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;
    .locals 0

    .line 151
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200()Lorg/telegram/messenger/voip/VoIPService;
    .locals 1

    .line 151
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/voip/VoIPService;)[Lorg/telegram/messenger/voip/NativeInstance;
    .locals 0

    .line 151
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/HashMap;
    .locals 0

    .line 151
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/HashMap;
    .locals 0

    .line 151
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/voip/VoIPService;)Landroid/util/LruCache;
    .locals 0

    .line 151
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->proxyVideoSinkLruCache:Landroid/util/LruCache;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/voip/NativeInstance;Lorg/telegram/messenger/voip/Instance$TrafficStats;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->updateTrafficStats(Lorg/telegram/messenger/voip/NativeInstance;Lorg/telegram/messenger/voip/Instance$TrafficStats;)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->checkUpdateBluetoothHeadset()V

    return-void
.end method

.method static synthetic access$2702(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/voip/VoIPService$CallConnection;)Lorg/telegram/messenger/voip/VoIPService$CallConnection;
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCallFromNotification()V

    return-void
.end method

.method static synthetic access$2902(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0

    .line 151
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 0

    .line 151
    iget-boolean p0, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startRinging()V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 151
    iget p0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0

    .line 151
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->didDeleteConnectionServiceContact:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 151
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 151
    iget p0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/messenger/voip/VoIPService;I)I
    .locals 0

    .line 151
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 151
    iget p0, p0, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    return p0
.end method

.method static synthetic access$3602(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 0

    .line 151
    iget-boolean p0, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0

    .line 151
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    return p1
.end method

.method static synthetic access$502(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0

    .line 151
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    return p1
.end method

.method static synthetic access$600()Ljava/lang/Runnable;
    .locals 1

    .line 151
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 151
    sput-object p0, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .line 151
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/voip/VoIPService;)Landroid/media/SoundPool;
    .locals 0

    .line 151
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 0

    .line 151
    iget-boolean p0, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0

    .line 151
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    return p1
.end method

.method private acknowledgeCall(Z)V
    .locals 5

    .line 1040
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;

    if-eqz v0, :cond_1

    .line 1041
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 1042
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

    .line 1044
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 1047
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

    const-string/jumbo v0, "keyguard"

    .line 1048
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1049
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    const-string p1, "MIUI: no permission to show when locked but the screen is locked. \u00af\\_(\u30c4)_/\u00af"

    .line 1050
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1052
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 1056
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;-><init>()V

    .line 1057
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 1058
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 1059
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 1060
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda96;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda96;-><init>(Lorg/telegram/messenger/voip/VoIPService;Z)V

    const/4 p1, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private addAccountToTelecomManager()Landroid/telecom/PhoneAccountHandle;
    .locals 7

    const-string/jumbo v0, "telecom"

    .line 4547
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 4548
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 4549
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

    .line 4550
    new-instance v3, Landroid/telecom/PhoneAccount$Builder;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    const/16 v1, 0x800

    .line 4551
    invoke-virtual {v3, v1}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_launcher_dr:I

    .line 4552
    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/telecom/PhoneAccount$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v1

    const v3, -0xd35a20

    .line 4553
    invoke-virtual {v1, v3}, Landroid/telecom/PhoneAccount$Builder;->setHighlightColor(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v1

    const-string/jumbo v3, "sip"

    .line 4554
    invoke-virtual {v1, v3}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v1

    .line 4555
    invoke-virtual {v1}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v1

    .line 4556
    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    return-object v2
.end method

.method private broadcastUnknownParticipants(J[I)V
    .locals 9

    .line 2027
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2030
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v2

    const/4 v0, 0x0

    .line 2032
    array-length v4, p3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_5

    .line 2033
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    aget v7, p3, v5

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-nez v6, :cond_1

    .line 2035
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->participantsByVideoSources:Landroid/util/SparseArray;

    aget v7, p3, v5

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-nez v6, :cond_1

    .line 2037
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->participantsByPresentationSources:Landroid/util/SparseArray;

    aget v7, p3, v5

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    :cond_1
    if-eqz v6, :cond_4

    .line 2040
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-eqz v7, :cond_4

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 2044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2046
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

    .line 2049
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [I

    .line 2050
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_6

    .line 2051
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;

    .line 2052
    iget v4, v4, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;->audioSsrc:I

    aput v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2054
    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, p3}, Lorg/telegram/messenger/voip/NativeInstance;->onMediaDescriptionAvailable(J[I)V

    .line 2056
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v1

    :goto_3
    if-ge p2, p1, :cond_8

    .line 2057
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;

    .line 2058
    iget-object v2, p3, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted_by_you:Z

    if-eqz v3, :cond_7

    .line 2059
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v2, v2, v1

    iget p3, p3, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;->audioSsrc:I

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p3, v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setVolume(ID)V

    goto :goto_4

    .line 2061
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
    .locals 6

    .line 4387
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 4388
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

    :cond_0
    const/4 v0, 0x1

    .line 4390
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isCallEnded:Z

    .line 4391
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    .line 4392
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    .line 4394
    :cond_2
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/16 v1, 0x2bc

    .line 4396
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 4403
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 4404
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4405
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    .line 4407
    :cond_3
    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    if-eqz v2, :cond_5

    .line 4408
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    .line 4409
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_4

    .line 4410
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4412
    :cond_4
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    const/16 v1, 0x1f4

    .line 4415
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->afterSoundRunnable:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4417
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 4418
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4419
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 4421
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    if-eqz v0, :cond_7

    int-to-long v0, v1

    goto :goto_1

    :cond_7
    const-wide/16 v0, 0x0

    :goto_1
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->endConnectionServiceCall(J)V

    .line 4422
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private callFailed()V
    .locals 3

    .line 4032
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

    .line 4243
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_2

    .line 4244
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "Discarding failed call"

    .line 4245
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4247
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;-><init>()V

    .line 4248
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 4249
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 4250
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 4251
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v3

    div-long/2addr v3, v1

    long-to-int v3, v3

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->duration:I

    .line 4252
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

    .line 4253
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 4254
    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda98;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda98;

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4267
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

    .line 4269
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4271
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastError:Ljava/lang/String;

    .line 4272
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const-string v0, "ERROR_LOCALIZED"

    .line 4273
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    if-eqz p1, :cond_3

    .line 4274
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    .line 4275
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda34;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 4276
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->afterSoundRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4278
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz p1, :cond_4

    .line 4279
    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v0}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 4280
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {p1}, Landroid/telecom/Connection;->destroy()V

    const/4 p1, 0x0

    .line 4281
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    .line 4283
    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private cancelGroupCheckShortPoll()V
    .locals 3

    .line 2003
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2006
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    if-eqz v0, :cond_1

    .line 2007
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2008
    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    .line 2010
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 2011
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2012
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    :cond_2
    :goto_0
    return-void
.end method

.method private checkIsNear()V
    .locals 3

    .line 3871
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget v0, v0, v1

    if-ne v0, v2, :cond_1

    .line 3872
    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->checkIsNear(Z)V

    :cond_1
    return-void
.end method

.method private checkIsNear(Z)V
    .locals 2

    .line 3877
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    if-eq p1, v0, :cond_2

    .line 3878
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "proximity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3881
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    if-eqz p1, :cond_1

    .line 3884
    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 3886
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3889
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkUpdateBluetoothHeadset()V
    .locals 7

    .line 3659
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    const-string/jumbo v0, "media_router"

    .line 3661
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    const-string v1, "audio"

    .line 3662
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3663
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v2, v3, :cond_1

    .line 3664
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v5, :cond_0

    move v4, v6

    .line 3665
    :cond_0
    invoke-direct {p0, v4}, Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V

    .line 3666
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3667
    invoke-interface {v1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_0

    .line 3670
    :cond_1
    invoke-virtual {v0, v6}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 3671
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 3672
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v5, :cond_2

    move v4, v6

    .line 3673
    :cond_2
    invoke-direct {p0, v4}, Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V

    .line 3674
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3675
    invoke-interface {v1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_1

    .line 3678
    :cond_3
    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 3682
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private configureDeviceForCall()V
    .locals 5

    .line 3745
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configureDeviceForCall, route to set = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3749
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_3

    .line 3750
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioTrackUsageAttribute(I)V

    .line 3751
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x80000000

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioStreamType(I)V

    .line 3754
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    const-string v0, "audio"

    .line 3755
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3756
    sget-boolean v1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-nez v1, :cond_4

    .line 3757
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda45;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/AudioManager;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_4
    const-string/jumbo v0, "sensor"

    .line 3822
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    .line 3823
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_0
    const-string/jumbo v2, "power"

    .line 3826
    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const/16 v3, 0x20

    const-string/jumbo v4, "telegram-voip-prx"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x3

    .line 3827
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3830
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_5

    const-string v1, "Error initializing proximity sensor"

    .line 3831
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

    .line 1678
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

    .line 3522
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3523
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3525
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3526
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3528
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 3529
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

    .line 2069
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aput v3, v4, v1

    if-nez v1, :cond_0

    .line 2071
    iput-boolean v2, v0, Lorg/telegram/messenger/voip/VoIPService;->switchingAccount:Z

    .line 2074
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->cancelGroupCheckShortPoll()V

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2076
    iput-boolean v3, v0, Lorg/telegram/messenger/voip/VoIPService;->wasConnected:Z

    goto :goto_0

    .line 2077
    :cond_1
    iget-boolean v4, v0, Lorg/telegram/messenger/voip/VoIPService;->wasConnected:Z

    if-nez v4, :cond_2

    .line 2078
    iput-boolean v2, v0, Lorg/telegram/messenger/voip/VoIPService;->reconnectScreenCapture:Z

    return-void

    .line 2082
    :cond_2
    :goto_0
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v4, v1

    if-nez v4, :cond_6

    .line 2084
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "voip_"

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

    .line 2085
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    iget-object v6, v0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v7, v6, v1

    if-ne v1, v2, :cond_4

    move v9, v2

    goto :goto_2

    :cond_4
    move v9, v3

    :goto_2
    if-nez v1, :cond_5

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    if-eqz v6, :cond_5

    move v10, v2

    goto :goto_3

    :cond_5
    move v10, v3

    :goto_3
    new-instance v11, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda76;

    invoke-direct {v11, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda76;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    new-instance v12, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda75;

    invoke-direct {v12, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda75;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    new-instance v13, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda80;

    invoke-direct {v13, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda80;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    new-instance v14, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda78;

    invoke-direct {v14, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda78;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    new-instance v15, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda77;

    invoke-direct {v15, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda77;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    new-instance v6, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda79;

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda79;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

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

    .line 2217
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v4, v1

    new-instance v5, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda73;

    invoke-direct {v5, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda73;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/voip/NativeInstance;->setOnStateUpdatedListener(Lorg/telegram/messenger/voip/Instance$OnStateUpdatedListener;)V

    move v4, v2

    goto :goto_4

    :cond_6
    move v4, v3

    .line 2219
    :goto_4
    iget-object v5, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v5, v5, v1

    xor-int/2addr v4, v2

    invoke-virtual {v5, v4, v3}, Lorg/telegram/messenger/voip/NativeInstance;->resetGroupInstance(ZZ)V

    .line 2220
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v5, v4, v1

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-eqz v4, :cond_7

    .line 2221
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aput-boolean v3, v4, v1

    :cond_7
    if-nez v1, :cond_8

    .line 2224
    invoke-direct {v0, v2}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    :cond_8
    return-void
.end method

.method private createSsrcGroups(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;
    .locals 8

    .line 1305
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1308
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1310
    new-instance v4, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    invoke-direct {v4}, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;-><init>()V

    aput-object v4, v1, v3

    .line 1311
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    .line 1312
    aget-object v5, v1, v3

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->semantics:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;->semantics:Ljava/lang/String;

    .line 1313
    aget-object v5, v1, v3

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, v5, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;->ssrcs:[I

    move v5, v2

    .line 1314
    :goto_1
    aget-object v6, v1, v3

    iget-object v6, v6, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;->ssrcs:[I

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 1315
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

    .line 3707
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3708
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

    .line 3710
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    .line 3711
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_1

    .line 3712
    invoke-virtual {v0}, Landroid/telecom/Connection;->setActive()V

    :cond_1
    const/4 v0, 0x0

    .line 3714
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3715
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3716
    invoke-interface {v1, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onStateChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private endConnectionServiceCall(J)V
    .locals 3

    .line 4426
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_1

    .line 4427
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 4451
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 4453
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method private fetchBluetoothDeviceName()V
    .locals 3

    .line 3837
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->fetchingBluetoothDeviceName:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3841
    :try_start_0
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBluetoothDeviceName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3842
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->fetchingBluetoothDeviceName:Z

    .line 3843
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1, p0, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3845
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    const-string v0, "connectivity"

    .line 4028
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEmoji()[Ljava/lang/String;
    .locals 5

    .line 2574
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2576
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2577
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2580
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

    .line 3983
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 3986
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

    .line 3988
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

    .line 4038
    :try_start_0
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v3, "50_50"

    if-eqz v2, :cond_1

    .line 4039
    :try_start_1
    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 4040
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_3

    .line 4041
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v4, v5, v0, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4043
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 4046
    :cond_0
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4047
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 4048
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

    .line 4050
    :try_start_3
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4055
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 4056
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_3

    .line 4057
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v4, v5, v0, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4059
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 4062
    :cond_2
    :try_start_4
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4063
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 4064
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

    .line 4066
    :try_start_5
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    .line 4072
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    if-nez v0, :cond_5

    .line 4075
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 4077
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_4

    .line 4078
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_1

    .line 4080
    :cond_4
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :goto_1
    const/16 p1, 0x2a

    .line 4082
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4083
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4084
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, p1

    .line 4087
    :cond_5
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4088
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 4089
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

    .line 4090
    invoke-virtual {v2}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 4091
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 4092
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4093
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    .locals 1

    .line 851
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    return-object v0
.end method

.method private getStatsNetworkType()I
    .locals 1

    .line 2623
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    .line 2624
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 2625
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

    .line 3533
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3534
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3535
    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 3536
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

    .line 3419
    const-class v0, Lorg/telegram/ui/LaunchActivity;

    return-object v0
.end method

.method public static hasRtmpStream()Z
    .locals 1

    .line 847
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

    .line 3572
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateServerConfig()V

    .line 3573
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3574
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    return-void
.end method

.method private initiateActualEncryptedCall()V
    .locals 39

    move-object/from16 v1, p0

    const-string v0, "calls_access_hashes"

    const-string v2, " "

    .line 2323
    iget-object v3, v1, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2324
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2325
    iput-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 2328
    :cond_0
    :try_start_0
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_1

    .line 2329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InitCall: keyID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2331
    :cond_1
    iget v3, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2332
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2335
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 2337
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2339
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

    .line 2340
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v5

    const/16 v7, 0x14

    const/4 v8, 0x2

    if-le v5, v7, :cond_7

    const-wide v9, 0x7fffffffffffffffL

    .line 2343
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v7, v4

    .line 2344
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2345
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2346
    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2347
    array-length v13, v12

    if-ge v13, v8, :cond_5

    .line 2348
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_2

    .line 2351
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

    .line 2357
    :catch_0
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_3

    .line 2362
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2365
    :cond_7
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-lt v0, v2, :cond_8

    .line 2370
    :try_start_3
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move v0, v3

    .line 2374
    :goto_3
    :try_start_4
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move v2, v3

    goto :goto_4

    :cond_8
    move v0, v3

    move v2, v0

    .line 2379
    :goto_4
    :try_start_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2382
    iget v6, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    .line 2383
    iget v7, v6, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    int-to-double v9, v7

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double v14, v9, v11

    .line 2384
    iget v6, v6, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    int-to-double v6, v6

    div-double v16, v6, v11

    const-string v6, "VoipDataSaving"

    .line 2385
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getDataSavingDefault()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {v1, v6}, Lorg/telegram/messenger/voip/VoIPService;->convertDataSavingMode(I)I

    move-result v18

    .line 2386
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->getGlobalServerConfig()Lorg/telegram/messenger/voip/Instance$ServerConfig;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v0, :cond_a

    .line 2387
    iget-boolean v0, v6, Lorg/telegram/messenger/voip/Instance$ServerConfig;->useSystemAec:Z

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v20, v3

    goto :goto_6

    :cond_a
    :goto_5
    move/from16 v20, v7

    :goto_6
    if-eqz v2, :cond_c

    .line 2388
    iget-boolean v0, v6, Lorg/telegram/messenger/voip/Instance$ServerConfig;->useSystemNs:Z

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v21, v3

    goto :goto_8

    :cond_c
    :goto_7
    move/from16 v21, v7

    .line 2389
    :goto_8
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voip"

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

    .line 2390
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v9, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-static {v9, v10, v7}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogFilePath(JZ)Ljava/lang/String;

    move-result-object v26

    .line 2391
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

    .line 2394
    new-instance v0, Ljava/io/File;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v6, "voip_persistent_state.json"

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    const-string v0, "dbg_force_tcp_in_calls"

    .line 2397
    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x3

    goto :goto_a

    :cond_e
    move v2, v8

    .line 2399
    :goto_a
    iget-object v6, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhoneCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v15, v6, [Lorg/telegram/messenger/voip/Instance$Endpoint;

    .line 2400
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move v13, v3

    :goto_b
    if-ge v13, v6, :cond_10

    .line 2402
    :try_start_6
    iget-object v9, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$PhoneCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;

    .line 2403
    new-instance v23, Lorg/telegram/messenger/voip/Instance$Endpoint;

    instance-of v10, v11, Lorg/telegram/tgnet/TLRPC$TL_phoneConnectionWebrtc;

    iget-wide v7, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->id:J

    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->ip:Ljava/lang/String;

    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->ipv6:Ljava/lang/String;

    iget v4, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->port:I

    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->peer_tag:[B

    move-object/from16 v27, v5

    iget-boolean v5, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->turn:Z

    iget-boolean v1, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->stun:Z

    move/from16 v30, v0

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->username:Ljava/lang/String;

    move/from16 v31, v6

    iget-object v6, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->password:Ljava/lang/String;

    move-object/from16 v21, v6

    iget-boolean v6, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->tcp:Z

    move-object/from16 v16, v9

    move-object/from16 v9, v23

    move-object/from16 v38, v11

    move-object/from16 v17, v12

    move-wide v11, v7

    move v7, v13

    move-object/from16 v13, v17

    move-object v8, v14

    move-object/from16 v14, v16

    move-object/from16 v32, v15

    move v15, v4

    move/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v1

    move-object/from16 v20, v0

    move/from16 v22, v6

    invoke-direct/range {v9 .. v22}, Lorg/telegram/messenger/voip/Instance$Endpoint;-><init>(ZJLjava/lang/String;Ljava/lang/String;II[BZZLjava/lang/String;Ljava/lang/String;Z)V

    aput-object v23, v32, v7

    move-object/from16 v9, v38

    .line 2404
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    if-eqz v0, :cond_f

    .line 2405
    move-object v11, v9

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v13, v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object v14, v8

    move-object/from16 v5, v27

    move/from16 v0, v30

    move/from16 v6, v31

    move-object/from16 v15, v32

    const/4 v8, 0x2

    goto :goto_b

    :cond_10
    move/from16 v30, v0

    move-object/from16 v27, v5

    move/from16 v31, v6

    move-object v8, v14

    move-object/from16 v32, v15

    .line 2408
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2409
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 2411
    :goto_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 2412
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_11
    const/4 v1, 0x0

    :goto_d
    move/from16 v2, v31

    if-ge v1, v2, :cond_12

    .line 2415
    aget-object v3, v32, v1

    aget-object v4, v32, v1

    iget-wide v4, v4, Lorg/telegram/messenger/voip/Instance$Endpoint;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v4, v6}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lorg/telegram/messenger/voip/Instance$Endpoint;->reflectorId:I

    add-int/lit8 v1, v1, 0x1

    move/from16 v31, v2

    goto :goto_d

    :cond_12
    if-eqz v30, :cond_13

    .line 2419
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda21;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v1, p0

    :try_start_7
    invoke-direct {v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_13
    move-object/from16 v1, p0

    :goto_e
    const-string/jumbo v0, "proxy_enabled"

    move-object/from16 v2, v27

    const/4 v3, 0x0

    .line 2424
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "proxy_enabled_calls"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "proxy_ip"

    const/4 v3, 0x0

    .line 2425
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "proxy_secret"

    .line 2426
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2427
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2428
    new-instance v3, Lorg/telegram/messenger/voip/Instance$Proxy;

    const-string/jumbo v4, "proxy_port"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "proxy_user"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "proxy_pass"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v4, v5, v2}, Lorg/telegram/messenger/voip/Instance$Proxy;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v31, v3

    goto :goto_f

    :cond_14
    const/4 v6, 0x0

    move-object/from16 v31, v6

    .line 2433
    :goto_f
    new-instance v0, Lorg/telegram/messenger/voip/Instance$EncryptionKey;

    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    iget-boolean v3, v1, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/voip/Instance$EncryptionKey;-><init>([BZ)V

    const-string v2, "2.7.7"

    .line 2435
    iget-object v3, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->protocol:Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_15

    const/4 v5, 0x1

    goto :goto_10

    :cond_15
    const/4 v5, 0x0

    .line 2436
    :goto_10
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    const/4 v3, 0x0

    aget-wide v6, v2, v3

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_16

    if-nez v5, :cond_16

    .line 2437
    aget-wide v6, v2, v3

    invoke-static {v6, v7}, Lorg/telegram/messenger/voip/NativeInstance;->destroyVideoCapturer(J)V

    .line 2438
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aput-wide v8, v2, v3

    .line 2439
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v3, v2, v3

    .line 2441
    :cond_16
    iget-boolean v2, v1, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-nez v2, :cond_1a

    .line 2442
    iget-boolean v2, v1, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    if-eqz v2, :cond_19

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_17

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Landroid/app/Service;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_19

    .line 2443
    :cond_17
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    iget-object v3, v1, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-boolean v6, v1, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    if-eqz v6, :cond_18

    const/4 v7, 0x1

    goto :goto_11

    :cond_18
    move v7, v4

    :goto_11
    invoke-static {v3, v7}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v6

    aput-wide v6, v2, v4

    .line 2444
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    const/4 v3, 0x2

    aput v3, v2, v4

    goto :goto_12

    .line 2446
    :cond_19
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 2450
    :cond_1a
    :goto_12
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    iget-object v3, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->protocol:Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getNetworkType()I

    move-result v3

    iget-object v6, v1, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v34, v6, v4

    iget-object v6, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v35, v6, v4

    new-instance v4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda74;

    invoke-direct {v4, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda74;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    move-object/from16 v30, v32

    move/from16 v32, v3

    move-object/from16 v33, v0

    move-object/from16 v37, v4

    invoke-static/range {v27 .. v37}, Lorg/telegram/messenger/voip/Instance;->makeInstance(Ljava/lang/String;Lorg/telegram/messenger/voip/Instance$Config;Ljava/lang/String;[Lorg/telegram/messenger/voip/Instance$Endpoint;Lorg/telegram/messenger/voip/Instance$Proxy;ILorg/telegram/messenger/voip/Instance$EncryptionKey;Lorg/webrtc/VideoSink;JLorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;)Lorg/telegram/messenger/voip/NativeInstance;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 2457
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v3

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setOnStateUpdatedListener(Lorg/telegram/messenger/voip/Instance$OnStateUpdatedListener;)V

    .line 2458
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v3

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda70;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda70;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setOnSignalBarsUpdatedListener(Lorg/telegram/messenger/voip/Instance$OnSignalBarsUpdatedListener;)V

    .line 2459
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v3

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda71;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda71;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setOnSignalDataListener(Lorg/telegram/messenger/voip/Instance$OnSignalingDataListener;)V

    .line 2460
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v3

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda69;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda69;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setOnRemoteMediaStateUpdatedListener(Lorg/telegram/messenger/voip/Instance$OnRemoteMediaStateUpdatedListener;)V

    .line 2470
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v3

    iget-boolean v2, v1, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setMuteMicrophone(Z)V

    .line 2472
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    if-eq v5, v0, :cond_1b

    .line 2473
    iput-boolean v5, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    const/4 v5, 0x0

    .line 2474
    :goto_13
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_1b

    .line 2475
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 2476
    iget-boolean v2, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    invoke-interface {v0, v2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onVideoAvailableChange(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 2479
    :cond_1b
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, v2

    .line 2481
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$6;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/voip/VoIPService$6;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_15

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_14

    :catch_4
    move-exception v0

    .line 2491
    :goto_14
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_1c

    const-string v2, "error starting call"

    .line 2492
    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2494
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    :goto_15
    return-void
.end method

.method public static isAnyKindOfCallActive()Z
    .locals 3

    .line 4527
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4528
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

    .line 4534
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

    .line 1088
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

.method private static synthetic lambda$acceptIncomingCall$71()V
    .locals 3

    .line 3262
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$acceptIncomingCall$72(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    if-nez p1, :cond_1

    .line 3320
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 3321
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accept call ok! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 3323
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;->phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 3324
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;

    if-eqz p2, :cond_3

    .line 3325
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->onCallUpdated(Lorg/telegram/tgnet/TLRPC$PhoneCall;)V

    goto :goto_0

    .line 3328
    :cond_1
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_2

    .line 3329
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error on phone.acceptCall: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3331
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$acceptIncomingCall$73(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3318
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda54;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$acceptIncomingCall$74(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    if-nez p3, :cond_7

    .line 3269
    move-object p3, p2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    .line 3270
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;

    if-eqz p2, :cond_2

    .line 3271
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    iget v0, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result p2

    if-nez p2, :cond_1

    .line 3272
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "stopping VoIP service, bad prime"

    .line 3273
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3275
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 3279
    :cond_1
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setSecretPBytes([B)V

    .line 3280
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setSecretG(I)V

    .line 3281
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setLastSecretVersion(I)V

    .line 3282
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

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_3

    .line 3286
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-byte v3, v3

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3288
    :cond_3
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez p3, :cond_5

    .line 3289
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    const-string p1, "call is null"

    .line 3290
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3292
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 3295
    :cond_5
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    .line 3296
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result p3

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    .line 3297
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 3298
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p3, p1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 3299
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_hash:[B

    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a_hash:[B

    .line 3301
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 3302
    array-length p3, p1

    if-le p3, p2, :cond_6

    new-array p3, p2, [B

    .line 3304
    invoke-static {p1, v3, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p3

    .line 3308
    :cond_6
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;-><init>()V

    .line 3309
    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->g_b:[B

    .line 3310
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 3311
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 3312
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 3313
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;-><init>()V

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    .line 3314
    iput-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->udp_reflector:Z

    iput-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->udp_p2p:Z

    const/16 p3, 0x41

    .line 3315
    iput p3, p1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->min_layer:I

    .line 3316
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->getConnectionMaxLayer()I

    move-result p3

    iput p3, p1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->max_layer:I

    .line 3317
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    sget-object p3, Lorg/telegram/messenger/voip/Instance;->AVAILABLE_VERSIONS:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3318
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda84;

    invoke-direct {p3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda84;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const/4 v0, 0x2

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_1

    .line 3335
    :cond_7
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$acknowledgeCall$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V
    .locals 3

    .line 1061
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-nez v0, :cond_0

    return-void

    .line 1064
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receivedCall response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_3

    .line 1068
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 1069
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "error on receivedCall: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1071
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 1073
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz p1, :cond_4

    .line 1074
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/telegram/messenger/ContactsController;->createOrUpdateConnectionServiceContact(JLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "telecom"

    .line 1075
    invoke-virtual {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    .line 1076
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "call_type"

    .line 1077
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1078
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->addAccountToTelecomManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 1081
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startRinging()V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$acknowledgeCall$12(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1060
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda49;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$callEnded$94()V
    .locals 1

    const/16 v0, 0xb

    .line 4394
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    return-void
.end method

.method private synthetic lambda$callEnded$95()V
    .locals 2

    .line 4397
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 4398
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 4399
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$callEnded$96()V
    .locals 7

    .line 4410
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

.method private synthetic lambda$callEnded$97()V
    .locals 7

    .line 4412
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

.method private static synthetic lambda$callFailed$85(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4256
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_1

    .line 4257
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error on phone.discardCall: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 4260
    :cond_0
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_1

    .line 4261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "phone.discardCall "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$callFailed$86()V
    .locals 1

    const/4 v0, 0x4

    .line 4272
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    return-void
.end method

.method private synthetic lambda$callFailed$87()V
    .locals 7

    .line 4275
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

.method private static synthetic lambda$configureDeviceForCall$81()V
    .locals 2

    .line 3763
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3764
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

.method private synthetic lambda$configureDeviceForCall$82(Landroid/media/AudioManager;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 3775
    invoke-virtual {p1, p0, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    .line 3776
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->hasAudioFocus:Z

    .line 3777
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v2

    .line 3778
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3779
    iget v4, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    if-eqz v4, :cond_4

    if-eq v4, v3, :cond_3

    if-eq v4, v1, :cond_1

    goto :goto_2

    .line 3781
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez v1, :cond_2

    .line 3782
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 3784
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 3786
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3789
    :cond_2
    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3790
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_2

    .line 3798
    :cond_3
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3799
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_2

    .line 3794
    :cond_4
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3795
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_2

    .line 3802
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3803
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_2

    .line 3805
    :cond_6
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    .line 3806
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    if-eqz p1, :cond_7

    .line 3807
    iput v3, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    goto :goto_1

    .line 3809
    :cond_7
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 3811
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastSensorEvent:Landroid/hardware/SensorEvent;

    if-eqz p1, :cond_8

    .line 3813
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 3816
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateOutputGainControlState()V

    .line 3817
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    return-void
.end method

.method private synthetic lambda$configureDeviceForCall$83(Landroid/media/AudioManager;)V
    .locals 1

    .line 3759
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3760
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 3761
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3762
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda64;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda64;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 3770
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3772
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3774
    :goto_0
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/AudioManager;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createGroupInstance$36(IILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2087
    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCall(ILjava/lang/String;Z)V

    goto :goto_0

    .line 2089
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

    .line 2092
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 2095
    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lorg/telegram/messenger/ChatObject$Call;->processVoiceLevelsUpdate([I[F[Z)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2098
    :goto_0
    array-length v3, p2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    .line 2099
    aget v3, p2, v1

    if-nez v3, :cond_2

    .line 2100
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

    .line 2101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/messenger/voip/VoIPService;->lastTypingTimeSend:J

    .line 2102
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;-><init>()V

    .line 2103
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_speakingInGroupCallAction;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_speakingInGroupCallAction;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 2104
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2105
    iget v5, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda100;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda100;

    invoke-virtual {v5, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2109
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

    .line 2113
    :cond_2
    aget v2, p3, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    move v2, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 2116
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2117
    sget-object p1, Lorg/telegram/messenger/voip/VoIPService;->audioLevelsCallback:Lorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;

    if-eqz p1, :cond_4

    .line 2118
    invoke-interface {p1, p2, p3, p4}, Lorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;->run([I[F[Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$createGroupInstance$39(J[ILjava/util/ArrayList;)V
    .locals 0

    .line 2126
    sget-object p4, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez p4, :cond_0

    goto :goto_0

    .line 2129
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->broadcastUnknownParticipants(J[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createGroupInstance$40(IJ[I)V
    .locals 1

    .line 2122
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2125
    :cond_0
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda66;

    invoke-direct {p1, p0, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/messenger/voip/VoIPService;J[I)V

    invoke-virtual {v0, p4, p1}, Lorg/telegram/messenger/ChatObject$Call;->processUnknownVideoParticipants([ILorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createGroupInstance$41(Ljava/lang/String;)V
    .locals 1

    .line 2151
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$createGroupInstance$42(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2160
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    return-void
.end method

.method private synthetic lambda$createGroupInstance$43(Ljava/lang/String;IJIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 13

    move-object v0, p0

    move v1, p2

    move-object/from16 v2, p8

    .line 2151
    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda47;

    move-object v4, p1

    invoke-direct {v3, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2152
    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v3, v1

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-eqz p7, :cond_1

    .line 2156
    move-object/from16 v2, p7

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    .line 2157
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

    .line 2159
    :cond_1
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v4, "GROUPCALL_JOIN_MISSING"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2160
    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda41;

    invoke-direct {v2, p0, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2163
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

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x0

    :goto_1
    move v7, v2

    .line 2168
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

    .line 2172
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

    .line 2135
    :cond_0
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;-><init>()V

    const/high16 v0, 0x20000

    .line 2136
    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I

    .line 2137
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;-><init>()V

    .line 2138
    iget-object v1, v8, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 2139
    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->time_ms:J

    const-wide/16 v1, 0x1f4

    cmp-long v1, p4, v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2141
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->scale:I

    :cond_1
    if-eqz v6, :cond_2

    .line 2144
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    .line 2145
    iput v6, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->video_channel:I

    .line 2146
    iput v7, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->video_quality:I

    .line 2148
    :cond_2
    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 2149
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

    .line 2150
    iget v0, v8, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v12, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda103;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v10

    move v3, p1

    move-wide v4, p2

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda103;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;IJII)V

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

    .line 2172
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0, v10, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createGroupInstance$46(IJI)V
    .locals 1

    if-nez p1, :cond_0

    .line 2178
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

    .line 2179
    :goto_0
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 2181
    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p4, 0x1

    invoke-virtual {p3, p2, p4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2182
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private synthetic lambda$createGroupInstance$47(IJJII)V
    .locals 6

    if-eqz p1, :cond_0

    return-void

    .line 2177
    :cond_0
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda44;

    move-object v0, p1

    move-object v1, p0

    move v2, p6

    move-wide v3, p2

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/messenger/voip/VoIPService;IJI)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createGroupInstance$48(IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 1

    const-wide/16 p6, 0x0

    if-nez p5, :cond_1

    .line 2198
    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCallStreamChannels;

    .line 2199
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    .line 2200
    iget-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    const/4 p6, 0x0

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;

    iget-wide p6, p5, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;->last_timestamp_ms:J

    .line 2202
    :cond_0
    iget-object p5, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-boolean v0, p5, Lorg/telegram/messenger/ChatObject$Call;->loadedRtmpStreamParticipant:Z

    if-nez v0, :cond_1

    .line 2203
    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$TL_phone_groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Lorg/telegram/messenger/ChatObject$Call;->createRtmpStreamParticipant(Ljava/util/List;)V

    .line 2204
    iget-object p4, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/4 p5, 0x1

    iput-boolean p5, p4, Lorg/telegram/messenger/ChatObject$Call;->loadedRtmpStreamParticipant:Z

    .line 2207
    :cond_1
    iget-object p4, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p5, p4, p1

    if-eqz p5, :cond_2

    .line 2208
    aget-object p1, p4, p1

    invoke-virtual {p1, p2, p3, p6, p7}, Lorg/telegram/messenger/voip/NativeInstance;->onRequestTimeComplete(JJ)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$createGroupInstance$49(IJ)V
    .locals 7

    .line 2186
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v0, :cond_3

    .line 2187
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupCallStreamChannels;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupCallStreamChannels;-><init>()V

    .line 2188
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupCallStreamChannels;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 2189
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2195
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda102;

    invoke-direct {v3, p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda102;-><init>(Lorg/telegram/messenger/voip/VoIPService;IJ)V

    const/4 v4, 0x2

    const/4 v5, 0x2

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->stream_dc_id:I

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegateTimestamp;III)I

    goto :goto_1

    .line 2190
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    .line 2191
    aget-object p1, v0, p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->onRequestTimeComplete(JJ)V

    :cond_2
    return-void

    .line 2212
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v0, p1

    if-eqz v1, :cond_4

    .line 2213
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

    .line 2217
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->updateConnectionState(IIZ)V

    return-void
.end method

.method private synthetic lambda$declineIncomingCall$75()V
    .locals 2

    .line 3354
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 3355
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$declineIncomingCall$76(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 3397
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 3398
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error on phone.discardCall: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 3401
    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz p2, :cond_1

    .line 3402
    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 3403
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 3405
    :cond_1
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_2

    .line 3406
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "phone.discardCall "

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

    .line 2711
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

    .line 2713
    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "GROUPCALL_VIDEO_TOO_MUCH"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2714
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1}, Lorg/telegram/messenger/ChatObject$Call;->reloadGroupCall()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 2718
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$endConnectionServiceCall$98()V
    .locals 4

    .line 4428
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_6

    .line 4429
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->callDiscardReason:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 4443
    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_2

    .line 4437
    :cond_0
    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_2

    .line 4440
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

    .line 4434
    :cond_3
    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_2

    .line 4431
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

    .line 4446
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->destroy()V

    const/4 v0, 0x0

    .line 4447
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    :cond_6
    return-void
.end method

.method private synthetic lambda$getConnectionAndStartCall$77()V
    .locals 1

    const/4 v0, 0x0

    .line 3432
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    .line 3433
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startOutgoingCall()V

    return-void
.end method

.method private synthetic lambda$hangUp$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 901
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz p2, :cond_0

    .line 902
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 903
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

    .line 911
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz p2, :cond_0

    .line 912
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 913
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

    .line 2419
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$initiateActualEncryptedCall$55([I[F[Z)V
    .locals 4

    .line 2451
    sget-object p1, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2454
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

    .line 2455
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

    .line 2461
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteAudioState:I

    .line 2462
    iput p2, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    .line 2463
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->checkIsNear()V

    const/4 v0, 0x0

    .line 2465
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2466
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 2467
    invoke-interface {v1, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onMediaStateUpdated(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$initiateActualEncryptedCall$57(II)V
    .locals 1

    .line 2460
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/messenger/voip/VoIPService;II)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadResources$80()V
    .locals 3

    .line 3692
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    .line 3693
    sget v2, Lorg/telegram/messenger/R$raw;->voip_connecting:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    .line 3694
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voip_ringback:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spRingbackID:I

    .line 3695
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voip_failed:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spFailedID:I

    .line 3696
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voip_end:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spEndId:I

    .line 3697
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voip_busy:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spBusyId:I

    .line 3698
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voicechat_leave:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatEndId:I

    .line 3699
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voicechat_join:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatStartId:I

    .line 3700
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voicechat_connecting:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatConnecting:I

    .line 3701
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voip_onallowtalk:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spAllowTalkId:I

    .line 3702
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v2, Lorg/telegram/messenger/R$raw;->voip_recordstart:I

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spStartRecordId:I

    return-void
.end method

.method private synthetic lambda$onCallUpdated$15()V
    .locals 7

    .line 1497
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

    .line 1573
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 1574
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 1576
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

    .line 1583
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x3

    .line 1584
    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onConnectionStateChanged$88()V
    .locals 2

    .line 4313
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 4314
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 4315
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$onConnectionStateChanged$89()V
    .locals 9

    .line 4344
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 4345
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 4347
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

.method private synthetic lambda$onConnectionStateChanged$90(I)V
    .locals 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 4298
    iget-wide v1, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 4299
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 4304
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    :cond_1
    if-ne p1, v0, :cond_5

    .line 4308
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 4309
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 4310
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    .line 4312
    :cond_2
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 4318
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->wasEstablished:Z

    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 4319
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->wasEstablished:Z

    .line 4320
    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-nez v2, :cond_3

    .line 4322
    :try_start_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4326
    :catch_0
    :cond_3
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$9;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$9;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4335
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 4336
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result v3

    invoke-virtual {v0, v3, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto :goto_0

    .line 4338
    :cond_4
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result v3

    invoke-virtual {v0, v3, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    :cond_5
    :goto_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 4342
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isCallEnded:Z

    if-nez v0, :cond_6

    .line 4343
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 4350
    :cond_6
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    return-void
.end method

.method private static synthetic lambda$onDestroy$68()V
    .locals 3

    .line 3132
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onDestroy$69(Landroid/media/AudioManager;)V
    .locals 2

    .line 3180
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 3181
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 3182
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3184
    sput-object v1, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    .line 3185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 3187
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3189
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "Error setting audio more to normal"

    .line 3190
    invoke-static {v0, p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 3185
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onDestroy$70()V
    .locals 1

    .line 3207
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 3208
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSignalBarCountChanged$93(I)V
    .locals 2

    .line 4365
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->signalBarCount:I

    const/4 v0, 0x0

    .line 4366
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4367
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 4368
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

    .line 804
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    .line 805
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startOutgoingCall()V

    return-void
.end method

.method private synthetic lambda$onStartCommand$2()V
    .locals 3

    .line 842
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onTgVoipStop$79(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3563
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 3564
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

.method private synthetic lambda$playAllowTalkSound$92()V
    .locals 7

    .line 4359
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

    .line 2499
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

.method private synthetic lambda$playStartRecordSound$91()V
    .locals 7

    .line 4355
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

    .line 1666
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    goto :goto_0

    .line 1668
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;->phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 1669
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->initiateActualEncryptedCall()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$processAcceptedCall$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1664
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda55;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setMicMute$0()V
    .locals 2

    .line 500
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 503
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    .line 504
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

    .line 1184
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->micSwitching:Z

    return-void
.end method

.method private synthetic lambda$startConnectingSound$59()V
    .locals 9

    .line 2505
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 2506
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 2508
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

    .line 2510
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

    .line 1752
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-nez v0, :cond_0

    return-void

    .line 1755
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    .line 1756
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    .line 1757
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-wide v1, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putGroupCall(JLorg/telegram/messenger/ChatObject$Call;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1758
    invoke-direct {p0, v0, p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCall(ILjava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$startGroupCall$21(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    .line 1766
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

    .line 1767
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void
.end method

.method private synthetic lambda$startGroupCall$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1742
    :try_start_0
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallBottomSheetLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x320

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1744
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1746
    :goto_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p2, 0x0

    move v0, p2

    .line 1747
    :goto_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1748
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Update;

    .line 1749
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    if-eqz v2, :cond_0

    .line 1750
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    .line 1751
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda58;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1763
    :cond_1
    :goto_2
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    goto :goto_3

    .line 1765
    :cond_2
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda52;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method private static synthetic lambda$startGroupCall$23()V
    .locals 3

    .line 1784
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

    .line 1812
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method private synthetic lambda$startGroupCall$25(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)V
    .locals 2

    .line 1822
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method private synthetic lambda$startGroupCall$26(Z)V
    .locals 1

    .line 1837
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    return-void
.end method

.method private synthetic lambda$startGroupCall$27(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1841
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "JOIN_AS_PEER_INVALID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 1842
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1844
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v0, :cond_0

    .line 1845
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v2, -0x8001

    and-int/2addr v0, v2

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 1847
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v2, -0x4000001

    and-int/2addr v0, v2

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    :goto_0
    const/4 v0, 0x0

    .line 1849
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1850
    invoke-static {}, Lorg/telegram/ui/Components/JoinCallAlert;->resetCache()V

    .line 1852
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    goto :goto_1

    .line 1853
    :cond_2
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "GROUPCALL_SSRC_DUPLICATE_MUCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1854
    invoke-direct {p0, v2, v2}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    goto :goto_1

    .line 1856
    :cond_3
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "GROUPCALL_INVALID"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 1857
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v4, v5, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    .line 1859
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

    .line 1860
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$startGroupCall$28(IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    if-eqz p3, :cond_4

    .line 1812
    new-instance p4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda40;

    invoke-direct {p4, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1813
    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1814
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v0

    .line 1815
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p4, 0x0

    move v2, p4

    :goto_0
    if-ge v2, p1, :cond_3

    .line 1816
    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Update;

    .line 1817
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    if-eqz v4, :cond_1

    .line 1818
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    .line 1819
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, p4

    :goto_1
    if-ge v5, v4, :cond_2

    .line 1820
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1821
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-nez v7, :cond_0

    .line 1822
    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda57;

    invoke-direct {v3, p0, v6}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1823
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_2

    .line 1824
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "join source = "

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

    .line 1829
    :cond_1
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    if-eqz v4, :cond_2

    .line 1830
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    .line 1831
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->presentation:Z

    if-nez v4, :cond_2

    .line 1832
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1836
    :cond_3
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1837
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda60;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/messenger/voip/VoIPService;Z)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1838
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCheckShortpoll()V

    goto :goto_3

    .line 1840
    :cond_4
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda51;

    invoke-direct {p1, p0, p4}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$startGroupCheckShortpoll$33(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 1964
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 1967
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 1968
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    .line 1971
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$Vector;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1972
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 1973
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

    .line 1974
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    move p3, v0

    .line 1978
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

    .line 1979
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v0

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_5

    .line 1983
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, 0x190

    if-ne p1, p3, :cond_5

    .line 1985
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

    move p1, v2

    goto :goto_1

    :cond_4
    move p1, v0

    move p3, v2

    goto :goto_2

    :cond_5
    move p1, v0

    :goto_1
    move p3, p1

    :goto_2
    if-eqz p3, :cond_6

    .line 1990
    invoke-direct {p0, v0, v0}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    :cond_6
    if-eqz p1, :cond_7

    .line 1993
    invoke-direct {p0, v2, v0}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    .line 1995
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

    .line 1996
    :cond_8
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCheckShortpoll()V

    :cond_9
    :goto_3
    return-void
.end method

.method private synthetic lambda$startGroupCheckShortpoll$34(Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1963
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startGroupCheckShortpoll$35()V
    .locals 4

    .line 1953
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

    .line 1956
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;-><init>()V

    .line 1957
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 1958
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 1959
    aget v3, v1, v2

    if-eqz v3, :cond_1

    .line 1960
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;->sources:Ljava/util/ArrayList;

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1963
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda95;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda95;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_phone_checkGroupCall;)V

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

    .line 937
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    .line 938
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    if-eqz v1, :cond_0

    .line 939
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    return-void

    :cond_0
    if-nez p3, :cond_5

    .line 943
    move-object p3, p2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    .line 944
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;

    if-eqz p2, :cond_2

    .line 945
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    iget v1, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-static {p2, v1}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result p2

    if-nez p2, :cond_1

    .line 946
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 949
    :cond_1
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setSecretPBytes([B)V

    .line 950
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setSecretG(I)V

    .line 951
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setLastSecretVersion(I)V

    .line 952
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

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 956
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-byte v3, v3

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 959
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result p3

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    .line 960
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object p1

    invoke-direct {v4, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p3, v2, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 961
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 962
    array-length p3, p1

    if-le p3, p2, :cond_4

    new-array p3, p2, [B

    .line 964
    invoke-static {p1, v3, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p3

    .line 968
    :cond_4
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;-><init>()V

    .line 969
    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p3, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 970
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;-><init>()V

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    .line 971
    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    iput-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->video:Z

    .line 972
    iput-boolean v3, p3, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->udp_p2p:Z

    .line 973
    iput-boolean v3, p3, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->udp_reflector:Z

    const/16 v2, 0x41

    .line 974
    iput v2, p3, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->min_layer:I

    .line 975
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->getConnectionMaxLayer()I

    move-result v2

    iput v2, p3, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->max_layer:I

    .line 976
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/messenger/voip/Instance;->AVAILABLE_VERSIONS:Ljava/util/List;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 977
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    .line 978
    array-length p3, p1

    int-to-long v2, p3

    invoke-static {p1, v0, v2, v3}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->g_a_hash:[B

    .line 979
    sget-object p1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result p1

    iput p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->random_id:I

    .line 981
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda97;

    invoke-direct {p3, p0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda97;-><init>(Lorg/telegram/messenger/voip/VoIPService;[B)V

    const/4 v0, 0x2

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_1

    .line 1031
    :cond_5
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_6

    .line 1032
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error on getDhConfig "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1034
    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$startOutgoingCall$5()V
    .locals 3

    .line 928
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

    .line 1004
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 1006
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error on phone.discardCall: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1008
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "phone.discardCall "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1011
    :cond_1
    :goto_0
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda31;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startOutgoingCall$7()V
    .locals 5

    const/4 v0, 0x0

    .line 997
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 998
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;-><init>()V

    .line 999
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 1000
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 1001
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 1002
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 1003
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda83;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda83;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$startOutgoingCall$8(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[B)V
    .locals 0

    if-nez p1, :cond_3

    .line 983
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;->phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 984
    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    const/16 p1, 0xd

    .line 985
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 986
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    if-eqz p1, :cond_0

    .line 987
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    return-void

    .line 990
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz p1, :cond_2

    .line 991
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

    .line 992
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/voip/VoIPService;->onCallUpdated(Lorg/telegram/tgnet/TLRPC$PhoneCall;)V

    goto :goto_0

    .line 994
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 996
    :cond_2
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 1014
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 1016
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

    .line 1017
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 1018
    :cond_4
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, 0x193

    if-ne p2, p3, :cond_5

    const-string p1, "ERROR_PRIVACY"

    .line 1019
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 p3, 0x196

    if-ne p2, p3, :cond_6

    const-string p1, "ERROR_LOCALIZED"

    .line 1021
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 1023
    :cond_6
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_7

    .line 1024
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error on phone.requestCall: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1026
    :cond_7
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$startOutgoingCall$9([BLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 981
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda56;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[B)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startRingtoneAndVibration$67(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 3026
    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3028
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$startScreenCapture$29(I)V
    .locals 2

    .line 1879
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method private synthetic lambda$startScreenCapture$30(Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 12

    .line 1882
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 1883
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v2

    .line 1884
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_5

    .line 1885
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Update;

    .line 1886
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    if-eqz v7, :cond_0

    .line 1887
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    .line 1888
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->presentation:Z

    if-eqz v7, :cond_4

    .line 1889
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v7, v7, v1

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/voip/NativeInstance;->setJoinResponsePayload(Ljava/lang/String;)V

    goto :goto_3

    .line 1891
    :cond_0
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    if-eqz v7, :cond_4

    .line 1892
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    .line 1893
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_4

    .line 1894
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1895
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v10

    cmp-long v10, v10, v2

    if-nez v10, :cond_3

    .line 1896
    iget-object v6, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz v6, :cond_4

    .line 1897
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    .line 1898
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->audio_source:I

    aput v6, v7, v1

    goto :goto_3

    .line 1900
    :cond_1
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_4

    .line 1901
    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    .line 1902
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1903
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

    .line 1919
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "GROUPCALL_VIDEO_TOO_MUCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1920
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1}, Lorg/telegram/messenger/ChatObject$Call;->reloadGroupCall()V

    goto :goto_1

    .line 1921
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "JOIN_AS_PEER_INVALID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1922
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1924
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v0, :cond_1

    .line 1925
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 1927
    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    :goto_0
    const/4 v0, 0x0

    .line 1929
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1930
    invoke-static {}, Lorg/telegram/ui/Components/JoinCallAlert;->resetCache()V

    :cond_2
    const/4 p1, 0x2

    .line 1932
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    goto :goto_1

    .line 1933
    :cond_3
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "GROUPCALL_SSRC_DUPLICATE_MUCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1934
    invoke-direct {p0, v2, v1}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    goto :goto_1

    .line 1936
    :cond_4
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "GROUPCALL_INVALID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1937
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

    .line 1879
    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda42;

    invoke-direct {p3, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1880
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1881
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda59;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$Updates;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1915
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1916
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCheckShortpoll()V

    goto :goto_0

    .line 1918
    :cond_0
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda53;

    invoke-direct {p1, p0, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$stopScreenCapture$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1228
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1229
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$switchToSpeaker$62(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 2739
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateOutputGainControlState()V

    .line 2740
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 2741
    invoke-interface {p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$switchToSpeaker$63()V
    .locals 2

    .line 2733
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v0

    .line 2734
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 2737
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    .line 2738
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda67;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda67;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoipAudioManager;->isBluetoothAndSpeakerOnAsync(Lorg/telegram/messenger/Utilities$Callback2;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$toggleSpeakerphoneOrShowRouteSheet$64(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2760
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2763
    :cond_0
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    return-void
.end method

.method private static synthetic lambda$toggleSpeakerphoneOrShowRouteSheet$65(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Integer;Landroid/content/DialogInterface;)V
    .locals 2

    const/4 p2, 0x0

    .line 2768
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getItemViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 2769
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p2, v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setItemColor(III)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2772
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    .line 2773
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setItemColor(III)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$toggleSpeakerphoneOrShowRouteSheet$66(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 2801
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateOutputGainControlState()V

    .line 2802
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 2803
    invoke-interface {p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateBluetoothHeadsetState$84(Landroid/media/AudioManager;)V
    .locals 0

    .line 3940
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private synthetic lambda$updateConnectionState$51(I)V
    .locals 2

    .line 2235
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2238
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    const/4 v1, 0x1

    .line 2239
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->updateConnectionState(IIZ)V

    const/4 p1, 0x0

    .line 2240
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$updateConnectionState$52()V
    .locals 9

    .line 2247
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 2248
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 2250
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

    .line 2265
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 2266
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 2267
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateServerConfig$78(Landroid/content/SharedPreferences;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-nez p2, :cond_0

    .line 3486
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 3487
    invoke-static {p1}, Lorg/telegram/messenger/voip/Instance;->setGlobalServerConfig(Ljava/lang/String;)V

    .line 3488
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p2, "voip_server_config"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private loadResources()V
    .locals 2

    .line 3688
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 3689
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioTrackUsageAttribute(I)V

    .line 3691
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onTgVoipPreStop()V
    .locals 0

    return-void
.end method

.method private onTgVoipStop(Lorg/telegram/messenger/voip/Instance$FinalState;)V
    .locals 4

    .line 3545
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    return-void

    .line 3548
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/voip/Instance$FinalState;->debugLog:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3550
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

    .line 3552
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3555
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/messenger/voip/Instance$FinalState;->debugLog:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3556
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;-><init>()V

    .line 3557
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;->debug:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 3558
    iget-object p1, p1, Lorg/telegram/messenger/voip/Instance$FinalState;->debugLog:Ljava/lang/String;

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 3559
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 3560
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 3561
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 3562
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    sget-object v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda101;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda101;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    const/4 p1, 0x0

    .line 3567
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    :cond_2
    return-void
.end method

.method private processAcceptedCall()V
    .locals 7

    const/16 v0, 0xc

    .line 1620
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1621
    new-instance v0, Ljava/math/BigInteger;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1622
    new-instance v1, Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_b:[B

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1624
    invoke-static {v1, v0}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1625
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stopping VoIP service, bad Ga and Gb"

    .line 1626
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1628
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1632
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    invoke-direct {v3, v2, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1634
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1635
    array-length v1, v0

    const/4 v3, 0x0

    const/16 v4, 0x100

    if-le v1, v4, :cond_3

    new-array v1, v4, [B

    .line 1637
    array-length v5, v0

    sub-int/2addr v5, v4

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 1639
    :cond_3
    array-length v1, v0

    if-ge v1, v4, :cond_4

    new-array v1, v4, [B

    .line 1641
    array-length v5, v0

    rsub-int v5, v5, 0x100

    array-length v6, v0

    invoke-static {v0, v3, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v3

    .line 1642
    :goto_0
    array-length v6, v0

    rsub-int v6, v6, 0x100

    if-ge v5, v6, :cond_2

    .line 1643
    aput-byte v3, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1647
    :cond_4
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v1

    const/16 v4, 0x8

    new-array v5, v4, [B

    .line 1649
    array-length v6, v1

    sub-int/2addr v6, v4

    invoke-static {v1, v6, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1650
    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v3

    .line 1651
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    .line 1652
    iput-wide v3, p0, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    .line 1653
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;-><init>()V

    .line 1654
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->g_a:[B

    .line 1655
    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->key_fingerprint:J

    .line 1656
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 1657
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 1658
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 1659
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    .line 1660
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->getConnectionMaxLayer()I

    move-result v3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->max_layer:I

    .line 1661
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    const/16 v3, 0x41

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->min_layer:I

    .line 1662
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->udp_reflector:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->udp_p2p:Z

    .line 1663
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/messenger/voip/Instance;->AVAILABLE_VERSIONS:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1664
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda89;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda89;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private showIncomingNotification(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZI)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 4098
    new-instance v4, Landroid/content/Intent;

    const-class v0, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v4, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "voip"

    .line 4099
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4101
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "VoipInVideoCallBranding"

    const-string v6, "VoipInCallBranding"

    if-eqz p3, :cond_0

    .line 4102
    sget v7, Lorg/telegram/messenger/R$string;->VoipInVideoCallBranding:I

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    sget v7, Lorg/telegram/messenger/R$string;->VoipInCallBranding:I

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v7, Lorg/telegram/messenger/R$drawable;->ic_call:I

    .line 4103
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v7, 0x0

    const/high16 v8, 0x2000000

    .line 4104
    invoke-static {v1, v7, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 4105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    const/4 v12, 0x2

    if-lt v0, v10, :cond_8

    .line 4106
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v10, "calls_notification_channel"

    .line 4107
    invoke-interface {v0, v10, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string/jumbo v8, "notification"

    .line 4108
    invoke-virtual {v1, v8}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 4109
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "incoming_calls2"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 4111
    invoke-virtual {v13}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 4113
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "incoming_calls3"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 4115
    invoke-virtual {v13}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 4117
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "incoming_calls4"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v13

    const/4 v7, 0x4

    if-eqz v13, :cond_6

    .line 4120
    invoke-virtual {v13}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v11

    if-lt v11, v7, :cond_4

    invoke-virtual {v13}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 4121
    :cond_4
    :goto_1
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v11, :cond_5

    const-string v11, "User messed up the notification channel; deleting it and creating a proper one"

    .line 4122
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4124
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    .line 4126
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_7

    .line 4132
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4133
    invoke-virtual {v0, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 4134
    invoke-virtual {v0, v12}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 4135
    invoke-virtual {v0, v12}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 4136
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 4137
    new-instance v10, Landroid/app/NotificationChannel;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v13, Lorg/telegram/messenger/R$string;->IncomingCallsSystemSetting:I

    const-string v12, "IncomingCallsSystemSetting"

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v7, 0x0

    .line 4139
    :try_start_0
    invoke-virtual {v10, v7, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 4141
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4143
    :goto_3
    sget v0, Lorg/telegram/messenger/R$string;->IncomingCallsSystemSettingDescription:I

    const-string v7, "IncomingCallsSystemSettingDescription"

    invoke-static {v7, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 4144
    invoke-virtual {v10, v7}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 4145
    invoke-virtual {v10, v7}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v7, 0x1

    .line 4146
    invoke-virtual {v10, v7}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 4148
    :try_start_1
    invoke-virtual {v8, v10}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 4150
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4151
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 4155
    :cond_7
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_8
    const/16 v7, 0x15

    if-lt v0, v7, :cond_9

    const/4 v0, 0x0

    .line 4157
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 4159
    :cond_9
    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lorg/telegram/messenger/voip/VoIPActionsReceiver;

    invoke-direct {v0, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".DECLINE_CALL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4161
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v7

    const-string v10, "call_id"

    invoke-virtual {v0, v10, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4162
    sget v7, Lorg/telegram/messenger/R$string;->VoipDeclineCall:I

    const-string v8, "VoipDeclineCall"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 4163
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x18

    const/16 v14, 0x1f

    if-lt v12, v13, :cond_a

    if-ge v12, v14, :cond_a

    .line 4164
    new-instance v15, Landroid/text/SpannableString;

    invoke-direct {v15, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4165
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    const v14, -0xbbcca

    invoke-direct {v11, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const/4 v13, 0x0

    invoke-virtual {v15, v11, v13, v14, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v11, v15

    goto :goto_6

    :cond_a
    const/4 v13, 0x0

    :goto_6
    const/high16 v14, 0x12000000

    .line 4167
    invoke-static {v1, v13, v0, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4168
    new-instance v13, Landroid/content/Intent;

    const-class v15, Lorg/telegram/messenger/voip/VoIPActionsReceiver;

    invoke-direct {v13, v1, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4169
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".ANSWER_CALL"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4170
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v14

    invoke-virtual {v13, v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4171
    sget v10, Lorg/telegram/messenger/R$string;->VoipAnswerCall:I

    const-string v14, "VoipAnswerCall"

    invoke-static {v14, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v7

    const/16 v7, 0x18

    if-lt v12, v7, :cond_b

    const/16 v7, 0x1f

    if-ge v12, v7, :cond_b

    .line 4173
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4174
    new-instance v15, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v16, v8

    const v8, -0xff5600

    invoke-direct {v15, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move/from16 v18, v10

    const/4 v10, 0x0

    invoke-virtual {v7, v15, v10, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v15, v7

    goto :goto_7

    :cond_b
    move-object/from16 v16, v8

    move/from16 v18, v10

    const/4 v10, 0x0

    :goto_7
    const/high16 v7, 0x12000000

    .line 4176
    invoke-static {v1, v10, v13, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v8, 0x2

    .line 4177
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/16 v8, 0x11

    if-lt v12, v8, :cond_c

    .line 4179
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    :cond_c
    const/16 v8, 0x15

    if-lt v12, v8, :cond_d

    const v8, -0xd35a20

    .line 4182
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    new-array v8, v10, [J

    .line 4183
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    const-string v8, "call"

    .line 4184
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/high16 v8, 0x2000000

    .line 4185
    invoke-static {v1, v10, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v9, v4, v8}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 4186
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_d

    .line 4187
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 4188
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 4189
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tel:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_d
    const/16 v4, 0x1f

    if-lt v12, v4, :cond_f

    .line 4195
    invoke-direct {v1, v3}, Lorg/telegram/messenger/voip/VoIPService;->getRoundAvatarBitmap(Lorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4196
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    .line 4197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v3, "___"

    .line 4201
    :cond_e
    new-instance v4, Landroid/app/Person$Builder;

    invoke-direct {v4}, Landroid/app/Person$Builder;-><init>()V

    .line 4202
    invoke-virtual {v4, v3}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v3

    .line 4203
    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v2

    .line 4204
    invoke-static {v2, v0, v7}, Landroid/app/Notification$CallStyle;->forIncomingCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    move-result-object v0

    .line 4206
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 4207
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_c

    :cond_f
    const/16 v4, 0x15

    if-lt v12, v4, :cond_14

    .line 4209
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_call_end_white_24dp:I

    invoke-virtual {v9, v4, v11, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 4210
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_call:I

    invoke-virtual {v9, v4, v15, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 4211
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 4213
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v8

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_10

    sget v10, Lorg/telegram/messenger/R$layout;->call_notification_rtl:I

    goto :goto_8

    :cond_10
    sget v10, Lorg/telegram/messenger/R$layout;->call_notification:I

    :goto_8
    invoke-direct {v4, v8, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 4214
    sget v8, Lorg/telegram/messenger/R$id;->name:I

    invoke-virtual {v4, v8, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4215
    sget v2, Lorg/telegram/messenger/R$id;->subtitle:I

    const/16 v8, 0x8

    invoke-virtual {v4, v2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4216
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v2

    const/4 v8, 0x1

    if-le v2, v8, :cond_12

    .line 4217
    iget v2, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 4218
    sget v5, Lorg/telegram/messenger/R$id;->title:I

    if-eqz p3, :cond_11

    sget v6, Lorg/telegram/messenger/R$string;->VoipInVideoCallBrandingWithName:I

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v10, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v8, v10

    const-string v2, "VoipInVideoCallBrandingWithName"

    invoke-static {v2, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    sget v6, Lorg/telegram/messenger/R$string;->VoipInCallBrandingWithName:I

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v11, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v10

    const-string v2, "VoipInCallBrandingWithName"

    invoke-static {v2, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_b

    .line 4220
    :cond_12
    sget v2, Lorg/telegram/messenger/R$id;->title:I

    if-eqz p3, :cond_13

    sget v6, Lorg/telegram/messenger/R$string;->VoipInVideoCallBranding:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_13
    sget v5, Lorg/telegram/messenger/R$string;->VoipInCallBranding:I

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_a
    invoke-virtual {v4, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4222
    :goto_b
    invoke-direct {v1, v3}, Lorg/telegram/messenger/voip/VoIPService;->getRoundAvatarBitmap(Lorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4223
    sget v3, Lorg/telegram/messenger/R$id;->answer_text:I

    move/from16 v5, v18

    invoke-static {v14, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4224
    sget v3, Lorg/telegram/messenger/R$id;->decline_text:I

    move-object/from16 v6, v16

    move/from16 v5, v17

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4225
    sget v3, Lorg/telegram/messenger/R$id;->photo:I

    invoke-virtual {v4, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 4226
    sget v3, Lorg/telegram/messenger/R$id;->answer_btn:I

    invoke-virtual {v4, v3, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4227
    sget v3, Lorg/telegram/messenger/R$id;->decline_btn:I

    invoke-virtual {v4, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4228
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 4230
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 4231
    iput-object v4, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    goto :goto_c

    .line 4233
    :cond_14
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 4234
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_call_end_white_24dp:I

    invoke-virtual {v9, v2, v11, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 4235
    sget v0, Lorg/telegram/messenger/R$drawable;->ic_call:I

    invoke-virtual {v9, v0, v15, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 4236
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    :goto_c
    const/16 v2, 0xca

    .line 4238
    invoke-virtual {v1, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 4239
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->startRingtoneAndVibration()V

    return-void
.end method

.method private showNotification()V
    .locals 2

    .line 3494
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 3495
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->getRoundAvatarBitmap(Lorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3497
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
    .locals 9

    .line 2961
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "voip_chat"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "voip"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2962
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_1

    .line 2963
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    const-string v2, "currentAccount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2965
    :cond_1
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2966
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/16 v2, 0x32

    const/high16 v3, 0x2000000

    .line 2967
    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2968
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 2969
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->VoipLiveStream:I

    const-string v3, "VoipLiveStream"

    goto :goto_1

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->VoipVoiceChat:I

    const-string v3, "VoipVoiceChat"

    :goto_1
    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2970
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

    .line 2972
    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->VoipOutgoingCall:I

    const-string v3, "VoipOutgoingCall"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2973
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_call:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2974
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 2976
    :goto_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-lt v1, v3, :cond_7

    .line 2977
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lorg/telegram/messenger/voip/VoIPActionsReceiver;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2978
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".END_CALL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2979
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/high16 v6, 0xa000000

    if-eqz v5, :cond_6

    .line 2980
    sget v5, Lorg/telegram/messenger/R$drawable;->ic_call_end_white_24dp:I

    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget v7, Lorg/telegram/messenger/R$string;->VoipChannelLeaveAlertTitle:I

    const-string v8, "VoipChannelLeaveAlertTitle"

    goto :goto_4

    :cond_5
    sget v7, Lorg/telegram/messenger/R$string;->VoipGroupLeaveAlertTitle:I

    const-string v8, "VoipGroupLeaveAlertTitle"

    :goto_4
    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v4, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v5, v7, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_5

    .line 2982
    :cond_6
    sget v5, Lorg/telegram/messenger/R$drawable;->ic_call_end_white_24dp:I

    sget v7, Lorg/telegram/messenger/R$string;->VoipEndCall:I

    const-string v8, "VoipEndCall"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v4, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v5, v7, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :goto_5
    const/4 v3, 0x2

    .line 2984
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    :cond_7
    const/16 v3, 0x11

    if-lt v1, v3, :cond_8

    .line 2987
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    :cond_8
    const/16 v3, 0x1a

    if-lt v1, v3, :cond_9

    const v4, -0xd7d1cf

    .line 2990
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 2991
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    goto :goto_6

    :cond_9
    const/16 v2, 0x15

    if-lt v1, v2, :cond_a

    const v2, -0xd35a20

    .line 2993
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_a
    :goto_6
    if-lt v1, v3, :cond_b

    .line 2996
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    .line 2997
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_b
    if-eqz p2, :cond_c

    .line 3000
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_c
    const/16 v1, 0xc9

    .line 3003
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

    .line 3005
    instance-of p2, v0, Ljava/lang/IllegalArgumentException;

    if-eqz p2, :cond_d

    const/4 p2, 0x0

    .line 3006
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_d
    :goto_7
    return-void
.end method

.method private startConnectingSound()V
    .locals 2

    .line 2504
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startGroupCall(ILjava/lang/String;Z)V
    .locals 5

    .line 1715
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eq v0, p0, :cond_0

    return-void

    .line 1718
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->createGroupCall:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1719
    new-instance p1, Lorg/telegram/messenger/ChatObject$Call;

    invoke-direct {p1}, Lorg/telegram/messenger/ChatObject$Call;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 1720
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_groupCall;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_groupCall;-><init>()V

    iput-object p2, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 1721
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p2, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput v3, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 1722
    iput v2, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    .line 1723
    iput-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_start_video:Z

    .line 1724
    iput-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_join_muted:Z

    .line 1725
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide p2, p1, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    .line 1726
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    .line 1727
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->setSelfPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 1728
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1}, Lorg/telegram/messenger/ChatObject$Call;->createNoVideoParticipant()V

    const/4 p1, 0x6

    .line 1730
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1731
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phone_createGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phone_createGroupCall;-><init>()V

    .line 1732
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_createGroupCall;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1733
    sget-object p2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result p2

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_createGroupCall;->random_id:I

    .line 1734
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->scheduleDate:I

    if-eqz p2, :cond_1

    .line 1735
    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_createGroupCall;->schedule_date:I

    .line 1736
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_createGroupCall;->flags:I

    or-int/2addr p2, v1

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_createGroupCall;->flags:I

    .line 1738
    :cond_1
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p2, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallBottomSheetLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1739
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda86;

    invoke-direct {p3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda86;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, p1, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 1771
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->createGroupCall:Z

    return-void

    :cond_2
    if-nez p2, :cond_4

    .line 1776
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez p1, :cond_3

    .line 1777
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, p2, p3, v3}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz p1, :cond_3

    .line 1779
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->setSelfPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 1782
    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->configureDeviceForCall()V

    .line 1783
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 1784
    sget-object p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda65;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda65;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1785
    invoke-direct {p0, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    goto/16 :goto_2

    .line 1787
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_5

    goto/16 :goto_2

    .line 1790
    :cond_5
    invoke-direct {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1791
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_6

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initital source = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1794
    :cond_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;-><init>()V

    .line 1795
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->muted:Z

    .line 1796
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget v4, v4, v3

    if-eq v4, v1, :cond_7

    goto :goto_0

    :cond_7
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->video_stopped:Z

    .line 1797
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 1798
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1799
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1800
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 1801
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->invite_hash:Ljava/lang/String;

    .line 1802
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->flags:I

    or-int/2addr p2, v1

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->flags:I

    .line 1804
    :cond_8
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p2, :cond_9

    .line 1805
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->join_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 1807
    :cond_9
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCall;->join_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1808
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    iput-wide v1, p2, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    .line 1810
    :goto_1
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda92;

    invoke-direct {v1, p0, p1, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda92;-><init>(Lorg/telegram/messenger/voip/VoIPService;IZ)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_a
    :goto_2
    return-void
.end method

.method private startGroupCheckShortpoll()V
    .locals 3

    .line 1949
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

    .line 1952
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

    .line 921
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Landroid/telecom/Connection;->setDialing()V

    .line 924
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->configureDeviceForCall()V

    .line 925
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 926
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startConnectingSound()V

    const/16 v0, 0xe

    .line 927
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 928
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda61;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda61;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 930
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 932
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    .line 933
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 934
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 935
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getLastSecretVersion()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 936
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda93;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda93;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/MessagesStorage;)V

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
    .locals 4

    .line 3444
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    return-void

    .line 3447
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_1

    .line 3448
    invoke-virtual {v0}, Landroid/telecom/Connection;->setRinging()V

    .line 3450
    :cond_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    .line 3451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting ringing for call "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3453
    :cond_2
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 3454
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->notificationsDisabled:Z

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 3455
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/voip/VoIPService;->showIncomingNotification(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZI)V

    .line 3456
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    const-string v0, "Showing incoming call notification"

    .line 3457
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 3460
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->startRingtoneAndVibration(J)V

    .line 3461
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    const-string v0, "Starting incall activity for incoming call"

    .line 3462
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x3039

    .line 3465
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "voip"

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

    .line 3467
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_5

    const-string v1, "Error starting incall activity"

    .line 3468
    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private startRingtoneAndVibration(J)V
    .locals 11

    .line 3012
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "audio"

    .line 3013
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3014
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_10

    .line 3016
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    return-void

    .line 3019
    :cond_1
    sget-object v2, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    monitor-enter v2

    .line 3020
    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_2

    .line 3021
    monitor-exit v2

    return-void

    .line 3023
    :cond_2
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    .line 3024
    new-instance v6, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 3031
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 3032
    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    const/4 v6, 0x2

    if-eqz v5, :cond_3

    .line 3033
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_2

    .line 3035
    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3036
    sget-boolean v5, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-nez v5, :cond_5

    .line 3037
    invoke-virtual {v1, p0, v6, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v5

    if-ne v5, v4, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    move v5, v3

    .line 3038
    :goto_1
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->hasAudioFocus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    const/4 v5, 0x0

    .line 3043
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "custom_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3044
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ringtone_path_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_6
    const-string v7, "CallsRingtonePath"

    .line 3046
    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    if-nez v7, :cond_7

    .line 3051
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v7

    :goto_4
    move v8, v4

    goto :goto_5

    .line 3054
    :cond_7
    sget-object v8, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    if-eqz v8, :cond_8

    .line 3055
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3056
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v7

    goto :goto_4

    .line 3059
    :cond_8
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move v8, v3

    .line 3062
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start ringtone with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3063
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8, p0, v7}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3064
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v7

    .line 3066
    :try_start_2
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3067
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_9

    .line 3068
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->release()V

    .line 3069
    iput-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    .line 3073
    :cond_9
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "custom_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3074
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calls_vibrate_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_7

    :cond_a
    const-string/jumbo p1, "vibrate_calls"

    .line 3076
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_7
    const/4 p2, 0x4

    if-eq p1, v6, :cond_b

    if-eq p1, p2, :cond_b

    .line 3078
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v4, :cond_c

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v6, :cond_c

    :cond_b
    if-ne p1, p2, :cond_f

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p2

    if-ne p2, v4, :cond_f

    :cond_c
    const-string/jumbo p2, "vibrator"

    .line 3079
    invoke-virtual {p0, p2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v0, 0x2bc

    const/4 v5, 0x3

    if-ne p1, v4, :cond_d

    const-wide/16 v0, 0x15e

    goto :goto_8

    :cond_d
    if-ne p1, v5, :cond_e

    const-wide/16 v0, 0x578

    :cond_e
    :goto_8
    new-array p1, v5, [J

    const-wide/16 v7, 0x0

    aput-wide v7, p1, v3

    aput-wide v0, p1, v4

    const-wide/16 v0, 0x1f4

    aput-wide v0, p1, v6

    .line 3086
    invoke-virtual {p2, p1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 3088
    :cond_f
    monitor-exit v2

    goto :goto_9

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_10
    :goto_9
    return-void
.end method

.method private startScreenCapture(ILjava/lang/String;)V
    .locals 3

    .line 1869
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1872
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1873
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCallPresentation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCallPresentation;-><init>()V

    .line 1874
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCallPresentation;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 1875
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_joinGroupCallPresentation;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1876
    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1877
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda90;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda90;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBluetoothHeadsetState(Z)V
    .locals 3

    .line 3915
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 3918
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 3919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBluetoothHeadsetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3921
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    const-string v0, "audio"

    .line 3922
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 3923
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->isRinging()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    if-eqz p1, :cond_5

    .line 3924
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 3925
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    const-string p1, "SCO already active, setting audio routing"

    .line 3926
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3928
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result p1

    if-nez p1, :cond_6

    .line 3929
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 3930
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_0

    .line 3933
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    const-string/jumbo p1, "startBluetoothSco"

    .line 3934
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3936
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result p1

    if-nez p1, :cond_6

    .line 3937
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 3938
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda4;-><init>(Landroid/media/AudioManager;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 3948
    :cond_5
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    .line 3949
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    .line 3951
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3953
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

    .line 3954
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

    .line 2232
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

    .line 2233
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    .line 2234
    :cond_3
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    if-nez p2, :cond_5

    .line 2244
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCheckShortpoll()V

    .line 2245
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingAccount:Z

    if-nez p1, :cond_c

    .line 2246
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 2254
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->cancelGroupCheckShortPoll()V

    const/4 p1, 0x0

    if-nez p3, :cond_6

    .line 2256
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    .line 2257
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingAccount:Z

    .line 2259
    :cond_6
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    const/4 p3, 0x0

    if-eqz p2, :cond_7

    .line 2260
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2261
    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    .line 2263
    :cond_7
    iget-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    if-eqz p2, :cond_8

    .line 2264
    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2270
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_9

    .line 2271
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2272
    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    goto :goto_2

    .line 2275
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->playConnectedSound()V

    .line 2277
    :cond_9
    :goto_2
    iget-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->wasConnected:Z

    if-nez p2, :cond_c

    .line 2278
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->wasConnected:Z

    .line 2279
    iget-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->reconnectScreenCapture:Z

    if-eqz p2, :cond_a

    .line 2280
    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    .line 2281
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->reconnectScreenCapture:Z

    .line 2283
    :cond_a
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, p1

    if-eqz p2, :cond_b

    .line 2285
    iget-boolean p3, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    if-nez p3, :cond_b

    .line 2286
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/NativeInstance;->setMuteMicrophone(Z)V

    .line 2289
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->setParticipantsVolume()V

    :cond_c
    :goto_3
    return-void
.end method

.method private updateNetworkType()V
    .locals 3

    .line 3971
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 3972
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3975
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v1

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->setNetworkType(I)V

    goto :goto_0

    .line 3978
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    :goto_0
    return-void
.end method

.method private updateServerConfig()V
    .locals 4

    .line 3482
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "voip_server_config"

    const-string/jumbo v2, "{}"

    .line 3483
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/voip/Instance;->setGlobalServerConfig(Ljava/lang/String;)V

    .line 3484
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_phone_getCallConfig;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_phone_getCallConfig;-><init>()V

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda81;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda81;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private updateTrafficStats(Lorg/telegram/messenger/voip/NativeInstance;Lorg/telegram/messenger/voip/Instance$TrafficStats;)V
    .locals 12

    if-nez p2, :cond_0

    .line 3722
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/NativeInstance;->getTrafficStats()Lorg/telegram/messenger/voip/Instance$TrafficStats;

    move-result-object p2

    .line 3724
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

    .line 3725
    iget-wide v4, p2, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedWifi:J

    if-eqz p1, :cond_2

    iget-wide v6, p1, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedWifi:J

    goto :goto_1

    :cond_2
    move-wide v6, v2

    :goto_1
    sub-long/2addr v4, v6

    .line 3726
    iget-wide v6, p2, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesSentMobile:J

    if-eqz p1, :cond_3

    iget-wide v8, p1, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesSentMobile:J

    goto :goto_2

    :cond_3
    move-wide v8, v2

    :goto_2
    sub-long/2addr v6, v8

    .line 3727
    iget-wide v8, p2, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedMobile:J

    if-eqz p1, :cond_4

    iget-wide v10, p1, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedMobile:J

    goto :goto_3

    :cond_4
    move-wide v10, v2

    :goto_3
    sub-long/2addr v8, v10

    .line 3728
    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->prevTrafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

    cmp-long p1, v0, v2

    const/4 p2, 0x1

    const/4 v10, 0x0

    if-lez p1, :cond_5

    .line 3730
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-virtual {p1, p2, v10, v0, v1}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    :cond_5
    cmp-long p1, v4, v2

    if-lez p1, :cond_6

    .line 3733
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-virtual {p1, p2, v10, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    :cond_6
    cmp-long p1, v6, v2

    const/4 p2, 0x2

    if-lez p1, :cond_8

    .line 3736
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, p2

    goto :goto_4

    :cond_7
    move v0, v10

    :goto_4
    invoke-virtual {p1, v0, v10, v6, v7}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    :cond_8
    cmp-long p1, v8, v2

    if-lez p1, :cond_a

    .line 3739
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move p2, v10

    :goto_5
    invoke-virtual {p1, p2, v10, v8, v9}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    :cond_a
    return-void
.end method


# virtual methods
.method public acceptIncomingCall()V
    .locals 4

    .line 3256
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController;->ignoreSetOnline:Z

    .line 3257
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 3258
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 3259
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->configureDeviceForCall()V

    .line 3260
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startConnectingSound()V

    const/16 v0, 0xc

    .line 3261
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 3262
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda62;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda62;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3263
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 3264
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    const/16 v2, 0x100

    .line 3265
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 3266
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getLastSecretVersion()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 3267
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda94;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda94;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public addRemoteSink(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;
    .locals 4

    .line 1276
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    if-eqz p2, :cond_1

    .line 1279
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_2

    return-object v2

    .line 1283
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    if-eqz v2, :cond_3

    .line 1284
    invoke-static {v2}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->access$2300(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)Lorg/webrtc/VideoSink;

    move-result-object v3

    if-ne v3, p3, :cond_3

    return-object v2

    :cond_3
    if-nez v2, :cond_4

    .line 1288
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->proxyVideoSinkLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    :cond_4
    if-nez v2, :cond_5

    .line 1291
    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    invoke-direct {v2}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;-><init>()V

    :cond_5
    if-eqz p3, :cond_6

    .line 1294
    invoke-virtual {v2, p3}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    :cond_6
    if-eqz p4, :cond_7

    .line 1297
    invoke-virtual {v2, p4}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setBackground(Lorg/webrtc/VideoSink;)V

    .line 1299
    :cond_7
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    invoke-virtual {p3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
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

    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->access$1902(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;J)J

    return-object v2
.end method

.method callFailedFromConnectionService()V
    .locals 1

    .line 4287
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_0

    const-string v0, "ERROR_CONNECTION_SERVICE"

    .line 4288
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 4290
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    :goto_0
    return-void
.end method

.method public checkVideoFrame(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 543
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 547
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasPresentationFrame:I

    if-nez v1, :cond_3

    :cond_2
    if-nez p2, :cond_4

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasCameraFrame:I

    if-eqz v1, :cond_4

    :cond_3
    return-void

    .line 551
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

    .line 559
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 560
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_6

    .line 562
    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasPresentationFrame:I

    goto :goto_1

    .line 564
    :cond_6
    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasCameraFrame:I

    :goto_1
    return-void

    :cond_7
    if-eqz p2, :cond_8

    .line 569
    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasPresentationFrame:I

    goto :goto_2

    .line 571
    :cond_8
    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasCameraFrame:I

    .line 573
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$5;

    invoke-direct {v1, p0, v0, p2}, Lorg/telegram/messenger/voip/VoIPService$5;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->addRemoteSink(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZLorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    return-void

    :cond_9
    :goto_3
    const/4 v0, 0x2

    if-eqz p2, :cond_a

    .line 553
    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasPresentationFrame:I

    goto :goto_4

    .line 555
    :cond_a
    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->hasCameraFrame:I

    :goto_4
    return-void
.end method

.method public clearCamera()V
    .locals 3

    .line 1189
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 1190
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->clearVideoCapturer()V

    :cond_0
    return-void
.end method

.method public clearRemoteSinks()V
    .locals 1

    .line 604
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->proxyVideoSinkLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public createCaptureDevice(Z)V
    .locals 9

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1129
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    .line 1131
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 1132
    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->isPrivateScreencast:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 1133
    invoke-virtual {p0, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 1135
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isPrivateScreencast:Z

    .line 1136
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v2, v3

    if-eqz v4, :cond_2

    .line 1137
    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/NativeInstance;->clearVideoCapturer()V

    :cond_2
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    .line 1141
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v6, :cond_4

    .line 1142
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v7, v6, p1

    cmp-long v4, v7, v4

    if-eqz v4, :cond_3

    return-void

    .line 1145
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v4, v4, p1

    invoke-static {v4, v1}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v4

    aput-wide v4, v6, p1

    .line 1146
    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    .line 1147
    invoke-virtual {p0, v2, v0}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 1148
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->groupCallScreencastStateChanged:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1150
    :cond_4
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->requestVideoCall(Z)V

    .line 1151
    invoke-virtual {p0, v2, v0}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 1152
    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1153
    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/VoIPFragment;->onScreenCastStart()V

    goto :goto_1

    .line 1157
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v2, v0, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v2, v2, p1

    if-nez v2, :cond_8

    .line 1158
    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v3, v2, p1

    if-eqz v3, :cond_7

    aget-wide v6, v0, p1

    cmp-long v3, v6, v4

    if-eqz v3, :cond_7

    .line 1159
    aget-object v2, v2, p1

    aget-wide v6, v0, p1

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/voip/NativeInstance;->activateVideoCapturer(J)V

    .line 1161
    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v2, v0, p1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    return-void

    .line 1165
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

    .line 3415
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    return-void
.end method

.method public declineIncomingCall(ILjava/lang/Runnable;)V
    .locals 6

    .line 3341
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    .line 3342
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopScreenCapture()V

    .line 3344
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 3345
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->callDiscardReason:I

    .line 3346
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xe

    const/16 v2, 0xa

    if-ne v0, v1, :cond_2

    .line 3347
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 3348
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3349
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    goto :goto_0

    .line 3351
    :cond_1
    invoke-direct {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    const/4 p1, 0x1

    .line 3352
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    .line 3353
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void

    :cond_2
    if-eq v0, v2, :cond_a

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    goto/16 :goto_3

    .line 3364
    :cond_3
    invoke-direct {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 3365
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 3366
    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    .line 3367
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    .line 3368
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    if-eqz p1, :cond_4

    .line 3369
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3370
    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    :cond_4
    return-void

    .line 3374
    :cond_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;-><init>()V

    .line 3375
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 3376
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 3377
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 3378
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->duration:I

    .line 3379
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v3, v2, v1

    if-eqz v3, :cond_6

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/NativeInstance;->getPreferredRelayId()J

    move-result-wide v1

    goto :goto_1

    :cond_6
    const-wide/16 v1, 0x0

    :goto_1
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->connection_id:J

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v2, 0x3

    if-eq p1, v2, :cond_8

    const/4 v2, 0x4

    if-eq p1, v2, :cond_7

    .line 3392
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_2

    .line 3388
    :cond_7
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_2

    .line 3385
    :cond_8
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_2

    .line 3382
    :cond_9
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 3395
    :goto_2
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda82;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda82;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 3410
    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    .line 3411
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    :cond_a
    :goto_3
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 4521
    sget p2, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, p2, :cond_0

    .line 4522
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    :cond_0
    return-void
.end method

.method public editCallMember(Lorg/telegram/tgnet/TLObject;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 7

    if-eqz p1, :cond_a

    .line 2667
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2670
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;-><init>()V

    .line 2671
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 2672
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$User;

    const-string v2, " access_hash = "

    const-string v3, "edit group call part id = "

    if-eqz v1, :cond_2

    .line 2673
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 2674
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v1, :cond_1

    .line 2675
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 2677
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2678
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    .line 2679
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

    .line 2682
    :cond_2
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_4

    .line 2683
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2684
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2685
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    .line 2686
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

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

    .line 2690
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->muted:Z

    .line 2691
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    :cond_5
    if-eqz p4, :cond_6

    .line 2694
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->volume:I

    .line 2695
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    :cond_6
    if-eqz p5, :cond_7

    .line 2698
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->raise_hand:Z

    .line 2699
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    :cond_7
    if-eqz p3, :cond_8

    .line 2702
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->video_stopped:Z

    .line 2703
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    .line 2705
    :cond_8
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_9

    .line 2706
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "edit group call flags = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2708
    :cond_9
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    .line 2709
    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda91;

    invoke-direct {p3, p0, p1, p6}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda91;-><init>(Lorg/telegram/messenger/voip/VoIPService;ILjava/lang/Runnable;)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_a
    :goto_2
    return-void
.end method

.method public forceRating()V
    .locals 1

    const/4 v0, 0x1

    .line 2570
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->forceRating:Z

    return-void
.end method

.method public getAccount()I
    .locals 1

    .line 4516
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    return v0
.end method

.method public getCallDuration()J
    .locals 4

    .line 2940
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 2943
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getCallID()J
    .locals 2

    .line 3240
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

    .line 3963
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    return v0
.end method

.method public getCallerId()J
    .locals 2

    .line 878
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 879
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    return-wide v0

    .line 881
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    return-wide v0
.end method

.method public getChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    .line 859
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getConnectionAndStartCall()Lorg/telegram/messenger/voip/VoIPService$CallConnection;
    .locals 4

    .line 3424
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-nez v0, :cond_2

    .line 3425
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "creating call connection"

    .line 3426
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3428
    :cond_0
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$CallConnection;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    .line 3429
    invoke-virtual {v0}, Landroid/telecom/Connection;->setInitializing()V

    .line 3430
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_1

    .line 3431
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    .line 3435
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3437
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

    const-string/jumbo v3, "tel"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Connection;->setAddress(Landroid/net/Uri;I)V

    .line 3438
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Connection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 3440
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    return-object v0
.end method

.method public getCurrentAudioRoute()I
    .locals 5

    .line 2907
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    .line 2908
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2909
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

    .line 2919
    :cond_3
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    return v0

    .line 2921
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    if-eqz v0, :cond_7

    const-string v0, "audio"

    .line 2922
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2923
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v4

    .line 2924
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    .line 2926
    :cond_5
    invoke-virtual {v4}, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    return v1

    .line 2932
    :cond_7
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    return v0
.end method

.method public getDebugString()Ljava/lang/String;
    .locals 3

    .line 2936
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

    .line 1616
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    return-object v0
.end method

.method public getGA()[B
    .locals 1

    .line 2566
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    return-object v0
.end method

.method public getGroupCallBottomSheetLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 474
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallBottomSheetLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public getGroupCallPeer()Lorg/telegram/tgnet/TLRPC$InputPeer;
    .locals 1

    .line 3967
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-object v0
.end method

.method public getLastError()Ljava/lang/String;
    .locals 1

    .line 3959
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteAudioState()I
    .locals 1

    .line 4538
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteAudioState:I

    return v0
.end method

.method public getRemoteVideoState()I
    .locals 1

    .line 4542
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    return v0
.end method

.method public getSelfId()J
    .locals 2

    .line 1373
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-nez v0, :cond_0

    .line 1374
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    return-wide v0

    .line 1376
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    if-eqz v1, :cond_1

    .line 1377
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    return-wide v0

    .line 1378
    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v1, :cond_2

    .line 1379
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    neg-long v0, v0

    return-wide v0

    .line 1381
    :cond_2
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    neg-long v0, v0

    return-wide v0
.end method

.method public getUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 855
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getVideoState(Z)I
    .locals 1

    .line 1245
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget p1, v0, p1

    return p1
.end method

.method public handleNotificationAction(Landroid/content/Intent;)V
    .locals 3

    .line 4463
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

    .line 4464
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 4465
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    goto :goto_0

    .line 4466
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

    .line 4467
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 4468
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 4469
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

    .line 4470
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCallFromNotification()V

    :cond_2
    :goto_0
    return-void
.end method

.method public hangUp()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3244
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(ILjava/lang/Runnable;)V

    return-void
.end method

.method public hangUp(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3248
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(ILjava/lang/Runnable;)V

    return-void
.end method

.method public hangUp(ILjava/lang/Runnable;)V
    .locals 6

    .line 886
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
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, p2}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    .line 887
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    if-ne p1, v2, :cond_4

    .line 892
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 894
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v4, -0x200001

    and-int/2addr v3, v4

    iput v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/4 v3, 0x0

    .line 895
    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 896
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

    .line 898
    :cond_3
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phone_discardGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phone_discardGroupCall;-><init>()V

    .line 899
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_discardGroupCall;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 900
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda88;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda88;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2

    .line 907
    :cond_4
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phone_leaveGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phone_leaveGroupCall;-><init>()V

    .line 908
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_leaveGroupCall;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 909
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget p2, p2, v0

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_phone_leaveGroupCall;->source:I

    .line 910
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda87;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda87;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public hangUp(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 3252
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(ILjava/lang/Runnable;)V

    return-void
.end method

.method public hasEarpiece()Z
    .locals 7

    .line 2584
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2585
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2586
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    const-string/jumbo v0, "phone"

    .line 2590
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 2593
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 2594
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    :try_start_0
    const-string v0, "audio"

    .line 2599
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2600
    const-class v3, Landroid/media/AudioManager;

    const-string v4, "getDevicesForStream"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2601
    const-class v4, Landroid/media/AudioManager;

    const-string v5, "DEVICE_OUT_EARPIECE"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    .line 2602
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 2603
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

    .line 2607
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    goto :goto_0

    .line 2609
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2612
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_5

    const-string v1, "Error while checking earpiece! "

    .line 2613
    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2615
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    .line 2618
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasRate()Z
    .locals 1

    .line 3541
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needRateCall:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->forceRating:Z

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

.method public hasVideoCapturer()Z
    .locals 6

    .line 539
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

    .line 3900
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3901
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

    .line 3903
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    return v0
.end method

.method public isBluetoothOn()Z
    .locals 1

    const-string v0, "audio"

    .line 4374
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4375
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    return v0
.end method

.method public isBluetoothWillOn()Z
    .locals 1

    .line 4379
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    return v0
.end method

.method public isFrontFaceCamera()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    return v0
.end method

.method public isFullscreen(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)Z
    .locals 1

    .line 1348
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

    .line 1362
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

    .line 4383
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    return v0
.end method

.method public isJoined()Z
    .locals 3

    .line 1092
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

    .line 2724
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    return v0
.end method

.method public isOutgoing()Z
    .locals 1

    .line 4459
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    return v0
.end method

.method public isScreencast()Z
    .locals 1

    .line 482
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isPrivateScreencast:Z

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 4

    .line 2895
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2896
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    .line 2897
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
    move v2, v3

    :goto_0
    return v2

    .line 2898
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    const-string v0, "audio"

    .line 2899
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2900
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v1

    .line 2901
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn()Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    :goto_1
    return v0

    .line 2903
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    return v0
.end method

.method public isSwitchingCamera()Z
    .locals 1

    .line 1120
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingCamera:Z

    return v0
.end method

.method public isSwitchingStream()Z
    .locals 1

    .line 2319
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    return v0
.end method

.method public isVideoAvailable()Z
    .locals 1

    .line 2547
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    return v0
.end method

.method public migrateToChat(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 1682
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method

.method public mutedByAdmin()Z
    .locals 3

    .line 518
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v1

    .line 521
    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v0, :cond_0

    .line 522
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

    .line 3908
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->hasAudioFocus:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3910
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

    .line 1465
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    return-void

    .line 1468
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez v0, :cond_1

    .line 1469
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 1475
    :cond_2
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 1476
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_3

    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallUpdated called with wrong call id (got "

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

    .line 1481
    :cond_4
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 1482
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    .line 1484
    :cond_5
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_6

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1487
    :cond_6
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 1488
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 1489
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->need_debug:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    .line 1490
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->need_rating:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needRateCall:Z

    .line 1491
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_7

    const-string v0, "call discarded, stopping service"

    .line 1492
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1494
    :cond_7
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    if-eqz p1, :cond_8

    const/16 p1, 0x11

    .line 1495
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1496
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    .line 1497
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1498
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->afterSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x5dc

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1499
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->endConnectionServiceCall(J)V

    .line 1500
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_2

    .line 1502
    :cond_8
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    goto/16 :goto_2

    .line 1504
    :cond_9
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    if-nez v0, :cond_15

    .line 1505
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    if-nez v0, :cond_b

    .line 1506
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_a

    const-string/jumbo p1, "stopping VoIP service, Ga == null"

    .line 1507
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1509
    :cond_a
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1512
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

    .line 1513
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_c

    const-string/jumbo p1, "stopping VoIP service, Ga hash doesn\'t match"

    .line 1514
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1516
    :cond_c
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1519
    :cond_d
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    .line 1520
    new-instance v0, Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1521
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1523
    invoke-static {v0, v2}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1524
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_e

    const-string/jumbo p1, "stopping VoIP service, bad Ga and Gb (accepting)"

    .line 1525
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1527
    :cond_e
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1530
    :cond_f
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    invoke-direct {v3, v1, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1532
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1533
    array-length v1, v0

    const/16 v2, 0x100

    if-le v1, v2, :cond_11

    new-array v1, v2, [B

    .line 1535
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    move-object v0, v1

    goto :goto_1

    .line 1537
    :cond_11
    array-length v1, v0

    if-ge v1, v2, :cond_12

    new-array v1, v2, [B

    .line 1539
    array-length v3, v0

    rsub-int v3, v3, 0x100

    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v5

    .line 1540
    :goto_0
    array-length v4, v0

    rsub-int v4, v4, 0x100

    if-ge v3, v4, :cond_10

    .line 1541
    aput-byte v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1545
    :cond_12
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v1

    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 1547
    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-static {v1, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1548
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    .line 1549
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    .line 1551
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->key_fingerprint:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_14

    .line 1552
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_13

    const-string/jumbo p1, "key fingerprints don\'t match"

    .line 1553
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1555
    :cond_13
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1559
    :cond_14
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->initiateActualEncryptedCall()V

    goto :goto_2

    .line 1560
    :cond_15
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    if-nez v0, :cond_16

    .line 1561
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->processAcceptedCall()V

    goto :goto_2

    .line 1563
    :cond_16
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1a

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->receive_date:I

    if-eqz p1, :cond_1a

    const/16 p1, 0x10

    .line 1564
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1565
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_17

    const-string p1, "!!!!!! CALL RECEIVED"

    .line 1566
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1568
    :cond_17
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 1569
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1570
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    .line 1572
    :cond_18
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1578
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_19

    .line 1579
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1580
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 1582
    :cond_19
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda35;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 1586
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

    .line 2643
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2644
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 2645
    invoke-interface {v1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onCameraFirstFrameAvailable()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConnectionStateChanged(IZ)V
    .locals 0

    .line 4296
    new-instance p2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda39;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 3580
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 3581
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    const-string v1, "=============== VoIPService STARTING ==============="

    .line 3582
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v1, "audio"

    .line 3585
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3586
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3587
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3588
    invoke-static {v0}, Lorg/telegram/messenger/voip/Instance;->setBufferSize(I)V

    goto :goto_0

    :cond_1
    const v0, 0xbb80

    const/4 v2, 0x4

    const/4 v3, 0x2

    .line 3590
    invoke-static {v0, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    div-int/2addr v0, v3

    invoke-static {v0}, Lorg/telegram/messenger/voip/Instance;->setBufferSize(I)V

    :goto_0
    const-string/jumbo v0, "power"

    .line 3593
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string/jumbo v3, "telegram-voip"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->cpuWakelock:Landroid/os/PowerManager$WakeLock;

    .line 3594
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3596
    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3598
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3599
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3600
    sget-boolean v3, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.HEADSET_PLUG"

    .line 3601
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3602
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_3

    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 3603
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 3604
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    const-string v3, "android.intent.action.PHONE_STATE"

    .line 3606
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    .line 3607
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 3608
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3610
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3611
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->fetchBluetoothDeviceName()V

    .line 3613
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_5

    .line 3615
    :try_start_1
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$8;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 3628
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3629
    iput-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 3632
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-eqz v0, :cond_6

    .line 3633
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 3635
    :cond_6
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lorg/telegram/messenger/voip/VoIPMediaButtonReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3637
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->checkUpdateBluetoothHeadset()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 3639
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_7

    const-string v1, "error initializing voip controller"

    .line 3640
    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3642
    :cond_7
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    .line 3644
    :goto_3
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v0, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_a

    .line 3645
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    .line 3646
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lorg/telegram/messenger/R$string;->VoipOutgoingCall:I

    const-string v2, "VoipOutgoingCall"

    .line 3647
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 3648
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3649
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_9

    .line 3650
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Lorg/telegram/messenger/R$drawable;->voicechat_muted:I

    goto :goto_4

    :cond_8
    sget v1, Lorg/telegram/messenger/R$drawable;->voicechat_active:I

    :goto_4
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_5

    .line 3652
    :cond_9
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_call:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_5
    const/16 v1, 0xc9

    .line 3654
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_a
    return-void
.end method

.method public onDestroy()V
    .locals 11

    .line 3094
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "=============== VoIPService STOPPING ==============="

    .line 3095
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 3097
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 3098
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 3099
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    .line 3100
    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez v1, :cond_2

    .line 3101
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iput-boolean v2, v1, Lorg/telegram/messenger/MessagesController;->ignoreSetOnline:Z

    .line 3103
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v1, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_3
    const-string/jumbo v1, "sensor"

    .line 3105
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    .line 3106
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3108
    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3110
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3112
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3115
    :catch_0
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 3116
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 3117
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    .line 3119
    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    .line 3120
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3121
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    .line 3123
    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3124
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3125
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3126
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 3128
    :cond_8
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 3129
    sput-object v3, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    .line 3130
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 3131
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->cancelGroupCheckShortPoll()V

    .line 3132
    sget-object v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda63;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda63;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3133
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v1, v2

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_b

    .line 3134
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v7, v7

    rem-int/lit8 v7, v7, 0x5

    invoke-virtual {v1, v6, v7}, Lorg/telegram/messenger/StatsController;->incrementTotalCallsTime(II)V

    .line 3135
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->onTgVoipPreStop()V

    .line 3136
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/NativeInstance;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3137
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v1, v2

    .line 3138
    sget-object v6, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda5;

    invoke-direct {v7, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/voip/NativeInstance;)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3139
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

    .line 3140
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

    .line 3142
    :cond_9
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    .line 3144
    :cond_a
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/NativeInstance;->stop()Lorg/telegram/messenger/voip/Instance$FinalState;

    move-result-object v1

    .line 3145
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v6, v6, v2

    iget-object v7, v1, Lorg/telegram/messenger/voip/Instance$FinalState;->trafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

    invoke-direct {p0, v6, v7}, Lorg/telegram/messenger/voip/VoIPService;->updateTrafficStats(Lorg/telegram/messenger/voip/NativeInstance;Lorg/telegram/messenger/voip/Instance$TrafficStats;)V

    .line 3146
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->onTgVoipStop(Lorg/telegram/messenger/voip/Instance$FinalState;)V

    .line 3148
    :goto_1
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->prevTrafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

    .line 3149
    iput-wide v4, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    .line 3150
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aput-object v3, v1, v2

    .line 3151
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->destroyInstance()V

    .line 3153
    :cond_b
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v6, v1, v0

    if-eqz v6, :cond_c

    .line 3154
    aget-object v1, v1, v0

    .line 3155
    sget-object v6, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda5;

    invoke-direct {v7, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/voip/NativeInstance;)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3156
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aput-object v3, v1, v0

    :cond_c
    move v1, v2

    .line 3158
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    array-length v7, v6

    if-ge v1, v7, :cond_f

    .line 3159
    aget-wide v7, v6, v1

    cmp-long v7, v7, v4

    if-eqz v7, :cond_e

    .line 3160
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_d

    .line 3161
    aget-wide v7, v6, v1

    invoke-static {v7, v8}, Lorg/telegram/messenger/voip/NativeInstance;->destroyVideoCapturer(J)V

    .line 3163
    :cond_d
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aput-wide v4, v6, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3166
    :cond_f
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->cpuWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v1, "audio"

    .line 3167
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3168
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    if-nez v4, :cond_15

    .line 3169
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v4

    .line 3170
    sget-boolean v5, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-nez v5, :cond_13

    .line 3171
    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-nez v5, :cond_10

    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez v5, :cond_10

    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    if-eqz v5, :cond_11

    .line 3172
    :cond_10
    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 3173
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3174
    invoke-virtual {v4, v2}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    .line 3175
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    .line 3176
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    .line 3178
    :cond_11
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    if-nez v4, :cond_12

    .line 3179
    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda3;-><init>(Landroid/media/AudioManager;)V

    sput-object v5, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3195
    :cond_12
    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 3198
    :cond_13
    :try_start_1
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lorg/telegram/messenger/voip/VoIPMediaButtonReceiver;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    .line 3200
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3202
    :goto_3
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-eqz v4, :cond_14

    .line 3203
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 3206
    :cond_14
    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda22;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3212
    :cond_15
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->hasAudioFocus:Z

    if-eqz v4, :cond_16

    .line 3213
    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 3216
    :cond_16
    sget-boolean v1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v1, :cond_18

    .line 3217
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->didDeleteConnectionServiceContact:Z

    if-nez v1, :cond_17

    .line 3218
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->deleteConnectionServiceContact()V

    .line 3220
    :cond_17
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v1, :cond_18

    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    if-nez v4, :cond_18

    .line 3221
    invoke-virtual {v1}, Landroid/telecom/Connection;->destroy()V

    .line 3225
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lorg/telegram/ui/Components/voip/VoIPHelper;->lastCallTime:J

    .line 3227
    invoke-virtual {p0, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->setSinks(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V

    .line 3228
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_19

    .line 3229
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3231
    :cond_19
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    if-ltz v1, :cond_1a

    .line 3232
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 3233
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3234
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->classGuid:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->startShortPoll(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    :cond_1a
    return-void
.end method

.method public onGroupCallParticipantsUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;)V
    .locals 11

    .line 1386
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1389
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v0

    .line 1390
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_9

    .line 1391
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1392
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->left:Z

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    .line 1393
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    if-eqz v5, :cond_8

    .line 1394
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v6, v6, v3

    if-ne v5, v6, :cond_8

    move v5, v3

    move v6, v5

    :goto_1
    if-ge v5, v2, :cond_3

    .line 1397
    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 1398
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

    .line 1403
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void

    .line 1408
    :cond_4
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    cmp-long v6, v9, v0

    if-nez v6, :cond_8

    .line 1409
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v10, v9, v3

    if-eq v6, v10, :cond_6

    aget v9, v9, v3

    if-eqz v9, :cond_6

    if-eqz v6, :cond_6

    .line 1410
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_5

    .line 1411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "source mismatch my = "

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

    .line 1413
    :cond_5
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void

    .line 1415
    :cond_6
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPService;->currentGroupModeStreaming:Z

    if-eqz v6, :cond_7

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-eqz v6, :cond_7

    .line 1416
    iput-boolean v8, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    .line 1417
    invoke-direct {p0, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    .line 1419
    :cond_7
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v5, :cond_8

    .line 1420
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

    .line 1427
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_0

    return-void

    .line 1430
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_2

    .line 1433
    :cond_1
    instance-of p1, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallDiscarded;

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 1434
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void

    .line 1438
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1440
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "stream"

    .line 1441
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1443
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    move p1, v1

    .line 1446
    :goto_0
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentGroupModeStreaming:Z

    if-eq p1, v2, :cond_8

    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    if-eqz v2, :cond_8

    .line 1447
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->currentGroupModeStreaming:Z

    if-eq p1, v4, :cond_5

    .line 1448
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    .line 1450
    :cond_5
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentGroupModeStreaming:Z

    if-eqz p1, :cond_7

    .line 1453
    :try_start_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p1, p1, v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v2, :cond_6

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v2, :cond_6

    move v1, v3

    :cond_6
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/voip/NativeInstance;->prepareForStream(Z)V

    goto :goto_1

    .line 1455
    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p1, p1, v1

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/voip/NativeInstance;->setJoinResponsePayload(Ljava/lang/String;)V

    .line 1457
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1459
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    return-void
.end method

.method onMediaButtonEvent(Landroid/view/KeyEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2554
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

    .line 2555
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2556
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xf

    if-ne p1, v1, :cond_2

    .line 2557
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    goto :goto_0

    .line 2559
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
    .locals 4

    .line 3854
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastSensorEvent:Landroid/hardware/SensorEvent;

    .line 3855
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->unmutedByHold:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 3858
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const-string v0, "audio"

    .line 3859
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3860
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v1

    .line 3861
    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3864
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

    const/4 v0, 0x1

    if-gez p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v2

    .line 3865
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->checkIsNear(Z)V

    .line 3866
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->nearEarEvent:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    nop

    :cond_3
    :goto_1
    return-void
.end method

.method public onSignalBarCountChanged(I)V
    .locals 1

    .line 4364
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSignalingData(Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCallSignalingData;)V
    .locals 6

    .line 1366
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

    .line 1369
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

    .line 2533
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez v0, :cond_0

    return-void

    .line 2536
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_sendSignalingData;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_sendSignalingData;-><init>()V

    .line 2537
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_sendSignalingData;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 2538
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 2539
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 2540
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_sendSignalingData;->data:[B

    .line 2541
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    sget-object v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda99;->INSTANCE:Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda99;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 691
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 692
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "Tried to start the VoIP service when it\'s already started"

    .line 693
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    return v3

    :cond_1
    const-string v0, "account"

    const/4 v4, -0x1

    .line 698
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    if-eq v0, v4, :cond_1b

    .line 702
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/voip/VoIPService;->classGuid:I

    const-string/jumbo v0, "user_id"

    const-wide/16 v4, 0x0

    .line 703
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "chat_id"

    .line 704
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v0, "createGroupCall"

    const/4 v10, 0x0

    .line 705
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->createGroupCall:Z

    const-string v0, "hasFewPeers"

    .line 706
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->hasFewPeers:Z

    const-string v0, "hash"

    .line 707
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    const-string/jumbo v0, "peerChannelId"

    .line 708
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string/jumbo v0, "peerChatId"

    .line 709
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const-string/jumbo v0, "peerUserId"

    move-wide v15, v11

    .line 710
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v0, v13, v4

    if-eqz v0, :cond_2

    .line 712
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 713
    iput-wide v13, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    const-string/jumbo v10, "peerAccessHash"

    .line 714
    invoke-virtual {v2, v10, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_0

    :cond_2
    cmp-long v0, v15, v4

    if-eqz v0, :cond_3

    .line 716
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-wide v10, v15

    .line 717
    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    const-string/jumbo v10, "peerAccessHash"

    .line 718
    invoke-virtual {v2, v10, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_0

    :cond_3
    cmp-long v0, v10, v4

    if-eqz v0, :cond_4

    .line 720
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 721
    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    const-string/jumbo v10, "peerAccessHash"

    .line 722
    invoke-virtual {v2, v10, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    :cond_4
    :goto_0
    const-string/jumbo v0, "scheduleDate"

    const/4 v10, 0x0

    .line 724
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/voip/VoIPService;->scheduleDate:I

    const-string/jumbo v0, "is_outgoing"

    .line 726
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    const-string/jumbo v0, "video_call"

    .line 727
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    const-string v0, "can_video_call"

    .line 728
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    const-string/jumbo v0, "notifications_disabled"

    .line 729
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->notificationsDisabled:Z

    cmp-long v0, v6, v4

    if-eqz v0, :cond_5

    .line 731
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    :cond_5
    cmp-long v4, v8, v4

    if-eqz v4, :cond_6

    .line 734
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 735
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 736
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v5, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v6, v1, Lorg/telegram/messenger/voip/VoIPService;->classGuid:I

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->startShortPoll(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    .line 739
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->loadResources()V

    const/4 v0, 0x0

    .line 740
    :goto_1
    iget-object v5, v1, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    array-length v6, v5

    if-ge v0, v6, :cond_7

    .line 741
    new-instance v6, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    invoke-direct {v6}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;-><init>()V

    aput-object v6, v5, v0

    .line 742
    iget-object v5, v1, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    new-instance v6, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    invoke-direct {v6}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;-><init>()V

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :try_start_0
    const-string v0, "audio"

    .line 745
    invoke-virtual {v1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 746
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 748
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 750
    :goto_2
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->createGroupCall:Z

    if-nez v0, :cond_8

    .line 751
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v5, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-nez v0, :cond_8

    .line 753
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

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    return v3

    .line 759
    :cond_8
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_c

    .line 760
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v0, v5, :cond_a

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {v1, v0}, Landroid/app/Service;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    .line 768
    :cond_9
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    const/4 v5, 0x0

    aput v10, v0, v5

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v5, 0x0

    .line 761
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    iget-object v6, v1, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v6, v6, v5

    iget-boolean v7, v1, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    invoke-static {v6, v7}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v6

    aput-wide v6, v0, v5

    if-eqz v4, :cond_b

    .line 763
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v10, v0, v5

    goto :goto_4

    .line 765
    :cond_b
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v3, v0, v5

    .line 770
    :goto_4
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-nez v0, :cond_c

    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v0, :cond_c

    .line 771
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    .line 775
    :cond_c
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_e

    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_e

    .line 776
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_d

    const-string v0, "VoIPService: user == null AND chat == null"

    .line 777
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 779
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    return v3

    .line 782
    :cond_e
    sput-object v1, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    .line 783
    sget-object v4, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    monitor-enter v4

    .line 784
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    const/4 v5, 0x0

    if-eqz v0, :cond_f

    .line 785
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v6, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 786
    sput-object v5, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    .line 788
    :cond_f
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_15

    .line 791
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_11

    const/16 v0, 0xe

    .line 792
    invoke-direct {v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 793
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "telecom"

    .line 794
    invoke-virtual {v1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 795
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 796
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 797
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->addAccountToTelecomManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v7, "call_type"

    .line 798
    invoke-virtual {v6, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    .line 799
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 800
    iget v6, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    iget-object v7, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v10, v7}, Lorg/telegram/messenger/ContactsController;->createOrUpdateConnectionServiceContact(JLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "tel"

    .line 801
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

    .line 803
    :cond_10
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda36;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    .line 807
    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_5
    const/4 v4, 0x0

    goto :goto_6

    .line 810
    :cond_11
    iput-boolean v10, v1, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    const/4 v4, 0x0

    .line 811
    invoke-direct {v1, v4, v5, v4}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCall(ILjava/lang/String;Z)V

    .line 812
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-nez v0, :cond_12

    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v0, :cond_12

    .line 813
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    :cond_12
    :goto_6
    const-string/jumbo v0, "start_incall_activity"

    .line 816
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 817
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_13

    const-string/jumbo v2, "voip"

    goto :goto_7

    :cond_13
    const-string/jumbo v2, "voip_chat"

    :goto_7
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 818
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_14

    const-string v2, "currentAccount"

    .line 819
    iget v4, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 821
    :cond_14
    invoke-virtual {v1, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 824
    :cond_15
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 825
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v0, :cond_16

    .line 826
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-eqz v0, :cond_16

    move v0, v10

    goto :goto_8

    :cond_16
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    if-eqz v0, :cond_17

    .line 828
    iput-boolean v10, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    :cond_17
    if-eqz v0, :cond_18

    .line 830
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-nez v0, :cond_18

    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v0, :cond_18

    const/4 v2, 0x0

    .line 831
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    goto :goto_9

    :cond_18
    const/4 v2, 0x0

    .line 833
    :goto_9
    sput-object v5, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 834
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_19

    .line 835
    invoke-direct {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->acknowledgeCall(Z)V

    .line 836
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    goto :goto_a

    .line 838
    :cond_19
    invoke-direct {v1, v10}, Lorg/telegram/messenger/voip/VoIPService;->acknowledgeCall(Z)V

    .line 841
    :cond_1a
    :goto_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->initializeAccountRelatedThings()V

    .line 842
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda33;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return v3

    :catchall_0
    move-exception v0

    .line 788
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 700
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No account specified when starting VoIP service"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public playAllowTalkSound()V
    .locals 2

    .line 4359
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playConnectedSound()V
    .locals 2

    .line 2499
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 2500
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    return-void
.end method

.method public playStartRecordSound()V
    .locals 2

    .line 4355
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V
    .locals 1

    .line 2650
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2653
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2654
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    if-eqz v0, :cond_1

    .line 2655
    invoke-interface {p1, v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onStateChanged(I)V

    .line 2657
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->signalBarCount:I

    if-eqz v0, :cond_2

    .line 2658
    invoke-interface {p1, v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onSignalBarsCountChanged(I)V

    :cond_2
    return-void
.end method

.method public removeRemoteSink(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1335
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    if-eqz p1, :cond_1

    .line 1337
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, v0

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->access$1900(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->removeIncomingVideoOutput(J)V

    goto :goto_0

    .line 1340
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->videoEndpoint:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    if-eqz p1, :cond_1

    .line 1342
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, v0

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->access$1900(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->removeIncomingVideoOutput(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestFullScreen(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;ZZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1322
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

    .line 1327
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, p3

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoEndpointQuality(Ljava/lang/String;I)V

    goto :goto_1

    .line 1329
    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, p3

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoEndpointQuality(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public requestVideoCall(Z)V
    .locals 7

    .line 1096
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1099
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v3, v2, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 1100
    aget-object v0, v0, v1

    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setupOutgoingVideoCreated(J)V

    .line 1101
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aput-boolean v1, v0, v1

    goto :goto_1

    .line 1103
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

    .line 1105
    :goto_1
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isPrivateScreencast:Z

    return-void
.end method

.method public sendCallRating(I)V
    .locals 7

    .line 1612
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iget v5, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    move v6, p1

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/voip/VoIPHelper;->sendCallRating(JJII)V

    return-void
.end method

.method public setAudioOutput(I)V
    .locals 7

    .line 2816
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAudioOutput "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const-string v0, "audio"

    .line 2819
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2820
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v1

    .line 2821
    sget-boolean v2, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v5, :cond_4

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    goto/16 :goto_2

    .line 2824
    :cond_1
    invoke-virtual {v5, v3}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto/16 :goto_2

    :cond_2
    const/4 p1, 0x5

    .line 2827
    invoke-virtual {v5, p1}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto/16 :goto_2

    :cond_3
    const/16 p1, 0x8

    .line 2830
    invoke-virtual {v5, p1}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto/16 :goto_2

    .line 2833
    :cond_4
    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_d

    if-nez v2, :cond_d

    if-eqz p1, :cond_a

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_5

    goto :goto_1

    .line 2836
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez p1, :cond_6

    .line 2837
    iput-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 2839
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2841
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2844
    :cond_6
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2845
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    .line 2847
    :goto_0
    iput v3, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    goto :goto_1

    .line 2850
    :cond_7
    iput-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 2851
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    if-eqz p1, :cond_9

    .line 2852
    :cond_8
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 2853
    iput-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    .line 2854
    iput-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    .line 2856
    :cond_9
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    .line 2857
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2858
    iput v6, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    goto :goto_1

    .line 2861
    :cond_a
    iput-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 2862
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    if-eqz p1, :cond_c

    .line 2863
    :cond_b
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 2864
    iput-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    .line 2865
    iput-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    .line 2867
    :cond_c
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2868
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    .line 2869
    iput v4, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 2872
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateOutputGainControlState()V

    goto :goto_2

    :cond_d
    if-eqz p1, :cond_10

    if-eq p1, v4, :cond_f

    if-eq p1, v3, :cond_e

    goto :goto_2

    .line 2876
    :cond_e
    iput v3, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 2877
    iput-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    goto :goto_2

    .line 2880
    :cond_f
    iput v6, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 2881
    iput-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    goto :goto_2

    .line 2884
    :cond_10
    iput v4, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 2885
    iput-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    .line 2889
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

    .line 2890
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

    .line 609
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 611
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 613
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBackgroundSinks(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V
    .locals 2

    .line 1352
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setBackground(Lorg/webrtc/VideoSink;)V

    .line 1353
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setBackground(Lorg/webrtc/VideoSink;)V

    return-void
.end method

.method public setGroupCallHash(Ljava/lang/String;)V
    .locals 1

    .line 870
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

    .line 873
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    const/4 p1, 0x0

    .line 874
    invoke-direct {p0, p1, p1}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setGroupCallPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 2

    .line 1686
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_0

    return-void

    .line 1689
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1690
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ChatObject$Call;->setSelfPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 1691
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-wide v0, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1693
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_2

    .line 1695
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v0, :cond_1

    .line 1696
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 1698
    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 1701
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v0, :cond_3

    .line 1702
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 1704
    :cond_3
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    :cond_4
    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1708
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    .line 1709
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget p1, p1, v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 1710
    invoke-direct {p0, v0, v0}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZ)V

    :cond_5
    return-void
.end method

.method public setLocalSink(Lorg/webrtc/VideoSink;Z)V
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1267
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

    .line 486
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    if-eq v0, p1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->micSwitching:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 489
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    .line 490
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    .line 492
    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v0, :cond_1

    .line 493
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-nez v0, :cond_1

    move p3, v1

    :cond_1
    if-eqz p3, :cond_2

    .line 498
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

    .line 499
    sget-object p3, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 508
    :cond_2
    iget-boolean p3, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    const/4 v0, 0x0

    if-nez p3, :cond_3

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->unmutedByHold:Z

    .line 509
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p3, p2, v0

    if-eqz p3, :cond_4

    .line 510
    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/NativeInstance;->setMuteMicrophone(Z)V

    .line 512
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

    .line 513
    invoke-interface {p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public setNoiseSupressionEnabled(Z)V
    .locals 3

    .line 863
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    return-void

    .line 866
    :cond_0
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/NativeInstance;->setNoiseSuppressionEnabled(Z)V

    return-void
.end method

.method public setParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;I)V
    .locals 7

    .line 2312
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    int-to-double v3, p2

    const-wide v5, 0x40c3880000000000L    # 10000.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setVolume(ID)V

    .line 2313
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz p1, :cond_0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->audio_source:I

    if-eqz p1, :cond_0

    .line 2314
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1, v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setVolume(ID)V

    :cond_0
    return-void
.end method

.method public setParticipantsVolume()V
    .locals 5

    .line 2295
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 2297
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2298
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 2299
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->self:Z

    if-nez v4, :cond_2

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2302
    :cond_0
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted_by_you:Z

    if-eqz v4, :cond_1

    .line 2303
    invoke-virtual {p0, v3, v1}, Lorg/telegram/messenger/voip/VoIPService;->setParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;I)V

    goto :goto_1

    .line 2305
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

    .line 1272
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    return-void
.end method

.method public setSinks(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V
    .locals 1

    const/4 v0, 0x0

    .line 1249
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/voip/VoIPService;->setSinks(Lorg/webrtc/VideoSink;ZLorg/webrtc/VideoSink;)V

    return-void
.end method

.method public setSinks(Lorg/webrtc/VideoSink;ZLorg/webrtc/VideoSink;)V
    .locals 2

    .line 1253
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v0, v0, p2

    .line 1254
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object p2, v1, p2

    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1259
    invoke-virtual {p2, p3}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    :cond_1
    return-void
.end method

.method protected setSwitchingCamera(ZZ)V
    .locals 1

    .line 2632
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingCamera:Z

    if-nez p1, :cond_0

    .line 2634
    iput-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    const/4 p1, 0x0

    .line 2635
    :goto_0
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 2636
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 2637
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    invoke-interface {p2, v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onCameraSwitch(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVideoState(ZI)V
    .locals 8

    .line 1196
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1197
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v3, v1

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    if-nez v4, :cond_3

    .line 1198
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v3, v2, p1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 1199
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput p2, v3, v1

    .line 1200
    aget-wide v4, v2, p1

    aget v0, v3, v1

    invoke-static {v4, v5, v0}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoStateCapturer(JI)V

    goto :goto_1

    :cond_1
    if-ne p2, v7, :cond_2

    .line 1201
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v3, 0x11

    if-eq v0, v3, :cond_2

    const/16 v3, 0xb

    if-eq v0, v3, :cond_2

    .line 1202
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v0, v0, v1

    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    invoke-static {v0, v3}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v3

    aput-wide v3, v2, p1

    .line 1203
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v7, v0, v1

    :cond_2
    :goto_1
    return-void

    .line 1207
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput p2, v4, v1

    .line 1208
    aget-object v0, v3, v1

    aget v3, v4, v1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoState(I)V

    .line 1209
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v3, v0, p1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 1210
    aget-wide v3, v0, p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget v0, v0, v1

    invoke-static {v3, v4, v0}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoStateCapturer(JI)V

    :cond_4
    if-nez p1, :cond_7

    .line 1213
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_6

    .line 1214
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

    .line 1216
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

    .line 1172
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v3, v2, p1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v3, p1

    if-nez v4, :cond_0

    goto :goto_0

    .line 1175
    :cond_0
    aget-object v3, v3, p1

    aget-wide v4, v2, p1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/voip/NativeInstance;->setupOutgoingVideoCreated(J)V

    .line 1176
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aput-boolean v1, v2, p1

    .line 1177
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v0, v2, p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 1179
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    const/4 v2, 0x1

    if-ne p1, p2, :cond_3

    xor-int/lit8 p1, p2, 0x1

    .line 1180
    invoke-virtual {p0, p1, v1, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    .line 1181
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->micSwitching:Z

    .line 1183
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz p1, :cond_5

    .line 1184
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

    move v1, v2

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

    .line 3475
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->startedRinging:Z

    if-nez v0, :cond_0

    .line 3476
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->startRingtoneAndVibration(J)V

    const/4 v0, 0x1

    .line 3477
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->startedRinging:Z

    :cond_0
    return-void
.end method

.method public stopRinging()V
    .locals 3

    .line 2947
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 2948
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2949
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 2950
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 2951
    iput-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    .line 2953
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2954
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 2955
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 2956
    iput-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 2953
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopScreenCapture()V
    .locals 5

    .line 1221
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1224
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_leaveGroupCallPresentation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_leaveGroupCallPresentation;-><init>()V

    .line 1225
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_leaveGroupCallPresentation;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 1226
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda85;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda85;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1232
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 1234
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/voip/NativeInstance;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1236
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1237
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 1238
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aput-boolean v1, v0, v1

    .line 1239
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v1

    .line 1240
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v2, v0, v1

    .line 1241
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

    .line 1357
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->swap()V

    .line 1358
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->swap()V

    return-void
.end method

.method public switchCamera()V
    .locals 8

    .line 1109
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

    .line 1115
    :cond_0
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingCamera:Z

    .line 1116
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v1

    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->switchCamera(Z)V

    return-void

    .line 1110
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v4, v0, v1

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingCamera:Z

    if-nez v2, :cond_2

    .line 1111
    aget-wide v1, v0, v1

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    xor-int/2addr v0, v3

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/voip/NativeInstance;->switchCameraCapturer(JZ)V

    :cond_2
    return-void
.end method

.method public switchToSpeaker()V
    .locals 3

    .line 2732
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2728
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/voip/VoIPService;->toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;ZLjava/lang/Integer;)V

    return-void
.end method

.method public toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;ZLjava/lang/Integer;)V
    .locals 7

    .line 2748
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2749
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/messenger/R$string;->VoipOutputDevices:I

    const-string v3, "VoipOutputDevices"

    .line 2750
    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    .line 2751
    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->selectedPos(Ljava/lang/Integer;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2752
    sget v3, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->CELL_TYPE_CALL:I

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCellType(I)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/CharSequence;

    sget v5, Lorg/telegram/messenger/R$string;->VoipAudioRoutingSpeaker:I

    const-string v6, "VoipAudioRoutingSpeaker"

    .line 2754
    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 2755
    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-eqz v5, :cond_1

    sget v5, Lorg/telegram/messenger/R$string;->VoipAudioRoutingHeadset:I

    const-string v6, "VoipAudioRoutingHeadset"

    goto :goto_1

    :cond_1
    sget v5, Lorg/telegram/messenger/R$string;->VoipAudioRoutingEarpiece:I

    const-string v6, "VoipAudioRoutingEarpiece"

    :goto_1
    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 2756
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBluetoothDeviceName:Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    sget v5, Lorg/telegram/messenger/R$string;->VoipAudioRoutingBluetooth:I

    const-string v6, "VoipAudioRoutingBluetooth"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v4, v1

    new-array v3, v3, [I

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_call_speaker:I

    aput v5, v3, v0

    .line 2758
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-eqz v0, :cond_3

    sget v0, Lorg/telegram/messenger/R$drawable;->calls_menu_headset:I

    goto :goto_3

    :cond_3
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_call_earpiece:I

    :goto_3
    aput v0, v3, v2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_call_bluetooth:I

    aput v0, v3, v1

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    .line 2753
    invoke-virtual {p1, v4, v3, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    .line 2766
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    .line 2767
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    if-eqz p2, :cond_5

    .line 2777
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_4

    .line 2778
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x7f6

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    goto :goto_4

    .line 2780
    :cond_4
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x7d3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    .line 2783
    :cond_5
    :goto_4
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void

    .line 2786
    :cond_6
    sget-boolean p1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz p1, :cond_a

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 2787
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_8

    .line 2788
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {p1}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_7

    goto :goto_5

    :cond_7
    move p2, v0

    :goto_5
    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto :goto_7

    .line 2790
    :cond_8
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {p1}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p3

    if-ne p3, v1, :cond_9

    move v1, p2

    :cond_9
    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto :goto_7

    .line 2792
    :cond_a
    iget-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    if-eqz p2, :cond_c

    if-nez p1, :cond_c

    const-string p1, "audio"

    .line 2793
    invoke-virtual {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 2794
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object p2

    .line 2795
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 2796
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_6

    .line 2798
    :cond_b
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p3

    xor-int/2addr p3, v2

    invoke-virtual {p1, p3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2800
    :goto_6
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda68;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda68;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/VoipAudioManager;->isBluetoothAndSpeakerOnAsync(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void

    .line 2808
    :cond_c
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    .line 2810
    :goto_7
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 2811
    invoke-interface {p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_8

    :cond_d
    return-void
.end method

.method public unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V
    .locals 1

    .line 2663
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateOutputGainControlState()V
    .locals 6

    .line 4498
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4501
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    .line 4502
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const-string v0, "audio"

    .line 4503
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4504
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn()Z

    move-result v3

    .line 4505
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v4, v1

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/voip/NativeInstance;->setAudioOutputGainControlEnabled(Z)V

    .line 4506
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v4, v1

    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    invoke-virtual {v4, v1}, Lorg/telegram/messenger/voip/NativeInstance;->setEchoCancellationStrength(I)V

    goto :goto_3

    .line 4508
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    .line 4509
    :goto_2
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/voip/NativeInstance;->setAudioOutputGainControlEnabled(Z)V

    .line 4510
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v3, v1

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/voip/NativeInstance;->setEchoCancellationStrength(I)V

    :cond_6
    :goto_3
    return-void
.end method
