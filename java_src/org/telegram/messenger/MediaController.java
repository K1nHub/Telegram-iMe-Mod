package org.telegram.messenger;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.view.TextureView;
import android.view.View;
import android.webkit.MimeTypeMap;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.C0483C;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.audio.OpusUtil;
import com.google.android.exoplayer2.p016ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.AnimatedStickerEditedInfo;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CountDownLatch;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.audioinfo.AudioInfo;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Adapters.FiltersView;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.EmbedBottomSheet;
import org.telegram.p043ui.Components.PhotoFilterView;
import org.telegram.p043ui.Components.PipRoundVideoView;
import org.telegram.p043ui.Components.Point;
import org.telegram.p043ui.Components.VideoPlayer;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.PhotoViewer;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$InputDocument;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_document;
import org.telegram.tgnet.TLRPC$TL_documentAttributeAudio;
import org.telegram.tgnet.TLRPC$TL_encryptedChat;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_message;
import org.telegram.tgnet.TLRPC$TL_messages_messages;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$VideoSize;
import org.telegram.tgnet.TLRPC$messages_Messages;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
import p033j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class MediaController implements AudioManager.OnAudioFocusChangeListener, NotificationCenter.NotificationCenterDelegate, SensorEventListener {
    private static final int AUDIO_FOCUSED = 2;
    public static final String AUDIO_MIME_TYPE = "audio/mp4a-latm";
    private static final int AUDIO_NO_FOCUS_CAN_DUCK = 1;
    private static final int AUDIO_NO_FOCUS_NO_DUCK = 0;
    private static volatile MediaController Instance = null;
    public static final int VIDEO_BITRATE_1080 = 6800000;
    public static final int VIDEO_BITRATE_360 = 750000;
    public static final int VIDEO_BITRATE_480 = 1000000;
    public static final int VIDEO_BITRATE_720 = 2621440;
    public static final String VIDEO_MIME_TYPE = "video/avc";
    private static final float VOLUME_DUCK = 0.2f;
    private static final float VOLUME_NORMAL = 1.0f;
    public static AlbumEntry allMediaAlbumEntry;
    public static ArrayList<AlbumEntry> allMediaAlbums;
    public static ArrayList<AlbumEntry> allPhotoAlbums;
    public static AlbumEntry allPhotosAlbumEntry;
    public static AlbumEntry allVideosAlbumEntry;
    private static Runnable broadcastPhotosRunnable;
    private static final ConcurrentHashMap<String, Integer> cachedEncoderBitrates;
    public static boolean forceBroadcastNewPhotos;
    private static final String[] projectionPhotos;
    private static final String[] projectionVideo;
    private static Runnable refreshGalleryRunnable;
    private static long volumeBarLastTimeShown;
    private Sensor accelerometerSensor;
    private boolean accelerometerVertical;
    private boolean allowStartRecord;
    private AudioInfo audioInfo;
    private AudioRecord audioRecorder;
    private boolean audioRecorderPaused;
    private float audioVolume;
    private ValueAnimator audioVolumeAnimator;
    private Activity baseActivity;
    private boolean callInProgress;
    private int countLess;
    private AspectRatioFrameLayout currentAspectRatioFrameLayout;
    private float currentAspectRatioFrameLayoutRatio;
    private boolean currentAspectRatioFrameLayoutReady;
    private int currentAspectRatioFrameLayoutRotation;
    private VideoConvertMessage currentForegroundConvertingVideo;
    private int currentPlaylistNum;
    private TextureView currentTextureView;
    private FrameLayout currentTextureViewContainer;
    private boolean downloadingCurrentMessage;
    private ExternalObserver externalObserver;
    private View feedbackView;
    private ByteBuffer fileBuffer;
    private DispatchQueue fileEncodingQueue;
    private BaseFragment flagSecureFragment;
    private boolean forceLoopCurrentPlaylist;
    private MessageObject goingToShowMessageObject;
    private Sensor gravitySensor;
    private int hasAudioFocus;
    private boolean hasRecordAudioFocus;
    private boolean ignoreOnPause;
    private boolean ignoreProximity;
    private boolean inputFieldHasText;
    private InternalObserver internalObserver;
    private boolean isDrawingWasReady;
    private boolean isFromMusicPlaylist;
    private boolean isStreamingCurrentAudio;
    private long lastAccelerometerDetected;
    private int lastChatAccount;
    private long lastChatEnterTime;
    private long lastChatLeaveTime;
    private ArrayList<Long> lastChatVisibleMessages;
    private long lastMediaCheckTime;
    private int lastMessageId;
    private long lastSaveTime;
    private TLRPC$EncryptedChat lastSecretChat;
    private TLRPC$User lastUser;
    private Sensor linearSensor;
    private boolean loadingPlaylist;
    private boolean manualRecording;
    private String[] mediaProjections;
    private boolean needHiddenPlay;
    private PipRoundVideoView pipRoundVideoView;
    private int pipSwitchingState;
    private boolean playMusicAgain;
    private int playerNum;
    private boolean playerWasReady;
    private MessageObject playingMessageObject;
    private int playlistClassGuid;
    private PlaylistGlobalSearchParams playlistGlobalSearchParams;
    private long playlistMergeDialogId;
    private float previousAccValue;
    private boolean proximityHasDifferentValues;
    private Sensor proximitySensor;
    private boolean proximityTouched;
    private PowerManager.WakeLock proximityWakeLock;
    private ChatActivity raiseChat;
    private boolean raiseToEarRecord;
    private int raisedToBack;
    private int raisedToTop;
    private int raisedToTopSign;
    private long recordDialogId;
    private DispatchQueue recordQueue;
    private MessageObject recordReplyingMsg;
    private TL_stories$StoryItem recordReplyingStory;
    private MessageObject recordReplyingTopMsg;
    private Runnable recordStartRunnable;
    private long recordStartTime;
    private long recordTimeCount;
    private TLRPC$TL_document recordingAudio;
    private File recordingAudioFile;
    private int recordingCurrentAccount;
    private boolean resumeAudioOnFocusGain;
    private long samplesCount;
    private float seekToProgressPending;
    private int sendAfterDone;
    private boolean sendAfterDoneNotify;
    private boolean sendAfterDoneOnce;
    private int sendAfterDoneScheduleDate;
    private String sendAfterDoneTemplateName;
    private SensorManager sensorManager;
    private boolean sensorsStarted;
    private String shouldSavePositionForCurrentAudio;
    private int startObserverToken;
    private StopMediaObserverRunnable stopMediaObserverRunnable;
    private long timeSinceRaise;
    private boolean useFrontSpeaker;
    private VideoPlayer videoPlayer;
    private ArrayList<MessageObject> voiceMessagesPlaylist;
    private SparseArray<MessageObject> voiceMessagesPlaylistMap;
    private boolean voiceMessagesPlaylistUnread;
    private long writedFileLenght;
    private int writedFrame;
    AudioManager.OnAudioFocusChangeListener audioRecordFocusChangedListener = new AudioManager.OnAudioFocusChangeListener() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda2
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(int i) {
            MediaController.this.lambda$new$0(i);
        }
    };
    private final Object videoConvertSync = new Object();
    private long lastTimestamp = 0;
    private float lastProximityValue = -100.0f;
    private float[] gravity = new float[3];
    private float[] gravityFast = new float[3];
    private float[] linearAcceleration = new float[3];
    private int audioFocus = 0;
    private ArrayList<VideoConvertMessage> foregroundConvertingMessages = new ArrayList<>();
    private ArrayList<VideoConvertMessage> videoConvertQueue = new ArrayList<>();
    private final Object videoQueueSync = new Object();
    private HashMap<String, MessageObject> generatingWaveform = new HashMap<>();
    public boolean isSilent = false;
    private boolean isPaused = false;
    private boolean wasPlayingAudioBeforePause = false;
    private VideoPlayer audioPlayer = null;
    private VideoPlayer emojiSoundPlayer = null;
    private int emojiSoundPlayerNum = 0;
    private float currentPlaybackSpeed = 1.0f;
    private float currentMusicPlaybackSpeed = 1.0f;
    private float fastPlaybackSpeed = 1.0f;
    private float fastMusicPlaybackSpeed = 1.0f;
    private long lastProgress = 0;
    private Timer progressTimer = null;
    private final Object progressTimerSync = new Object();
    private ArrayList<MessageObject> playlist = new ArrayList<>();
    private HashMap<Integer, MessageObject> playlistMap = new HashMap<>();
    private ArrayList<MessageObject> shuffledPlaylist = new ArrayList<>();
    private boolean[] playlistEndReached = {false, false};
    private int[] playlistMaxId = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    private Runnable setLoadingRunnable = new Runnable() { // from class: org.telegram.messenger.MediaController.1
        @Override // java.lang.Runnable
        public void run() {
            if (MediaController.this.playingMessageObject == null) {
                return;
            }
            FileLoader.getInstance(MediaController.this.playingMessageObject.currentAccount).setLoadingVideo(MediaController.this.playingMessageObject.getDocument(), true, false);
        }
    };
    private int recordingGuid = -1;
    private short[] recordSamples = new short[1024];
    private final Object sync = new Object();
    private ArrayList<ByteBuffer> recordBuffers = new ArrayList<>();
    public int recordBufferSize = 1280;
    public int sampleRate = OpusUtil.SAMPLE_RATE;
    private Runnable recordRunnable = new RunnableC36002();
    private final ValueAnimator.AnimatorUpdateListener audioVolumeUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.messenger.MediaController.3
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            MediaController.this.audioVolume = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            MediaController.this.setPlayerVolume();
        }
    };

    /* loaded from: classes4.dex */
    public static class AudioEntry {
        public String author;
        public int duration;
        public String genre;

        /* renamed from: id */
        public long f1532id;
        public MessageObject messageObject;
        public String path;
        public String title;
    }

    /* loaded from: classes4.dex */
    public interface VideoConvertorListener {
        boolean checkConversionCanceled();

        void didWriteData(long j, float f);
    }

    private static int getVideoBitrateWithFactor(float f) {
        return (int) (f * 2000.0f * 1000.0f * 1.13f);
    }

    public static native byte[] getWaveform(String str);

    public static native int isOpusFile(String str);

    private static boolean isRecognizedFormat(int i) {
        if (i == 39 || i == 2130706688) {
            return true;
        }
        switch (i) {
            case 19:
            case 20:
            case 21:
                return true;
            default:
                return false;
        }
    }

    private native int startRecord(String str, int i);

    private native void stopRecord();

    /* JADX INFO: Access modifiers changed from: private */
    public native int writeFrame(ByteBuffer byteBuffer, int i);

    public native byte[] getWaveform2(short[] sArr, int i);

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    static /* synthetic */ long access$1814(MediaController mediaController, long j) {
        long j2 = mediaController.recordTimeCount + j;
        mediaController.recordTimeCount = j2;
        return j2;
    }

    static /* synthetic */ int access$1908(MediaController mediaController) {
        int i = mediaController.writedFrame;
        mediaController.writedFrame = i + 1;
        return i;
    }

    public boolean setPlaylist(ArrayList<MessageObject> arrayList, MessageObject messageObject, long j) {
        return setPlaylist(arrayList, messageObject, j, false);
    }

    public boolean setPlaylist(ArrayList<MessageObject> arrayList, MessageObject messageObject, long j, boolean z, PlaylistGlobalSearchParams playlistGlobalSearchParams) {
        return setPlaylist(arrayList, messageObject, j, z, playlistGlobalSearchParams, false);
    }

    public void exportAnimatedSticker(int i, TLRPC$Document tLRPC$Document, long j, String str) {
        TLRPC$TL_message tLRPC$TL_message = new TLRPC$TL_message();
        tLRPC$TL_message.dialog_id = 1L;
        tLRPC$TL_message.attachPath = new File(ApplicationLoader.getFilesDirFixed(), str).getAbsolutePath();
        MessageObject messageObject = new MessageObject(0, tLRPC$TL_message, false, false);
        messageObject.currentAccount = i;
        VideoConvertRunnable.runConversion(new VideoConvertMessage(messageObject, new AnimatedStickerEditedInfo(tLRPC$Document, j), false));
    }

    public void setNeedHiddenPlay(boolean z) {
        this.needHiddenPlay = z;
    }

    public boolean isBuffering() {
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer != null) {
            return videoPlayer.isBuffering();
        }
        return false;
    }

    public VideoConvertMessage getCurrentForegroundConverMessage() {
        return this.currentForegroundConvertingVideo;
    }

    /* loaded from: classes4.dex */
    private static class AudioBuffer {
        ByteBuffer buffer;
        byte[] bufferBytes;
        int finished;
        long pcmOffset;
        int size;

        public AudioBuffer(int i) {
            this.buffer = ByteBuffer.allocateDirect(i);
            this.bufferBytes = new byte[i];
        }
    }

    static {
        String[] strArr = new String[9];
        strArr[0] = "_id";
        strArr[1] = "bucket_id";
        strArr[2] = "bucket_display_name";
        strArr[3] = "_data";
        int i = Build.VERSION.SDK_INT;
        strArr[4] = i > 28 ? "date_modified" : "datetaken";
        strArr[5] = "orientation";
        strArr[6] = "width";
        strArr[7] = "height";
        strArr[8] = "_size";
        projectionPhotos = strArr;
        String[] strArr2 = new String[9];
        strArr2[0] = "_id";
        strArr2[1] = "bucket_id";
        strArr2[2] = "bucket_display_name";
        strArr2[3] = "_data";
        strArr2[4] = i <= 28 ? "datetaken" : "date_modified";
        strArr2[5] = "duration";
        strArr2[6] = "width";
        strArr2[7] = "height";
        strArr2[8] = "_size";
        projectionVideo = strArr2;
        cachedEncoderBitrates = new ConcurrentHashMap<>();
        allMediaAlbums = new ArrayList<>();
        allPhotoAlbums = new ArrayList<>();
    }

    /* loaded from: classes4.dex */
    public static class AlbumEntry {
        public int bucketId;
        public String bucketName;
        public PhotoEntry coverPhoto;
        public ArrayList<PhotoEntry> photos = new ArrayList<>();
        public SparseArray<PhotoEntry> photosByIds = new SparseArray<>();
        public boolean videoOnly;

        public AlbumEntry(int i, String str, PhotoEntry photoEntry) {
            this.bucketId = i;
            this.bucketName = str;
            this.coverPhoto = photoEntry;
        }

        public void addPhoto(PhotoEntry photoEntry) {
            this.photos.add(photoEntry);
            this.photosByIds.put(photoEntry.imageId, photoEntry);
        }
    }

    /* loaded from: classes4.dex */
    public static class SavedFilterState {
        public float blurAngle;
        public float blurExcludeBlurSize;
        public Point blurExcludePoint;
        public float blurExcludeSize;
        public int blurType;
        public float contrastValue;
        public PhotoFilterView.CurvesToolValue curvesToolValue = new PhotoFilterView.CurvesToolValue();
        public float enhanceValue;
        public float exposureValue;
        public float fadeValue;
        public float grainValue;
        public float highlightsValue;
        public float saturationValue;
        public float shadowsValue;
        public float sharpenValue;
        public float softenSkinValue;
        public int tintHighlightsColor;
        public int tintShadowsColor;
        public float vignetteValue;
        public float warmthValue;

        public void serializeToStream(AbstractSerializedData abstractSerializedData) {
            abstractSerializedData.writeFloat(this.enhanceValue);
            abstractSerializedData.writeFloat(this.softenSkinValue);
            abstractSerializedData.writeFloat(this.exposureValue);
            abstractSerializedData.writeFloat(this.contrastValue);
            abstractSerializedData.writeFloat(this.warmthValue);
            abstractSerializedData.writeFloat(this.saturationValue);
            abstractSerializedData.writeFloat(this.fadeValue);
            abstractSerializedData.writeInt32(this.tintShadowsColor);
            abstractSerializedData.writeInt32(this.tintHighlightsColor);
            abstractSerializedData.writeFloat(this.highlightsValue);
            abstractSerializedData.writeFloat(this.shadowsValue);
            abstractSerializedData.writeFloat(this.vignetteValue);
            abstractSerializedData.writeFloat(this.grainValue);
            abstractSerializedData.writeInt32(this.blurType);
            abstractSerializedData.writeFloat(this.sharpenValue);
            this.curvesToolValue.serializeToStream(abstractSerializedData);
            abstractSerializedData.writeFloat(this.blurExcludeSize);
            if (this.blurExcludePoint == null) {
                abstractSerializedData.writeInt32(1450380236);
            } else {
                abstractSerializedData.writeInt32(-559038737);
                abstractSerializedData.writeFloat(this.blurExcludePoint.f1899x);
                abstractSerializedData.writeFloat(this.blurExcludePoint.f1900y);
            }
            abstractSerializedData.writeFloat(this.blurExcludeBlurSize);
            abstractSerializedData.writeFloat(this.blurAngle);
        }

        public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
            this.enhanceValue = abstractSerializedData.readFloat(z);
            this.softenSkinValue = abstractSerializedData.readFloat(z);
            this.exposureValue = abstractSerializedData.readFloat(z);
            this.contrastValue = abstractSerializedData.readFloat(z);
            this.warmthValue = abstractSerializedData.readFloat(z);
            this.saturationValue = abstractSerializedData.readFloat(z);
            this.fadeValue = abstractSerializedData.readFloat(z);
            this.tintShadowsColor = abstractSerializedData.readInt32(z);
            this.tintHighlightsColor = abstractSerializedData.readInt32(z);
            this.highlightsValue = abstractSerializedData.readFloat(z);
            this.shadowsValue = abstractSerializedData.readFloat(z);
            this.vignetteValue = abstractSerializedData.readFloat(z);
            this.grainValue = abstractSerializedData.readFloat(z);
            this.blurType = abstractSerializedData.readInt32(z);
            this.sharpenValue = abstractSerializedData.readFloat(z);
            this.curvesToolValue.readParams(abstractSerializedData, z);
            this.blurExcludeSize = abstractSerializedData.readFloat(z);
            if (abstractSerializedData.readInt32(z) == 1450380236) {
                this.blurExcludePoint = null;
            } else {
                if (this.blurExcludePoint == null) {
                    this.blurExcludePoint = new Point();
                }
                this.blurExcludePoint.f1899x = abstractSerializedData.readFloat(z);
                this.blurExcludePoint.f1900y = abstractSerializedData.readFloat(z);
            }
            this.blurExcludeBlurSize = abstractSerializedData.readFloat(z);
            this.blurAngle = abstractSerializedData.readFloat(z);
        }

        public boolean isEmpty() {
            return Math.abs(this.enhanceValue) < 0.1f && Math.abs(this.softenSkinValue) < 0.1f && Math.abs(this.exposureValue) < 0.1f && Math.abs(this.contrastValue) < 0.1f && Math.abs(this.warmthValue) < 0.1f && Math.abs(this.saturationValue) < 0.1f && Math.abs(this.fadeValue) < 0.1f && this.tintShadowsColor == 0 && this.tintHighlightsColor == 0 && Math.abs(this.highlightsValue) < 0.1f && Math.abs(this.shadowsValue) < 0.1f && Math.abs(this.vignetteValue) < 0.1f && Math.abs(this.grainValue) < 0.1f && this.blurType == 0 && Math.abs(this.sharpenValue) < 0.1f;
        }
    }

    /* loaded from: classes4.dex */
    public static class CropState {
        public float cropPx;
        public float cropPy;
        public float cropRotate;
        public boolean freeform;
        public int height;
        public boolean initied;
        public float lockedAspectRatio;
        public Matrix matrix;
        public boolean mirrored;
        public float scale;
        public float stateScale;
        public int transformHeight;
        public int transformRotation;
        public int transformWidth;
        public Matrix useMatrix;
        public int width;
        public float cropScale = 1.0f;
        public float cropPw = 1.0f;
        public float cropPh = 1.0f;

        public CropState clone() {
            CropState cropState = new CropState();
            cropState.cropPx = this.cropPx;
            cropState.cropPy = this.cropPy;
            cropState.cropScale = this.cropScale;
            cropState.cropRotate = this.cropRotate;
            cropState.cropPw = this.cropPw;
            cropState.cropPh = this.cropPh;
            cropState.transformWidth = this.transformWidth;
            cropState.transformHeight = this.transformHeight;
            cropState.transformRotation = this.transformRotation;
            cropState.mirrored = this.mirrored;
            cropState.stateScale = this.stateScale;
            cropState.scale = this.scale;
            cropState.matrix = this.matrix;
            cropState.width = this.width;
            cropState.height = this.height;
            cropState.freeform = this.freeform;
            cropState.lockedAspectRatio = this.lockedAspectRatio;
            cropState.initied = this.initied;
            cropState.useMatrix = this.useMatrix;
            return cropState;
        }

        public boolean isEmpty() {
            Matrix matrix;
            Matrix matrix2 = this.matrix;
            return (matrix2 == null || matrix2.isIdentity()) && ((matrix = this.useMatrix) == null || matrix.isIdentity()) && this.cropPw == 1.0f && this.cropPh == 1.0f && this.cropScale == 1.0f && this.cropRotate == BitmapDescriptorFactory.HUE_RED && this.transformWidth == 0 && this.transformHeight == 0 && this.transformRotation == 0 && !this.mirrored && this.stateScale == BitmapDescriptorFactory.HUE_RED && this.scale == BitmapDescriptorFactory.HUE_RED && this.width == 0 && this.height == 0 && !this.freeform && this.lockedAspectRatio == BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* loaded from: classes4.dex */
    public static class MediaEditState {
        public long averageDuration;
        public CharSequence caption;
        public CropState cropState;
        public ArrayList<VideoEditedInfo.MediaEntity> croppedMediaEntities;
        public String croppedPaintPath;
        public VideoEditedInfo editedInfo;
        public ArrayList<TLRPC$MessageEntity> entities;
        public String filterPath;
        public String fullPaintPath;
        public String imagePath;
        public boolean isCropped;
        public boolean isFiltered;
        public boolean isPainted;
        public ArrayList<VideoEditedInfo.MediaEntity> mediaEntities;
        public String paintPath;
        public SavedFilterState savedFilterState;
        public ArrayList<TLRPC$InputDocument> stickers;
        public String thumbPath;
        public int ttl;

        public String getPath() {
            return null;
        }

        public void reset() {
            this.caption = null;
            this.thumbPath = null;
            this.filterPath = null;
            this.imagePath = null;
            this.paintPath = null;
            this.croppedPaintPath = null;
            this.isFiltered = false;
            this.isPainted = false;
            this.isCropped = false;
            this.ttl = 0;
            this.mediaEntities = null;
            this.editedInfo = null;
            this.entities = null;
            this.savedFilterState = null;
            this.stickers = null;
            this.cropState = null;
        }

        public void copyFrom(MediaEditState mediaEditState) {
            this.caption = mediaEditState.caption;
            this.thumbPath = mediaEditState.thumbPath;
            this.imagePath = mediaEditState.imagePath;
            this.filterPath = mediaEditState.filterPath;
            this.paintPath = mediaEditState.paintPath;
            this.croppedPaintPath = mediaEditState.croppedPaintPath;
            this.fullPaintPath = mediaEditState.fullPaintPath;
            this.entities = mediaEditState.entities;
            this.savedFilterState = mediaEditState.savedFilterState;
            this.mediaEntities = mediaEditState.mediaEntities;
            this.croppedMediaEntities = mediaEditState.croppedMediaEntities;
            this.stickers = mediaEditState.stickers;
            this.editedInfo = mediaEditState.editedInfo;
            this.averageDuration = mediaEditState.averageDuration;
            this.isFiltered = mediaEditState.isFiltered;
            this.isPainted = mediaEditState.isPainted;
            this.isCropped = mediaEditState.isCropped;
            this.ttl = mediaEditState.ttl;
            this.cropState = mediaEditState.cropState;
        }
    }

    /* loaded from: classes4.dex */
    public static class PhotoEntry extends MediaEditState {
        public int bucketId;
        public boolean canDeleteAfter;
        public long dateTaken;
        public int duration;
        public TLRPC$VideoSize emojiMarkup;
        public int gradientBottomColor;
        public int gradientTopColor;
        public boolean hasSpoiler;
        public int height;
        public int imageId;
        public int invert;
        public boolean isAttachSpoilerRevealed;
        public boolean isChatPreviewSpoilerRevealed;
        public boolean isMuted;
        public boolean isVideo;
        public int orientation;
        public String path;
        public long size;
        public int width;

        public PhotoEntry(int i, int i2, long j, String str, int i3, boolean z, int i4, int i5, long j2) {
            this.bucketId = i;
            this.imageId = i2;
            this.dateTaken = j;
            this.path = str;
            this.width = i4;
            this.height = i5;
            this.size = j2;
            if (z) {
                this.duration = i3;
            } else {
                this.orientation = i3;
            }
            this.isVideo = z;
        }

        public PhotoEntry setOrientation(Pair<Integer, Integer> pair) {
            this.orientation = ((Integer) pair.first).intValue();
            this.invert = ((Integer) pair.second).intValue();
            return this;
        }

        public PhotoEntry setOrientation(int i, int i2) {
            this.orientation = i;
            this.invert = i2;
            return this;
        }

        @Override // org.telegram.messenger.MediaController.MediaEditState
        public void copyFrom(MediaEditState mediaEditState) {
            super.copyFrom(mediaEditState);
            this.hasSpoiler = (mediaEditState instanceof PhotoEntry) && ((PhotoEntry) mediaEditState).hasSpoiler;
        }

        public PhotoEntry clone() {
            int i = this.bucketId;
            int i2 = this.imageId;
            long j = this.dateTaken;
            String str = this.path;
            boolean z = this.isVideo;
            PhotoEntry photoEntry = new PhotoEntry(i, i2, j, str, z ? this.duration : this.orientation, z, this.width, this.height, this.size);
            photoEntry.invert = this.invert;
            photoEntry.isMuted = this.isMuted;
            photoEntry.canDeleteAfter = this.canDeleteAfter;
            photoEntry.hasSpoiler = this.hasSpoiler;
            photoEntry.isChatPreviewSpoilerRevealed = this.isChatPreviewSpoilerRevealed;
            photoEntry.isAttachSpoilerRevealed = this.isAttachSpoilerRevealed;
            photoEntry.emojiMarkup = this.emojiMarkup;
            photoEntry.gradientTopColor = this.gradientTopColor;
            photoEntry.gradientBottomColor = this.gradientBottomColor;
            photoEntry.copyFrom(this);
            return photoEntry;
        }

        @Override // org.telegram.messenger.MediaController.MediaEditState
        public String getPath() {
            return this.path;
        }

        @Override // org.telegram.messenger.MediaController.MediaEditState
        public void reset() {
            if (this.isVideo && this.filterPath != null) {
                new File(this.filterPath).delete();
                this.filterPath = null;
            }
            this.hasSpoiler = false;
            super.reset();
        }
    }

    /* loaded from: classes4.dex */
    public static class SearchImage extends MediaEditState {
        public CharSequence caption;
        public int date;
        public TLRPC$Document document;
        public int height;

        /* renamed from: id */
        public String f1533id;
        public String imageUrl;
        public TLRPC$BotInlineResult inlineResult;
        public HashMap<String, String> params;
        public TLRPC$Photo photo;
        public TLRPC$PhotoSize photoSize;
        public int size;
        public TLRPC$PhotoSize thumbPhotoSize;
        public String thumbUrl;
        public int type;
        public int width;

        @Override // org.telegram.messenger.MediaController.MediaEditState
        public String getPath() {
            if (this.photoSize != null) {
                return FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(this.photoSize, true).getAbsolutePath();
            }
            if (this.document != null) {
                return FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(this.document, true).getAbsolutePath();
            }
            return ImageLoader.getHttpFilePath(this.imageUrl, "jpg").getAbsolutePath();
        }

        @Override // org.telegram.messenger.MediaController.MediaEditState
        public void reset() {
            super.reset();
        }

        public String getAttachName() {
            TLRPC$PhotoSize tLRPC$PhotoSize = this.photoSize;
            if (tLRPC$PhotoSize != null) {
                return FileLoader.getAttachFileName(tLRPC$PhotoSize);
            }
            TLRPC$Document tLRPC$Document = this.document;
            if (tLRPC$Document != null) {
                return FileLoader.getAttachFileName(tLRPC$Document);
            }
            return Utilities.MD5(this.imageUrl) + "." + ImageLoader.getHttpUrlExtension(this.imageUrl, "jpg");
        }

        public String getPathToAttach() {
            if (this.photoSize != null) {
                return FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(this.photoSize, true).getAbsolutePath();
            }
            if (this.document != null) {
                return FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(this.document, true).getAbsolutePath();
            }
            return this.imageUrl;
        }

        public SearchImage clone() {
            SearchImage searchImage = new SearchImage();
            searchImage.f1533id = this.f1533id;
            searchImage.imageUrl = this.imageUrl;
            searchImage.thumbUrl = this.thumbUrl;
            searchImage.width = this.width;
            searchImage.height = this.height;
            searchImage.size = this.size;
            searchImage.type = this.type;
            searchImage.date = this.date;
            searchImage.caption = this.caption;
            searchImage.document = this.document;
            searchImage.photo = this.photo;
            searchImage.photoSize = this.photoSize;
            searchImage.thumbPhotoSize = this.thumbPhotoSize;
            searchImage.inlineResult = this.inlineResult;
            searchImage.params = this.params;
            return searchImage;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(int i) {
        if (i != 1) {
            this.hasRecordAudioFocus = false;
        }
    }

    /* loaded from: classes4.dex */
    public static class VideoConvertMessage {
        public int currentAccount;
        public boolean foreground;
        public MessageObject messageObject;
        public VideoEditedInfo videoEditedInfo;

        public VideoConvertMessage(MessageObject messageObject, VideoEditedInfo videoEditedInfo, boolean z) {
            this.messageObject = messageObject;
            this.currentAccount = messageObject.currentAccount;
            this.videoEditedInfo = videoEditedInfo;
            this.foreground = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.MediaController$2 */
    /* loaded from: classes4.dex */
    public class RunnableC36002 implements Runnable {
        RunnableC36002() {
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x00fe  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 354
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.RunnableC36002.run():void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(final ByteBuffer byteBuffer, boolean z) {
            int i;
            MediaController mediaController;
            while (byteBuffer.hasRemaining()) {
                if (byteBuffer.remaining() > MediaController.this.fileBuffer.remaining()) {
                    i = byteBuffer.limit();
                    byteBuffer.limit(MediaController.this.fileBuffer.remaining() + byteBuffer.position());
                } else {
                    i = -1;
                }
                MediaController.this.fileBuffer.put(byteBuffer);
                if (MediaController.this.fileBuffer.position() == MediaController.this.fileBuffer.limit() || z) {
                    MediaController mediaController2 = MediaController.this;
                    if (mediaController2.writeFrame(mediaController2.fileBuffer, !z ? MediaController.this.fileBuffer.limit() : byteBuffer.position()) != 0) {
                        MediaController.this.fileBuffer.rewind();
                        MediaController.access$1814(MediaController.this, (mediaController.fileBuffer.limit() / 2) / (MediaController.this.sampleRate / 1000));
                        MediaController.access$1908(MediaController.this);
                    } else {
                        FileLog.m104e("writing frame failed");
                    }
                }
                if (i != -1) {
                    byteBuffer.limit(i);
                }
            }
            MediaController.this.recordQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.RunnableC36002.this.lambda$run$0(byteBuffer);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(ByteBuffer byteBuffer) {
            MediaController.this.recordBuffers.add(byteBuffer);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$2(double d) {
            NotificationCenter.getInstance(MediaController.this.recordingCurrentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordProgressChanged, Integer.valueOf(MediaController.this.recordingGuid), Double.valueOf(d));
        }
    }

    /* loaded from: classes4.dex */
    private class InternalObserver extends ContentObserver {
        public InternalObserver() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            MediaController.this.processMediaObserver(MediaStore.Images.Media.INTERNAL_CONTENT_URI);
        }
    }

    /* loaded from: classes4.dex */
    private class ExternalObserver extends ContentObserver {
        public ExternalObserver() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            MediaController.this.processMediaObserver(MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class GalleryObserverInternal extends ContentObserver {
        public GalleryObserverInternal() {
            super(null);
        }

        private void scheduleReloadRunnable() {
            AndroidUtilities.runOnUIThread(MediaController.refreshGalleryRunnable = new Runnable() { // from class: org.telegram.messenger.MediaController$GalleryObserverInternal$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.GalleryObserverInternal.this.lambda$scheduleReloadRunnable$0();
                }
            }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$scheduleReloadRunnable$0() {
            if (!PhotoViewer.getInstance().isVisible()) {
                Runnable unused = MediaController.refreshGalleryRunnable = null;
                MediaController.loadGalleryPhotosAlbums(0);
                return;
            }
            scheduleReloadRunnable();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            if (MediaController.refreshGalleryRunnable != null) {
                AndroidUtilities.cancelRunOnUIThread(MediaController.refreshGalleryRunnable);
            }
            scheduleReloadRunnable();
        }
    }

    /* loaded from: classes4.dex */
    private static class GalleryObserverExternal extends ContentObserver {
        public GalleryObserverExternal() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            if (MediaController.refreshGalleryRunnable != null) {
                AndroidUtilities.cancelRunOnUIThread(MediaController.refreshGalleryRunnable);
            }
            AndroidUtilities.runOnUIThread(MediaController.refreshGalleryRunnable = new Runnable() { // from class: org.telegram.messenger.MediaController$GalleryObserverExternal$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.GalleryObserverExternal.lambda$onChange$0();
                }
            }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onChange$0() {
            Runnable unused = MediaController.refreshGalleryRunnable = null;
            MediaController.loadGalleryPhotosAlbums(0);
        }
    }

    public static void checkGallery() {
        AlbumEntry albumEntry;
        if (Build.VERSION.SDK_INT < 24 || (albumEntry = allPhotosAlbumEntry) == null) {
            return;
        }
        final int size = albumEntry.photos.size();
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.lambda$checkGallery$1(size);
            }
        }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a0, code lost:
        if (r10 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00a7, code lost:
        if (r10 == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a9, code lost:
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ae, code lost:
        if (r17 == r9) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00b0, code lost:
        r0 = org.telegram.messenger.MediaController.refreshGalleryRunnable;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00b2, code lost:
        if (r0 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00b4, code lost:
        org.telegram.messenger.AndroidUtilities.cancelRunOnUIThread(r0);
        org.telegram.messenger.MediaController.refreshGalleryRunnable = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00b9, code lost:
        loadGalleryPhotosAlbums(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00bc, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:?, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0051 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0069 A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:32:0x0063, B:34:0x0069, B:36:0x006f, B:38:0x0075, B:42:0x0081, B:44:0x0095, B:46:0x009b, B:40:0x007b), top: B:71:0x0063 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$checkGallery$1(int r17) {
        /*
            java.lang.String r1 = "android.permission.READ_MEDIA_AUDIO"
            java.lang.String r2 = "COUNT(_id)"
            java.lang.String r3 = "android.permission.READ_MEDIA_VIDEO"
            java.lang.String r4 = "android.permission.READ_MEDIA_IMAGES"
            java.lang.String r5 = "android.permission.READ_EXTERNAL_STORAGE"
            r6 = 33
            r7 = 0
            r8 = 0
            android.content.Context r0 = org.telegram.messenger.ApplicationLoader.applicationContext     // Catch: java.lang.Throwable -> L57
            int r9 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L57
            if (r9 < r6) goto L26
            int r9 = r0.checkSelfPermission(r4)     // Catch: java.lang.Throwable -> L57
            if (r9 == 0) goto L2c
            int r9 = r0.checkSelfPermission(r3)     // Catch: java.lang.Throwable -> L57
            if (r9 == 0) goto L2c
            int r9 = r0.checkSelfPermission(r1)     // Catch: java.lang.Throwable -> L57
            if (r9 == 0) goto L2c
        L26:
            int r9 = r0.checkSelfPermission(r5)     // Catch: java.lang.Throwable -> L57
            if (r9 != 0) goto L4d
        L2c:
            android.content.ContentResolver r10 = r0.getContentResolver()     // Catch: java.lang.Throwable -> L57
            android.net.Uri r11 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI     // Catch: java.lang.Throwable -> L57
            java.lang.String[] r12 = new java.lang.String[]{r2}     // Catch: java.lang.Throwable -> L57
            r13 = 0
            r14 = 0
            r15 = 0
            android.database.Cursor r9 = android.provider.MediaStore.Images.Media.query(r10, r11, r12, r13, r14, r15)     // Catch: java.lang.Throwable -> L57
            if (r9 == 0) goto L4e
            boolean r0 = r9.moveToNext()     // Catch: java.lang.Throwable -> L4b
            if (r0 == 0) goto L4e
            int r0 = r9.getInt(r8)     // Catch: java.lang.Throwable -> L4b
            int r0 = r0 + r8
            goto L4f
        L4b:
            r0 = move-exception
            goto L59
        L4d:
            r9 = r7
        L4e:
            r0 = r8
        L4f:
            if (r9 == 0) goto L54
            r9.close()
        L54:
            r10 = r9
            r9 = r0
            goto L63
        L57:
            r0 = move-exception
            r9 = r7
        L59:
            org.telegram.messenger.FileLog.m102e(r0)     // Catch: java.lang.Throwable -> Lc5
            if (r9 == 0) goto L61
            r9.close()
        L61:
            r10 = r9
            r9 = r8
        L63:
            android.content.Context r0 = org.telegram.messenger.ApplicationLoader.applicationContext     // Catch: java.lang.Throwable -> La3
            int r11 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> La3
            if (r11 < r6) goto L7b
            int r4 = r0.checkSelfPermission(r4)     // Catch: java.lang.Throwable -> La3
            if (r4 == 0) goto L81
            int r3 = r0.checkSelfPermission(r3)     // Catch: java.lang.Throwable -> La3
            if (r3 == 0) goto L81
            int r1 = r0.checkSelfPermission(r1)     // Catch: java.lang.Throwable -> La3
            if (r1 == 0) goto L81
        L7b:
            int r1 = r0.checkSelfPermission(r5)     // Catch: java.lang.Throwable -> La3
            if (r1 != 0) goto La0
        L81:
            android.content.ContentResolver r11 = r0.getContentResolver()     // Catch: java.lang.Throwable -> La3
            android.net.Uri r12 = android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI     // Catch: java.lang.Throwable -> La3
            java.lang.String[] r13 = new java.lang.String[]{r2}     // Catch: java.lang.Throwable -> La3
            r14 = 0
            r15 = 0
            r16 = 0
            android.database.Cursor r10 = android.provider.MediaStore.Images.Media.query(r11, r12, r13, r14, r15, r16)     // Catch: java.lang.Throwable -> La3
            if (r10 == 0) goto La0
            boolean r0 = r10.moveToNext()     // Catch: java.lang.Throwable -> La3
            if (r0 == 0) goto La0
            int r0 = r10.getInt(r8)     // Catch: java.lang.Throwable -> La3
            int r9 = r9 + r0
        La0:
            if (r10 == 0) goto Lac
            goto La9
        La3:
            r0 = move-exception
            org.telegram.messenger.FileLog.m102e(r0)     // Catch: java.lang.Throwable -> Lbd
            if (r10 == 0) goto Lac
        La9:
            r10.close()
        Lac:
            r1 = r17
            if (r1 == r9) goto Lbc
            java.lang.Runnable r0 = org.telegram.messenger.MediaController.refreshGalleryRunnable
            if (r0 == 0) goto Lb9
            org.telegram.messenger.AndroidUtilities.cancelRunOnUIThread(r0)
            org.telegram.messenger.MediaController.refreshGalleryRunnable = r7
        Lb9:
            loadGalleryPhotosAlbums(r8)
        Lbc:
            return
        Lbd:
            r0 = move-exception
            r1 = r0
            if (r10 == 0) goto Lc4
            r10.close()
        Lc4:
            throw r1
        Lc5:
            r0 = move-exception
            r1 = r0
            if (r9 == 0) goto Lcc
            r9.close()
        Lcc:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.lambda$checkGallery$1(int):void");
    }

    /* loaded from: classes4.dex */
    private final class StopMediaObserverRunnable implements Runnable {
        public int currentObserverToken;

        private StopMediaObserverRunnable() {
            this.currentObserverToken = 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.currentObserverToken == MediaController.this.startObserverToken) {
                try {
                    if (MediaController.this.internalObserver != null) {
                        ApplicationLoader.applicationContext.getContentResolver().unregisterContentObserver(MediaController.this.internalObserver);
                        MediaController.this.internalObserver = null;
                    }
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
                try {
                    if (MediaController.this.externalObserver != null) {
                        ApplicationLoader.applicationContext.getContentResolver().unregisterContentObserver(MediaController.this.externalObserver);
                        MediaController.this.externalObserver = null;
                    }
                } catch (Exception e2) {
                    FileLog.m102e(e2);
                }
            }
        }
    }

    public static MediaController getInstance() {
        MediaController mediaController = Instance;
        if (mediaController == null) {
            synchronized (MediaController.class) {
                mediaController = Instance;
                if (mediaController == null) {
                    mediaController = new MediaController();
                    Instance = mediaController;
                }
            }
        }
        return mediaController;
    }

    public MediaController() {
        DispatchQueue dispatchQueue = new DispatchQueue("recordQueue");
        this.recordQueue = dispatchQueue;
        dispatchQueue.setPriority(10);
        DispatchQueue dispatchQueue2 = new DispatchQueue("fileEncodingQueue");
        this.fileEncodingQueue = dispatchQueue2;
        dispatchQueue2.setPriority(10);
        this.recordQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$new$2();
            }
        });
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$new$3();
            }
        });
        this.fileBuffer = ByteBuffer.allocateDirect(1920);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$new$4();
            }
        });
        String[] strArr = new String[7];
        strArr[0] = "_data";
        strArr[1] = "_display_name";
        strArr[2] = "bucket_display_name";
        strArr[3] = Build.VERSION.SDK_INT > 28 ? "date_modified" : "datetaken";
        strArr[4] = "title";
        strArr[5] = "width";
        strArr[6] = "height";
        this.mediaProjections = strArr;
        ContentResolver contentResolver = ApplicationLoader.applicationContext.getContentResolver();
        try {
            contentResolver.registerContentObserver(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, true, new GalleryObserverExternal());
        } catch (Exception e) {
            FileLog.m102e(e);
        }
        try {
            contentResolver.registerContentObserver(MediaStore.Images.Media.INTERNAL_CONTENT_URI, true, new GalleryObserverInternal());
        } catch (Exception e2) {
            FileLog.m102e(e2);
        }
        try {
            contentResolver.registerContentObserver(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, true, new GalleryObserverExternal());
        } catch (Exception e3) {
            FileLog.m102e(e3);
        }
        try {
            contentResolver.registerContentObserver(MediaStore.Video.Media.INTERNAL_CONTENT_URI, true, new GalleryObserverInternal());
        } catch (Exception e4) {
            FileLog.m102e(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        try {
            this.sampleRate = OpusUtil.SAMPLE_RATE;
            int minBufferSize = AudioRecord.getMinBufferSize(OpusUtil.SAMPLE_RATE, 16, 2);
            if (minBufferSize <= 0) {
                minBufferSize = 1280;
            }
            this.recordBufferSize = minBufferSize;
            for (int i = 0; i < 5; i++) {
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(this.recordBufferSize);
                allocateDirect.order(ByteOrder.nativeOrder());
                this.recordBuffers.add(allocateDirect);
            }
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        try {
            this.currentPlaybackSpeed = MessagesController.getGlobalMainSettings().getFloat("playbackSpeed", 1.0f);
            this.currentMusicPlaybackSpeed = MessagesController.getGlobalMainSettings().getFloat("musicPlaybackSpeed", 1.0f);
            this.fastPlaybackSpeed = MessagesController.getGlobalMainSettings().getFloat("fastPlaybackSpeed", 1.8f);
            this.fastMusicPlaybackSpeed = MessagesController.getGlobalMainSettings().getFloat("fastMusicPlaybackSpeed", 1.8f);
            SensorManager sensorManager = (SensorManager) ApplicationLoader.applicationContext.getSystemService("sensor");
            this.sensorManager = sensorManager;
            this.linearSensor = sensorManager.getDefaultSensor(10);
            Sensor defaultSensor = this.sensorManager.getDefaultSensor(9);
            this.gravitySensor = defaultSensor;
            if (this.linearSensor == null || defaultSensor == null) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m105d("gravity or linear sensor not found");
                }
                this.accelerometerSensor = this.sensorManager.getDefaultSensor(1);
                this.linearSensor = null;
                this.gravitySensor = null;
            }
            this.proximitySensor = this.sensorManager.getDefaultSensor(8);
            this.proximityWakeLock = ((PowerManager) ApplicationLoader.applicationContext.getSystemService("power")).newWakeLock(32, "telegram:proximity_lock");
        } catch (Exception e) {
            FileLog.m102e(e);
        }
        try {
            C36024 c36024 = new C36024();
            TelephonyManager telephonyManager = (TelephonyManager) ApplicationLoader.applicationContext.getSystemService("phone");
            if (telephonyManager != null) {
                telephonyManager.listen(c36024, 32);
            }
        } catch (Exception e2) {
            FileLog.m102e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.MediaController$4 */
    /* loaded from: classes4.dex */
    public class C36024 extends PhoneStateListener {
        C36024() {
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(final int i, String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.C36024.this.lambda$onCallStateChanged$0(i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCallStateChanged$0(int i) {
            if (i != 1) {
                if (i == 0) {
                    MediaController.this.callInProgress = false;
                    return;
                } else if (i == 2) {
                    EmbedBottomSheet embedBottomSheet = EmbedBottomSheet.getInstance();
                    if (embedBottomSheet != null) {
                        embedBottomSheet.pause();
                    }
                    MediaController.this.callInProgress = true;
                    return;
                } else {
                    return;
                }
            }
            MediaController mediaController = MediaController.this;
            if (!mediaController.isPlayingMessage(mediaController.playingMessageObject) || MediaController.this.isMessagePaused()) {
                if (MediaController.this.recordStartRunnable != null || MediaController.this.recordingAudio != null) {
                    MediaController.this.stopRecording(2, false, 0, false, null);
                }
            } else {
                MediaController mediaController2 = MediaController.this;
                mediaController2.lambda$startAudioAgain$7(mediaController2.playingMessageObject);
            }
            EmbedBottomSheet embedBottomSheet2 = EmbedBottomSheet.getInstance();
            if (embedBottomSheet2 != null) {
                embedBottomSheet2.pause();
            }
            MediaController.this.callInProgress = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4() {
        for (int i = 0; i < 5; i++) {
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.httpFileDidLoad);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.didReceiveNewMessages);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.messagesDeleted);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.removeAllMessagesFromDialog);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.musicDidLoad);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.mediaDidLoad);
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.playerDidStartPlaying);
        }
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$onAudioFocusChange$5(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAudioFocusChange$5(int i) {
        if (i == -1) {
            if (isPlayingMessage(getPlayingMessageObject()) && !isMessagePaused()) {
                lambda$startAudioAgain$7(this.playingMessageObject);
            }
            this.hasAudioFocus = 0;
            this.audioFocus = 0;
        } else if (i == 1) {
            this.audioFocus = 2;
            if (this.resumeAudioOnFocusGain) {
                this.resumeAudioOnFocusGain = false;
                if (isPlayingMessage(getPlayingMessageObject()) && isMessagePaused()) {
                    playMessage(getPlayingMessageObject());
                }
            }
        } else if (i == -3) {
            this.audioFocus = 1;
        } else if (i == -2) {
            this.audioFocus = 0;
            if (isPlayingMessage(getPlayingMessageObject()) && !isMessagePaused()) {
                lambda$startAudioAgain$7(this.playingMessageObject);
                this.resumeAudioOnFocusGain = true;
            }
        }
        setPlayerVolume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayerVolume() {
        float f;
        try {
            if (this.isSilent) {
                f = BitmapDescriptorFactory.HUE_RED;
            } else {
                f = this.audioFocus != 1 ? 1.0f : VOLUME_DUCK;
            }
            VideoPlayer videoPlayer = this.audioPlayer;
            if (videoPlayer != null) {
                videoPlayer.setVolume(f * this.audioVolume);
                return;
            }
            VideoPlayer videoPlayer2 = this.videoPlayer;
            if (videoPlayer2 != null) {
                videoPlayer2.setVolume(f);
            }
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    public VideoPlayer getVideoPlayer() {
        return this.videoPlayer;
    }

    private void startProgressTimer(MessageObject messageObject) {
        synchronized (this.progressTimerSync) {
            Timer timer = this.progressTimer;
            if (timer != null) {
                try {
                    timer.cancel();
                    this.progressTimer = null;
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
            }
            messageObject.getFileName();
            Timer timer2 = new Timer();
            this.progressTimer = timer2;
            timer2.schedule(new C36035(messageObject), 0L, 17L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.MediaController$5 */
    /* loaded from: classes4.dex */
    public class C36035 extends TimerTask {
        final /* synthetic */ MessageObject val$currentPlayingMessageObject;

        C36035(MessageObject messageObject) {
            this.val$currentPlayingMessageObject = messageObject;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            synchronized (MediaController.this.sync) {
                final MessageObject messageObject = this.val$currentPlayingMessageObject;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$5$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaController.C36035.this.lambda$run$1(messageObject);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(MessageObject messageObject) {
            long duration;
            long currentPosition;
            final float f;
            float f2;
            if ((MediaController.this.audioPlayer == null && MediaController.this.videoPlayer == null) || MediaController.this.isPaused) {
                return;
            }
            try {
                if (MediaController.this.videoPlayer != null) {
                    duration = MediaController.this.videoPlayer.getDuration();
                    currentPosition = MediaController.this.videoPlayer.getCurrentPosition();
                    if (currentPosition >= 0 && duration > 0) {
                        float f3 = (float) duration;
                        f2 = ((float) MediaController.this.videoPlayer.getBufferedPosition()) / f3;
                        f = ((float) currentPosition) / f3;
                        if (f >= 1.0f) {
                            return;
                        }
                    }
                    return;
                }
                duration = MediaController.this.audioPlayer.getDuration();
                currentPosition = MediaController.this.audioPlayer.getCurrentPosition();
                float f4 = duration >= 0 ? ((float) currentPosition) / ((float) duration) : 0.0f;
                float bufferedPosition = ((float) MediaController.this.audioPlayer.getBufferedPosition()) / ((float) duration);
                if (duration != C0483C.TIME_UNSET && currentPosition >= 0 && MediaController.this.seekToProgressPending == BitmapDescriptorFactory.HUE_RED) {
                    f = f4;
                    f2 = bufferedPosition;
                }
                return;
                MediaController.this.lastProgress = currentPosition;
                messageObject.audioPlayerDuration = (int) (duration / 1000);
                messageObject.audioProgress = f;
                messageObject.audioProgressSec = (int) (MediaController.this.lastProgress / 1000);
                messageObject.bufferedProgress = f2;
                if (f >= BitmapDescriptorFactory.HUE_RED && MediaController.this.shouldSavePositionForCurrentAudio != null && SystemClock.elapsedRealtime() - MediaController.this.lastSaveTime >= 1000) {
                    final String str = MediaController.this.shouldSavePositionForCurrentAudio;
                    MediaController.this.lastSaveTime = SystemClock.elapsedRealtime();
                    Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$5$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaController.C36035.lambda$run$0(str, f);
                        }
                    });
                }
                NotificationCenter.getInstance(messageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingProgressDidChanged, Integer.valueOf(messageObject.getId()), Float.valueOf(f));
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$run$0(String str, float f) {
            ApplicationLoader.applicationContext.getSharedPreferences("media_saved_pos", 0).edit().putFloat(str, f).commit();
        }
    }

    private void stopProgressTimer() {
        synchronized (this.progressTimerSync) {
            Timer timer = this.progressTimer;
            if (timer != null) {
                try {
                    timer.cancel();
                    this.progressTimer = null;
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
            }
        }
    }

    public void cleanup() {
        cleanupPlayer(true, true);
        this.audioInfo = null;
        this.playMusicAgain = false;
        for (int i = 0; i < 5; i++) {
            DownloadController.getInstance(i).cleanup();
        }
        this.videoConvertQueue.clear();
        this.generatingWaveform.clear();
        this.voiceMessagesPlaylist = null;
        this.voiceMessagesPlaylistMap = null;
        clearPlaylist();
        cancelVideoConvert(null);
    }

    private void clearPlaylist() {
        this.isFromMusicPlaylist = false;
        this.playlist.clear();
        this.playlistMap.clear();
        this.shuffledPlaylist.clear();
        this.playlistClassGuid = 0;
        boolean[] zArr = this.playlistEndReached;
        zArr[1] = false;
        zArr[0] = false;
        this.playlistMergeDialogId = 0L;
        int[] iArr = this.playlistMaxId;
        iArr[1] = Integer.MAX_VALUE;
        iArr[0] = Integer.MAX_VALUE;
        this.loadingPlaylist = false;
        this.playlistGlobalSearchParams = null;
    }

    public void startMediaObserver() {
        ApplicationLoader.applicationHandler.removeCallbacks(this.stopMediaObserverRunnable);
        this.startObserverToken++;
        try {
            if (this.internalObserver == null) {
                ContentResolver contentResolver = ApplicationLoader.applicationContext.getContentResolver();
                Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                ExternalObserver externalObserver = new ExternalObserver();
                this.externalObserver = externalObserver;
                contentResolver.registerContentObserver(uri, false, externalObserver);
            }
        } catch (Exception e) {
            FileLog.m102e(e);
        }
        try {
            if (this.externalObserver == null) {
                ContentResolver contentResolver2 = ApplicationLoader.applicationContext.getContentResolver();
                Uri uri2 = MediaStore.Images.Media.INTERNAL_CONTENT_URI;
                InternalObserver internalObserver = new InternalObserver();
                this.internalObserver = internalObserver;
                contentResolver2.registerContentObserver(uri2, false, internalObserver);
            }
        } catch (Exception e2) {
            FileLog.m102e(e2);
        }
    }

    public void stopMediaObserver() {
        if (this.stopMediaObserverRunnable == null) {
            this.stopMediaObserverRunnable = new StopMediaObserverRunnable();
        }
        this.stopMediaObserverRunnable.currentObserverToken = this.startObserverToken;
        ApplicationLoader.applicationHandler.postDelayed(this.stopMediaObserverRunnable, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007b, code lost:
        if (r10 != 0) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void processMediaObserver(android.net.Uri r14) {
        /*
            r13 = this;
            r0 = 0
            android.graphics.Point r1 = org.telegram.messenger.AndroidUtilities.getRealScreenSize()     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            android.content.Context r2 = org.telegram.messenger.ApplicationLoader.applicationContext     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            android.content.ContentResolver r3 = r2.getContentResolver()     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            java.lang.String[] r5 = r13.mediaProjections     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            r6 = 0
            r7 = 0
            java.lang.String r8 = "date_added DESC LIMIT 1"
            r4 = r14
            android.database.Cursor r0 = r3.query(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            java.util.ArrayList r14 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            r14.<init>()     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            if (r0 == 0) goto Lb2
        L1d:
            boolean r2 = r0.moveToNext()     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            if (r2 == 0) goto Laf
            r2 = 0
            java.lang.String r2 = r0.getString(r2)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            r3 = 1
            java.lang.String r4 = r0.getString(r3)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            r5 = 2
            java.lang.String r5 = r0.getString(r5)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            r6 = 3
            long r6 = r0.getLong(r6)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            r8 = 4
            java.lang.String r8 = r0.getString(r8)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            r9 = 5
            int r9 = r0.getInt(r9)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            r10 = 6
            int r10 = r0.getInt(r10)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            java.lang.String r11 = "screenshot"
            if (r2 == 0) goto L55
            java.lang.String r12 = r2.toLowerCase()     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            boolean r12 = r12.contains(r11)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            if (r12 != 0) goto L79
        L55:
            if (r4 == 0) goto L61
            java.lang.String r4 = r4.toLowerCase()     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            boolean r4 = r4.contains(r11)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            if (r4 != 0) goto L79
        L61:
            if (r5 == 0) goto L6d
            java.lang.String r4 = r5.toLowerCase()     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            boolean r4 = r4.contains(r11)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            if (r4 != 0) goto L79
        L6d:
            if (r8 == 0) goto L1d
            java.lang.String r4 = r8.toLowerCase()     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            boolean r4 = r4.contains(r11)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            if (r4 == 0) goto L1d
        L79:
            if (r9 == 0) goto L7d
            if (r10 != 0) goto L8b
        L7d:
            android.graphics.BitmapFactory$Options r4 = new android.graphics.BitmapFactory$Options     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Lc6
            r4.<init>()     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Lc6
            r4.inJustDecodeBounds = r3     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Lc6
            android.graphics.BitmapFactory.decodeFile(r2, r4)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Lc6
            int r9 = r4.outWidth     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Lc6
            int r10 = r4.outHeight     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Lc6
        L8b:
            if (r9 <= 0) goto L9d
            if (r10 <= 0) goto L9d
            int r2 = r1.x     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Lc6
            if (r9 != r2) goto L97
            int r3 = r1.y     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Lc6
            if (r10 == r3) goto L9d
        L97:
            if (r10 != r2) goto L1d
            int r2 = r1.y     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Lc6
            if (r9 != r2) goto L1d
        L9d:
            java.lang.Long r2 = java.lang.Long.valueOf(r6)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Lc6
            r14.add(r2)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Lc6
            goto L1d
        La6:
            java.lang.Long r2 = java.lang.Long.valueOf(r6)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            r14.add(r2)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            goto L1d
        Laf:
            r0.close()     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
        Lb2:
            boolean r1 = r14.isEmpty()     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            if (r1 != 0) goto Lc0
            org.telegram.messenger.MediaController$$ExternalSyntheticLambda33 r1 = new org.telegram.messenger.MediaController$$ExternalSyntheticLambda33     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            r1.<init>()     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r1)     // Catch: java.lang.Throwable -> Lc6 java.lang.Exception -> Lc8
        Lc0:
            if (r0 == 0) goto Lcf
        Lc2:
            r0.close()     // Catch: java.lang.Exception -> Lcf
            goto Lcf
        Lc6:
            r14 = move-exception
            goto Ld0
        Lc8:
            r14 = move-exception
            org.telegram.messenger.FileLog.m102e(r14)     // Catch: java.lang.Throwable -> Lc6
            if (r0 == 0) goto Lcf
            goto Lc2
        Lcf:
            return
        Ld0:
            if (r0 == 0) goto Ld5
            r0.close()     // Catch: java.lang.Exception -> Ld5
        Ld5:
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.processMediaObserver(android.net.Uri):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processMediaObserver$6(ArrayList arrayList) {
        NotificationCenter.getInstance(this.lastChatAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.screenshotTook, new Object[0]);
        checkScreenshots(arrayList);
    }

    private void checkScreenshots(ArrayList<Long> arrayList) {
        if (arrayList == null || arrayList.isEmpty() || this.lastChatEnterTime == 0) {
            return;
        }
        if (this.lastUser != null || (this.lastSecretChat instanceof TLRPC$TL_encryptedChat)) {
            boolean z = false;
            for (int i = 0; i < arrayList.size(); i++) {
                Long l = arrayList.get(i);
                if ((this.lastMediaCheckTime == 0 || l.longValue() > this.lastMediaCheckTime) && l.longValue() >= this.lastChatEnterTime && (this.lastChatLeaveTime == 0 || l.longValue() <= this.lastChatLeaveTime + ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS)) {
                    this.lastMediaCheckTime = Math.max(this.lastMediaCheckTime, l.longValue());
                    z = true;
                }
            }
            if (z) {
                if (this.lastSecretChat != null) {
                    SecretChatHelper.getInstance(this.lastChatAccount).sendScreenshotMessage(this.lastSecretChat, this.lastChatVisibleMessages, null);
                } else {
                    SendMessagesHelper.getInstance(this.lastChatAccount).sendScreenshotMessage(this.lastUser, this.lastMessageId, null);
                }
            }
        }
    }

    public void setLastVisibleMessageIds(int i, long j, long j2, TLRPC$User tLRPC$User, TLRPC$EncryptedChat tLRPC$EncryptedChat, ArrayList<Long> arrayList, int i2) {
        this.lastChatEnterTime = j;
        this.lastChatLeaveTime = j2;
        this.lastChatAccount = i;
        this.lastSecretChat = tLRPC$EncryptedChat;
        this.lastUser = tLRPC$User;
        this.lastMessageId = i2;
        this.lastChatVisibleMessages = arrayList;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        ArrayList<MessageObject> arrayList;
        int indexOf;
        int i3 = 0;
        if (i == NotificationCenter.fileLoaded || i == NotificationCenter.httpFileDidLoad) {
            String str = (String) objArr[0];
            MessageObject messageObject = this.playingMessageObject;
            if (messageObject != null && messageObject.currentAccount == i2 && FileLoader.getAttachFileName(messageObject.getDocument()).equals(str)) {
                if (this.downloadingCurrentMessage) {
                    this.playMusicAgain = true;
                    playMessage(this.playingMessageObject);
                } else if (this.audioInfo == null) {
                    try {
                        this.audioInfo = AudioInfo.getAudioInfo(FileLoader.getInstance(UserConfig.selectedAccount).getPathToMessage(this.playingMessageObject.messageOwner));
                    } catch (Exception e) {
                        FileLog.m102e(e);
                    }
                }
            }
        } else if (i == NotificationCenter.messagesDeleted) {
            if (((Boolean) objArr[2]).booleanValue()) {
                return;
            }
            long longValue = ((Long) objArr[1]).longValue();
            ArrayList arrayList2 = (ArrayList) objArr[0];
            MessageObject messageObject2 = this.playingMessageObject;
            if (messageObject2 != null && longValue == messageObject2.messageOwner.peer_id.channel_id && arrayList2.contains(Integer.valueOf(messageObject2.getId()))) {
                cleanupPlayer(true, true);
            }
            ArrayList<MessageObject> arrayList3 = this.voiceMessagesPlaylist;
            if (arrayList3 == null || arrayList3.isEmpty() || longValue != this.voiceMessagesPlaylist.get(0).messageOwner.peer_id.channel_id) {
                return;
            }
            while (i3 < arrayList2.size()) {
                Integer num = (Integer) arrayList2.get(i3);
                MessageObject messageObject3 = this.voiceMessagesPlaylistMap.get(num.intValue());
                this.voiceMessagesPlaylistMap.remove(num.intValue());
                if (messageObject3 != null) {
                    this.voiceMessagesPlaylist.remove(messageObject3);
                }
                i3++;
            }
        } else if (i == NotificationCenter.removeAllMessagesFromDialog) {
            long longValue2 = ((Long) objArr[0]).longValue();
            MessageObject messageObject4 = this.playingMessageObject;
            if (messageObject4 == null || messageObject4.getDialogId() != longValue2) {
                return;
            }
            cleanupPlayer(false, true);
        } else if (i == NotificationCenter.musicDidLoad) {
            long longValue3 = ((Long) objArr[0]).longValue();
            MessageObject messageObject5 = this.playingMessageObject;
            if (messageObject5 == null || !messageObject5.isMusic() || this.playingMessageObject.getDialogId() != longValue3 || this.playingMessageObject.scheduled || this.isFromMusicPlaylist) {
                return;
            }
            this.playlist.addAll(0, (ArrayList) objArr[1]);
            this.playlist.addAll((ArrayList) objArr[2]);
            int size = this.playlist.size();
            for (int i4 = 0; i4 < size; i4++) {
                MessageObject messageObject6 = this.playlist.get(i4);
                this.playlistMap.put(Integer.valueOf(messageObject6.getId()), messageObject6);
                int[] iArr = this.playlistMaxId;
                iArr[0] = Math.min(iArr[0], messageObject6.getId());
            }
            sortPlaylist();
            if (SharedConfig.shuffleMusic) {
                buildShuffledPlayList();
            } else {
                MessageObject messageObject7 = this.playingMessageObject;
                if (messageObject7 != null && (indexOf = this.playlist.indexOf(messageObject7)) >= 0) {
                    this.currentPlaylistNum = indexOf;
                }
            }
            this.playlistClassGuid = ConnectionsManager.generateClassGuid();
        } else if (i == NotificationCenter.mediaDidLoad) {
            if (((Integer) objArr[3]).intValue() != this.playlistClassGuid || this.playingMessageObject == null) {
                return;
            }
            long longValue4 = ((Long) objArr[0]).longValue();
            ((Integer) objArr[4]).intValue();
            ArrayList arrayList4 = (ArrayList) objArr[2];
            DialogObject.isEncryptedDialog(longValue4);
            char c = longValue4 == this.playlistMergeDialogId ? (char) 1 : (char) 0;
            if (!arrayList4.isEmpty()) {
                this.playlistEndReached[c] = ((Boolean) objArr[5]).booleanValue();
            }
            int i5 = 0;
            for (int i6 = 0; i6 < arrayList4.size(); i6++) {
                MessageObject messageObject8 = (MessageObject) arrayList4.get(i6);
                if (!messageObject8.isVoiceOnce() && !this.playlistMap.containsKey(Integer.valueOf(messageObject8.getId()))) {
                    i5++;
                    this.playlist.add(0, messageObject8);
                    this.playlistMap.put(Integer.valueOf(messageObject8.getId()), messageObject8);
                    int[] iArr2 = this.playlistMaxId;
                    iArr2[c] = Math.min(iArr2[c], messageObject8.getId());
                }
            }
            sortPlaylist();
            int indexOf2 = this.playlist.indexOf(this.playingMessageObject);
            if (indexOf2 >= 0) {
                this.currentPlaylistNum = indexOf2;
            }
            this.loadingPlaylist = false;
            if (SharedConfig.shuffleMusic) {
                buildShuffledPlayList();
            }
            if (i5 != 0) {
                NotificationCenter.getInstance(this.playingMessageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.moreMusicDidLoad, Integer.valueOf(i5));
            }
        } else if (i == NotificationCenter.didReceiveNewMessages) {
            if (((Boolean) objArr[2]).booleanValue() || (arrayList = this.voiceMessagesPlaylist) == null || arrayList.isEmpty() || ((Long) objArr[0]).longValue() != this.voiceMessagesPlaylist.get(0).getDialogId()) {
                return;
            }
            ArrayList arrayList5 = (ArrayList) objArr[1];
            while (i3 < arrayList5.size()) {
                MessageObject messageObject9 = (MessageObject) arrayList5.get(i3);
                if ((messageObject9.isVoice() || messageObject9.isRoundVideo()) && !messageObject9.isVoiceOnce() && !messageObject9.isRoundOnce() && (!this.voiceMessagesPlaylistUnread || (messageObject9.isContentUnread() && !messageObject9.isOut()))) {
                    this.voiceMessagesPlaylist.add(messageObject9);
                    this.voiceMessagesPlaylistMap.put(messageObject9.getId(), messageObject9);
                }
                i3++;
            }
        } else if (i == NotificationCenter.playerDidStartPlaying && !isCurrentPlayer((VideoPlayer) objArr[0])) {
            MessageObject playingMessageObject = getPlayingMessageObject();
            if (playingMessageObject != null && isPlayingMessage(playingMessageObject) && !isMessagePaused() && (playingMessageObject.isMusic() || playingMessageObject.isVoice())) {
                this.wasPlayingAudioBeforePause = true;
            }
            lambda$startAudioAgain$7(playingMessageObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isRecordingAudio() {
        return (this.recordStartRunnable == null && this.recordingAudio == null) ? false : true;
    }

    private boolean isNearToSensor(float f) {
        return f < 5.0f && f != this.proximitySensor.getMaximumRange();
    }

    public boolean isRecordingOrListeningByProximity() {
        MessageObject messageObject;
        return this.proximityTouched && (isRecordingAudio() || ((messageObject = this.playingMessageObject) != null && (messageObject.isVoice() || this.playingMessageObject.isRoundVideo())));
    }

    private boolean forbidRaiseToListen() {
        AudioDeviceInfo[] devices;
        try {
            if (Build.VERSION.SDK_INT < 23) {
                return NotificationsController.audioManager.isWiredHeadsetOn() || NotificationsController.audioManager.isBluetoothA2dpOn() || NotificationsController.audioManager.isBluetoothScoOn();
            }
            for (AudioDeviceInfo audioDeviceInfo : NotificationsController.audioManager.getDevices(2)) {
                int type = audioDeviceInfo.getType();
                if ((type == 8 || type == 7 || type == 26 || type == 27 || type == 4 || type == 3) && audioDeviceInfo.isSink()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            FileLog.m102e(e);
            return false;
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        long j;
        int i;
        boolean z;
        int i2;
        MessageObject messageObject;
        if (this.sensorsStarted && VoIPService.getSharedInstance() == null) {
            if (sensorEvent.sensor.getType() == 8) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m105d("proximity changed to " + sensorEvent.values[0] + " max value = " + sensorEvent.sensor.getMaximumRange());
                }
                float f = this.lastProximityValue;
                float[] fArr = sensorEvent.values;
                if (f != fArr[0]) {
                    this.proximityHasDifferentValues = true;
                }
                this.lastProximityValue = fArr[0];
                if (this.proximityHasDifferentValues) {
                    this.proximityTouched = isNearToSensor(fArr[0]);
                }
            } else {
                Sensor sensor = sensorEvent.sensor;
                if (sensor == this.accelerometerSensor) {
                    double d = this.lastTimestamp == 0 ? 0.9800000190734863d : 1.0d / (((sensorEvent.timestamp - j) / 1.0E9d) + 1.0d);
                    this.lastTimestamp = sensorEvent.timestamp;
                    float[] fArr2 = this.gravity;
                    double d2 = 1.0d - d;
                    float[] fArr3 = sensorEvent.values;
                    fArr2[0] = (float) ((fArr2[0] * d) + (fArr3[0] * d2));
                    fArr2[1] = (float) ((fArr2[1] * d) + (fArr3[1] * d2));
                    fArr2[2] = (float) ((d * fArr2[2]) + (d2 * fArr3[2]));
                    float[] fArr4 = this.gravityFast;
                    fArr4[0] = (fArr2[0] * 0.8f) + (fArr3[0] * 0.19999999f);
                    fArr4[1] = (fArr2[1] * 0.8f) + (fArr3[1] * 0.19999999f);
                    fArr4[2] = (fArr2[2] * 0.8f) + (fArr3[2] * 0.19999999f);
                    float[] fArr5 = this.linearAcceleration;
                    fArr5[0] = fArr3[0] - fArr2[0];
                    fArr5[1] = fArr3[1] - fArr2[1];
                    fArr5[2] = fArr3[2] - fArr2[2];
                } else if (sensor == this.linearSensor) {
                    float[] fArr6 = this.linearAcceleration;
                    float[] fArr7 = sensorEvent.values;
                    fArr6[0] = fArr7[0];
                    fArr6[1] = fArr7[1];
                    fArr6[2] = fArr7[2];
                } else if (sensor == this.gravitySensor) {
                    float[] fArr8 = this.gravityFast;
                    float[] fArr9 = this.gravity;
                    float[] fArr10 = sensorEvent.values;
                    float f2 = fArr10[0];
                    fArr9[0] = f2;
                    fArr8[0] = f2;
                    float f3 = fArr10[1];
                    fArr9[1] = f3;
                    fArr8[1] = f3;
                    float f4 = fArr10[2];
                    fArr9[2] = f4;
                    fArr8[2] = f4;
                }
            }
            Sensor sensor2 = sensorEvent.sensor;
            if (sensor2 == this.linearSensor || sensor2 == this.gravitySensor || sensor2 == this.accelerometerSensor) {
                float[] fArr11 = this.gravity;
                float f5 = fArr11[0];
                float[] fArr12 = this.linearAcceleration;
                float f6 = (f5 * fArr12[0]) + (fArr11[1] * fArr12[1]) + (fArr11[2] * fArr12[2]);
                int i3 = this.raisedToBack;
                if (i3 != 6 && ((f6 > BitmapDescriptorFactory.HUE_RED && this.previousAccValue > BitmapDescriptorFactory.HUE_RED) || (f6 < BitmapDescriptorFactory.HUE_RED && this.previousAccValue < BitmapDescriptorFactory.HUE_RED))) {
                    if (i > 0) {
                        z = f6 > 15.0f;
                        i2 = 1;
                    } else {
                        z = f6 < -15.0f;
                        i2 = 2;
                    }
                    int i4 = this.raisedToTopSign;
                    if (i4 != 0 && i4 != i2) {
                        int i5 = this.raisedToTop;
                        if (i5 != 6 || !z) {
                            if (!z) {
                                this.countLess++;
                            }
                            if (this.countLess == 10 || i5 != 6 || i3 != 0) {
                                this.raisedToTop = 0;
                                this.raisedToTopSign = 0;
                                this.raisedToBack = 0;
                                this.countLess = 0;
                            }
                        } else if (i3 < 6) {
                            int i6 = i3 + 1;
                            this.raisedToBack = i6;
                            if (i6 == 6) {
                                this.raisedToTop = 0;
                                this.raisedToTopSign = 0;
                                this.countLess = 0;
                                this.timeSinceRaise = System.currentTimeMillis();
                                if (BuildVars.LOGS_ENABLED && BuildVars.DEBUG_PRIVATE_VERSION) {
                                    FileLog.m105d("motion detected");
                                }
                            }
                        }
                    } else if (z && i3 == 0 && (i4 == 0 || i4 == i2)) {
                        int i7 = this.raisedToTop;
                        if (i7 < 6 && !this.proximityTouched) {
                            this.raisedToTopSign = i2;
                            int i8 = i7 + 1;
                            this.raisedToTop = i8;
                            if (i8 == 6) {
                                this.countLess = 0;
                            }
                        }
                    } else {
                        if (!z) {
                            this.countLess++;
                        }
                        if (i4 != i2 || this.countLess == 10 || this.raisedToTop != 6 || i3 != 0) {
                            this.raisedToBack = 0;
                            this.raisedToTop = 0;
                            this.raisedToTopSign = 0;
                            this.countLess = 0;
                        }
                    }
                }
                this.previousAccValue = f6;
                float[] fArr13 = this.gravityFast;
                this.accelerometerVertical = fArr13[1] > 2.5f && Math.abs(fArr13[2]) < 4.0f && Math.abs(this.gravityFast[0]) > 1.5f;
            }
            if (this.raisedToBack == 6 || this.accelerometerVertical) {
                this.lastAccelerometerDetected = System.currentTimeMillis();
            }
            boolean z2 = !this.manualRecording && this.playingMessageObject == null && SharedConfig.enabledRaiseTo(true) && ApplicationLoader.isScreenOn && !this.inputFieldHasText && this.allowStartRecord && this.raiseChat != null && !this.callInProgress;
            boolean z3 = SharedConfig.enabledRaiseTo(false) && (messageObject = this.playingMessageObject) != null && (messageObject.isVoice() || this.playingMessageObject.isRoundVideo());
            boolean z4 = this.proximityTouched;
            boolean z5 = this.raisedToBack == 6 || this.accelerometerVertical || System.currentTimeMillis() - this.lastAccelerometerDetected < 60;
            boolean z6 = this.useFrontSpeaker || this.raiseToEarRecord;
            boolean z7 = (z5 || z6) && !forbidRaiseToListen() && !VoIPService.isAnyKindOfCallActive() && (z2 || z3) && !PhotoViewer.getInstance().isVisible();
            PowerManager.WakeLock wakeLock = this.proximityWakeLock;
            if (wakeLock != null) {
                boolean isHeld = wakeLock.isHeld();
                if (isHeld && !z7) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m105d("wake lock releasing (proximityDetected=" + z4 + ", accelerometerDetected=" + z5 + ", alreadyPlaying=" + z6 + ")");
                    }
                    this.proximityWakeLock.release();
                } else if (!isHeld && z7) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m105d("wake lock acquiring (proximityDetected=" + z4 + ", accelerometerDetected=" + z5 + ", alreadyPlaying=" + z6 + ")");
                    }
                    this.proximityWakeLock.acquire();
                }
            }
            boolean z8 = this.proximityTouched;
            if (z8 && z7) {
                if (z2 && this.recordStartRunnable == null) {
                    if (!this.raiseToEarRecord) {
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m105d("start record");
                        }
                        this.useFrontSpeaker = true;
                        if (this.recordingAudio != null || !this.raiseChat.playFirstUnreadVoiceMessage()) {
                            this.raiseToEarRecord = true;
                            this.useFrontSpeaker = false;
                            raiseToSpeakUpdated(true);
                        }
                        if (this.useFrontSpeaker) {
                            setUseFrontSpeaker(true);
                        }
                    }
                } else if (z3 && !this.useFrontSpeaker) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m105d("start listen");
                    }
                    setUseFrontSpeaker(true);
                    startAudioAgain(false);
                }
                this.raisedToBack = 0;
                this.raisedToTop = 0;
                this.raisedToTopSign = 0;
                this.countLess = 0;
            } else if (z8 && ((this.accelerometerSensor == null || this.linearSensor == null) && this.gravitySensor == null && !VoIPService.isAnyKindOfCallActive())) {
                if (this.playingMessageObject != null && !ApplicationLoader.mainInterfacePaused && z3 && !this.useFrontSpeaker && !this.manualRecording && !forbidRaiseToListen()) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m105d("start listen by proximity only");
                    }
                    setUseFrontSpeaker(true);
                    startAudioAgain(false);
                }
            } else if (!this.proximityTouched && !this.manualRecording) {
                if (this.raiseToEarRecord) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m105d("stop record");
                    }
                    raiseToSpeakUpdated(false);
                    this.raiseToEarRecord = false;
                    this.ignoreOnPause = false;
                } else if (this.useFrontSpeaker) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m105d("stop listen");
                    }
                    this.useFrontSpeaker = false;
                    startAudioAgain(true);
                    this.ignoreOnPause = false;
                }
            }
            if (this.timeSinceRaise == 0 || this.raisedToBack != 6 || Math.abs(System.currentTimeMillis() - this.timeSinceRaise) <= 1000) {
                return;
            }
            this.raisedToBack = 0;
            this.raisedToTop = 0;
            this.raisedToTopSign = 0;
            this.countLess = 0;
            this.timeSinceRaise = 0L;
        }
    }

    private void raiseToSpeakUpdated(boolean z) {
        if (this.recordingAudio != null) {
            toggleRecordingPause();
        } else if (z) {
            startRecording(this.raiseChat.getCurrentAccount(), this.raiseChat.getDialogId(), null, this.raiseChat.getThreadMessage(), null, this.raiseChat.getClassGuid(), false);
        } else {
            stopRecording(2, false, 0, false, null);
        }
    }

    private void setUseFrontSpeaker(boolean z) {
        this.useFrontSpeaker = z;
        AudioManager audioManager = NotificationsController.audioManager;
        if (z) {
            audioManager.setBluetoothScoOn(false);
            audioManager.setSpeakerphoneOn(false);
            return;
        }
        audioManager.setSpeakerphoneOn(true);
    }

    public void startRecordingIfFromSpeaker() {
        if (this.useFrontSpeaker && this.raiseChat != null && this.allowStartRecord && SharedConfig.enabledRaiseTo(true)) {
            this.raiseToEarRecord = true;
            startRecording(this.raiseChat.getCurrentAccount(), this.raiseChat.getDialogId(), null, this.raiseChat.getThreadMessage(), null, this.raiseChat.getClassGuid(), false);
            this.ignoreOnPause = true;
        }
    }

    private void startAudioAgain(boolean z) {
        MessageObject messageObject = this.playingMessageObject;
        if (messageObject == null) {
            return;
        }
        NotificationCenter.getInstance(messageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioRouteChanged, Boolean.valueOf(this.useFrontSpeaker));
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.setStreamType(this.useFrontSpeaker ? 0 : 3);
            if (!z) {
                if (this.videoPlayer.getCurrentPosition() < 1000) {
                    this.videoPlayer.seekTo(0L);
                }
                this.videoPlayer.play();
                return;
            }
            lambda$startAudioAgain$7(this.playingMessageObject);
            return;
        }
        VideoPlayer videoPlayer2 = this.audioPlayer;
        boolean z2 = videoPlayer2 != null;
        final MessageObject messageObject2 = this.playingMessageObject;
        float f = messageObject2.audioProgress;
        int i = messageObject2.audioPlayerDuration;
        if (z || videoPlayer2 == null || !videoPlayer2.isPlaying() || i * f > 1.0f) {
            messageObject2.audioProgress = f;
        } else {
            messageObject2.audioProgress = BitmapDescriptorFactory.HUE_RED;
        }
        cleanupPlayer(false, true);
        playMessage(messageObject2);
        if (z) {
            if (z2) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda34
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaController.this.lambda$startAudioAgain$7(messageObject2);
                    }
                }, 100L);
            } else {
                lambda$startAudioAgain$7(messageObject2);
            }
        }
    }

    public void setInputFieldHasText(boolean z) {
        this.inputFieldHasText = z;
    }

    public void setAllowStartRecord(boolean z) {
        this.allowStartRecord = z;
    }

    public void startRaiseToEarSensors(ChatActivity chatActivity) {
        if (chatActivity != null) {
            if ((this.accelerometerSensor == null && (this.gravitySensor == null || this.linearAcceleration == null)) || this.proximitySensor == null) {
                return;
            }
            if (!SharedConfig.enabledRaiseTo(false)) {
                MessageObject messageObject = this.playingMessageObject;
                if (messageObject == null) {
                    return;
                }
                if (!messageObject.isVoice() && !this.playingMessageObject.isRoundVideo()) {
                    return;
                }
            }
            this.raiseChat = chatActivity;
            if (this.sensorsStarted) {
                return;
            }
            float[] fArr = this.gravity;
            fArr[2] = 0.0f;
            fArr[1] = 0.0f;
            fArr[0] = 0.0f;
            float[] fArr2 = this.linearAcceleration;
            fArr2[2] = 0.0f;
            fArr2[1] = 0.0f;
            fArr2[0] = 0.0f;
            float[] fArr3 = this.gravityFast;
            fArr3[2] = 0.0f;
            fArr3[1] = 0.0f;
            fArr3[0] = 0.0f;
            this.lastTimestamp = 0L;
            this.previousAccValue = BitmapDescriptorFactory.HUE_RED;
            this.raisedToTop = 0;
            this.raisedToTopSign = 0;
            this.countLess = 0;
            this.raisedToBack = 0;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.this.lambda$startRaiseToEarSensors$8();
                }
            });
            this.sensorsStarted = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRaiseToEarSensors$8() {
        Sensor sensor = this.gravitySensor;
        if (sensor != null) {
            this.sensorManager.registerListener(this, sensor, 30000);
        }
        Sensor sensor2 = this.linearSensor;
        if (sensor2 != null) {
            this.sensorManager.registerListener(this, sensor2, 30000);
        }
        Sensor sensor3 = this.accelerometerSensor;
        if (sensor3 != null) {
            this.sensorManager.registerListener(this, sensor3, 30000);
        }
        this.sensorManager.registerListener(this, this.proximitySensor, 3);
    }

    public void stopRaiseToEarSensors(ChatActivity chatActivity, boolean z, boolean z2) {
        if (this.ignoreOnPause) {
            this.ignoreOnPause = false;
            return;
        }
        if (z2) {
            stopRecording(z ? 2 : 0, false, 0, false, null);
        }
        if (!this.sensorsStarted || this.ignoreOnPause) {
            return;
        }
        if ((this.accelerometerSensor == null && (this.gravitySensor == null || this.linearAcceleration == null)) || this.proximitySensor == null || this.raiseChat != chatActivity) {
            return;
        }
        this.raiseChat = null;
        this.sensorsStarted = false;
        this.accelerometerVertical = false;
        this.proximityTouched = false;
        this.raiseToEarRecord = false;
        this.useFrontSpeaker = false;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$stopRaiseToEarSensors$9();
            }
        });
        PowerManager.WakeLock wakeLock = this.proximityWakeLock;
        if (wakeLock == null || !wakeLock.isHeld()) {
            return;
        }
        this.proximityWakeLock.release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopRaiseToEarSensors$9() {
        Sensor sensor = this.linearSensor;
        if (sensor != null) {
            this.sensorManager.unregisterListener(this, sensor);
        }
        Sensor sensor2 = this.gravitySensor;
        if (sensor2 != null) {
            this.sensorManager.unregisterListener(this, sensor2);
        }
        Sensor sensor3 = this.accelerometerSensor;
        if (sensor3 != null) {
            this.sensorManager.unregisterListener(this, sensor3);
        }
        this.sensorManager.unregisterListener(this, this.proximitySensor);
    }

    public void cleanupPlayer(boolean z, boolean z2) {
        cleanupPlayer(z, z2, false, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x01da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void cleanupPlayer(boolean r11, boolean r12, boolean r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.cleanupPlayer(boolean, boolean, boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupPlayer$10(VideoPlayer videoPlayer, ValueAnimator valueAnimator) {
        videoPlayer.setVolume((this.audioFocus != 1 ? 1.0f : VOLUME_DUCK) * ((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public boolean isGoingToShowMessageObject(MessageObject messageObject) {
        return this.goingToShowMessageObject == messageObject;
    }

    public void resetGoingToShowMessageObject() {
        this.goingToShowMessageObject = null;
    }

    private boolean isSamePlayingMessage(MessageObject messageObject) {
        MessageObject messageObject2 = this.playingMessageObject;
        if (messageObject2 != null && messageObject2.getDialogId() == messageObject.getDialogId() && this.playingMessageObject.getId() == messageObject.getId()) {
            if ((this.playingMessageObject.eventId == 0) == (messageObject.eventId == 0)) {
                return true;
            }
        }
        return false;
    }

    public boolean seekToProgress(MessageObject messageObject, float f) {
        MessageObject messageObject2 = this.playingMessageObject;
        if ((this.audioPlayer != null || this.videoPlayer != null) && messageObject != null && messageObject2 != null && isSamePlayingMessage(messageObject)) {
            try {
                VideoPlayer videoPlayer = this.audioPlayer;
                if (videoPlayer != null) {
                    long duration = videoPlayer.getDuration();
                    if (duration == C0483C.TIME_UNSET) {
                        this.seekToProgressPending = f;
                    } else {
                        messageObject2.audioProgress = f;
                        long j = (int) (((float) duration) * f);
                        this.audioPlayer.seekTo(j);
                        this.lastProgress = j;
                    }
                } else {
                    VideoPlayer videoPlayer2 = this.videoPlayer;
                    if (videoPlayer2 != null) {
                        videoPlayer2.seekTo(((float) videoPlayer2.getDuration()) * f);
                    }
                }
                NotificationCenter.getInstance(messageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingDidSeek, Integer.valueOf(messageObject2.getId()), Float.valueOf(f));
                return true;
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
        return false;
    }

    public long getDuration() {
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer == null) {
            return 0L;
        }
        return videoPlayer.getDuration();
    }

    public MessageObject getPlayingMessageObject() {
        return this.playingMessageObject;
    }

    public int getPlayingMessageObjectNum() {
        return this.currentPlaylistNum;
    }

    private void buildShuffledPlayList() {
        if (this.playlist.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.playlist);
        this.shuffledPlaylist.clear();
        MessageObject messageObject = this.playlist.get(this.currentPlaylistNum);
        arrayList.remove(this.currentPlaylistNum);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            int nextInt = Utilities.random.nextInt(arrayList.size());
            this.shuffledPlaylist.add((MessageObject) arrayList.get(nextInt));
            arrayList.remove(nextInt);
        }
        this.shuffledPlaylist.add(messageObject);
        this.currentPlaylistNum = this.shuffledPlaylist.size() - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadMoreMusic() {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.loadMoreMusic():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMoreMusic$12(final int i, final int i2, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$loadMoreMusic$11(i, tLRPC$TL_error, tLObject, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMoreMusic$11(int i, TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, int i2) {
        PlaylistGlobalSearchParams playlistGlobalSearchParams;
        if (this.playlistClassGuid != i || (playlistGlobalSearchParams = this.playlistGlobalSearchParams) == null || this.playingMessageObject == null || tLRPC$TL_error != null) {
            return;
        }
        this.loadingPlaylist = false;
        TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
        playlistGlobalSearchParams.nextSearchRate = tLRPC$messages_Messages.next_rate;
        MessagesStorage.getInstance(i2).putUsersAndChats(tLRPC$messages_Messages.users, tLRPC$messages_Messages.chats, true, true);
        MessagesController.getInstance(i2).putUsers(tLRPC$messages_Messages.users, false);
        MessagesController.getInstance(i2).putChats(tLRPC$messages_Messages.chats, false);
        int size = tLRPC$messages_Messages.messages.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            MessageObject messageObject = new MessageObject(i2, tLRPC$messages_Messages.messages.get(i4), false, true);
            if (!messageObject.isVoiceOnce() && !this.playlistMap.containsKey(Integer.valueOf(messageObject.getId()))) {
                this.playlist.add(0, messageObject);
                this.playlistMap.put(Integer.valueOf(messageObject.getId()), messageObject);
                i3++;
            }
        }
        sortPlaylist();
        this.loadingPlaylist = false;
        this.playlistGlobalSearchParams.endReached = this.playlist.size() == this.playlistGlobalSearchParams.totalCount;
        if (SharedConfig.shuffleMusic) {
            buildShuffledPlayList();
        }
        if (i3 != 0) {
            NotificationCenter.getInstance(this.playingMessageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.moreMusicDidLoad, Integer.valueOf(i3));
        }
    }

    public boolean setPlaylist(ArrayList<MessageObject> arrayList, MessageObject messageObject, long j, PlaylistGlobalSearchParams playlistGlobalSearchParams) {
        return setPlaylist(arrayList, messageObject, j, true, playlistGlobalSearchParams);
    }

    public boolean setPlaylist(ArrayList<MessageObject> arrayList, MessageObject messageObject, long j, boolean z) {
        return setPlaylist(arrayList, messageObject, j, true, null, z);
    }

    public boolean setPlaylist(ArrayList<MessageObject> arrayList, MessageObject messageObject, long j, boolean z, PlaylistGlobalSearchParams playlistGlobalSearchParams, boolean z2) {
        if (this.playingMessageObject == messageObject) {
            int indexOf = this.playlist.indexOf(messageObject);
            if (indexOf >= 0) {
                this.currentPlaylistNum = indexOf;
            }
            return playMessage(messageObject);
        }
        this.isFromMusicPlaylist = z2;
        this.forceLoopCurrentPlaylist = !z;
        this.playlistMergeDialogId = j;
        this.playMusicAgain = !this.playlist.isEmpty();
        clearPlaylist();
        this.playlistGlobalSearchParams = playlistGlobalSearchParams;
        boolean z3 = false;
        if (!arrayList.isEmpty() && DialogObject.isEncryptedDialog(arrayList.get(0).getDialogId())) {
            z3 = true;
        }
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MIN_VALUE;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            MessageObject messageObject2 = arrayList.get(size);
            if (messageObject2.isMusic()) {
                int id = messageObject2.getId();
                if (id > 0 || z3) {
                    i = Math.min(i, id);
                    i2 = Math.max(i2, id);
                }
                this.playlist.add(messageObject2);
                this.playlistMap.put(Integer.valueOf(id), messageObject2);
            }
        }
        sortPlaylist();
        int indexOf2 = this.playlist.indexOf(messageObject);
        this.currentPlaylistNum = indexOf2;
        if (indexOf2 == -1) {
            clearPlaylist();
            this.currentPlaylistNum = this.playlist.size();
            this.playlist.add(messageObject);
            this.playlistMap.put(Integer.valueOf(messageObject.getId()), messageObject);
        }
        if (messageObject.isMusic() && !messageObject.scheduled && !this.isFromMusicPlaylist) {
            if (SharedConfig.shuffleMusic) {
                buildShuffledPlayList();
            }
            if (z) {
                if (this.playlistGlobalSearchParams == null) {
                    MediaDataController.getInstance(messageObject.currentAccount).loadMusic(messageObject.getDialogId(), i, i2);
                } else {
                    this.playlistClassGuid = ConnectionsManager.generateClassGuid();
                }
            }
        }
        return playMessage(messageObject);
    }

    private void sortPlaylist() {
        Collections.sort(this.playlist, new Comparator() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda46
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$sortPlaylist$13;
                lambda$sortPlaylist$13 = MediaController.lambda$sortPlaylist$13((MessageObject) obj, (MessageObject) obj2);
                return lambda$sortPlaylist$13;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$sortPlaylist$13(MessageObject messageObject, MessageObject messageObject2) {
        int compare;
        int id = messageObject.getId();
        int id2 = messageObject2.getId();
        long j = messageObject.messageOwner.grouped_id;
        long j2 = messageObject2.messageOwner.grouped_id;
        if (id >= 0 || id2 >= 0) {
            if (j != 0 && j == j2) {
                compare = Integer.compare(id2, id);
            } else {
                return Integer.compare(id, id2);
            }
        } else if (j != 0 && j == j2) {
            compare = Integer.compare(id, id2);
        } else {
            return Integer.compare(id2, id);
        }
        return -compare;
    }

    public void playNextMessage() {
        playNextMessageWithoutOrder(false);
    }

    public boolean findMessageInPlaylistAndPlay(MessageObject messageObject) {
        int indexOf = this.playlist.indexOf(messageObject);
        if (indexOf == -1) {
            return playMessage(messageObject);
        }
        playMessageAtIndex(indexOf);
        return true;
    }

    public void playMessageAtIndex(int i) {
        int i2 = this.currentPlaylistNum;
        if (i2 < 0 || i2 >= this.playlist.size()) {
            return;
        }
        this.currentPlaylistNum = i;
        this.playMusicAgain = true;
        MessageObject messageObject = this.playlist.get(i);
        if (this.playingMessageObject != null && !isSamePlayingMessage(messageObject)) {
            this.playingMessageObject.resetPlayingProgress();
        }
        playMessage(messageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playNextMessageWithoutOrder(boolean z) {
        int i;
        ArrayList<MessageObject> arrayList = SharedConfig.shuffleMusic ? this.shuffledPlaylist : this.playlist;
        if (z && (((i = SharedConfig.repeatMode) == 2 || (i == 1 && arrayList.size() == 1)) && !this.forceLoopCurrentPlaylist)) {
            cleanupPlayer(false, false);
            MessageObject messageObject = arrayList.get(this.currentPlaylistNum);
            messageObject.audioProgress = BitmapDescriptorFactory.HUE_RED;
            messageObject.audioProgressSec = 0;
            playMessage(messageObject);
            return;
        }
        if (traversePlaylist(arrayList, SharedConfig.playOrderReversed ? 1 : -1) && z && SharedConfig.repeatMode == 0 && !this.forceLoopCurrentPlaylist) {
            VideoPlayer videoPlayer = this.audioPlayer;
            if (videoPlayer == null && this.videoPlayer == null) {
                return;
            }
            if (videoPlayer != null) {
                try {
                    videoPlayer.releasePlayer(true);
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
                this.audioPlayer = null;
                Theme.unrefAudioVisualizeDrawable(this.playingMessageObject);
            } else {
                this.currentAspectRatioFrameLayout = null;
                this.currentTextureViewContainer = null;
                this.currentAspectRatioFrameLayoutReady = false;
                this.currentTextureView = null;
                this.videoPlayer.releasePlayer(true);
                this.videoPlayer = null;
                try {
                    this.baseActivity.getWindow().clearFlags(128);
                } catch (Exception e2) {
                    FileLog.m102e(e2);
                }
                AndroidUtilities.cancelRunOnUIThread(this.setLoadingRunnable);
                FileLoader.getInstance(this.playingMessageObject.currentAccount).removeLoadingVideo(this.playingMessageObject.getDocument(), true, false);
            }
            stopProgressTimer();
            this.lastProgress = 0L;
            this.isPaused = true;
            MessageObject messageObject2 = this.playingMessageObject;
            messageObject2.audioProgress = BitmapDescriptorFactory.HUE_RED;
            messageObject2.audioProgressSec = 0;
            NotificationCenter.getInstance(messageObject2.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingProgressDidChanged, Integer.valueOf(this.playingMessageObject.getId()), 0);
            NotificationCenter.getInstance(this.playingMessageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingPlayStateChanged, Integer.valueOf(this.playingMessageObject.getId()));
            return;
        }
        int i2 = this.currentPlaylistNum;
        if (i2 < 0 || i2 >= arrayList.size()) {
            return;
        }
        MessageObject messageObject3 = this.playingMessageObject;
        if (messageObject3 != null) {
            messageObject3.resetPlayingProgress();
        }
        this.playMusicAgain = true;
        playMessage(arrayList.get(this.currentPlaylistNum));
    }

    public void playPreviousMessage() {
        int i;
        ArrayList<MessageObject> arrayList = SharedConfig.shuffleMusic ? this.shuffledPlaylist : this.playlist;
        if (arrayList.isEmpty() || (i = this.currentPlaylistNum) < 0 || i >= arrayList.size()) {
            return;
        }
        MessageObject messageObject = arrayList.get(this.currentPlaylistNum);
        if (messageObject.audioProgressSec > 10) {
            seekToProgress(messageObject, BitmapDescriptorFactory.HUE_RED);
            return;
        }
        traversePlaylist(arrayList, SharedConfig.playOrderReversed ? -1 : 1);
        if (this.currentPlaylistNum >= arrayList.size()) {
            return;
        }
        this.playMusicAgain = true;
        playMessage(arrayList.get(this.currentPlaylistNum));
    }

    private boolean traversePlaylist(ArrayList<MessageObject> arrayList, int i) {
        MessageObject messageObject;
        int i2;
        MessageObject messageObject2;
        int i3 = this.currentPlaylistNum;
        boolean z = ConnectionsManager.getInstance(UserConfig.selectedAccount).getConnectionState() == 2;
        this.currentPlaylistNum += i;
        if (z) {
            while (this.currentPlaylistNum < arrayList.size() && (i2 = this.currentPlaylistNum) >= 0 && ((messageObject2 = arrayList.get(i2)) == null || !messageObject2.mediaExists)) {
                this.currentPlaylistNum += i;
            }
        }
        if (this.currentPlaylistNum >= arrayList.size() || this.currentPlaylistNum < 0) {
            this.currentPlaylistNum = this.currentPlaylistNum >= arrayList.size() ? 0 : arrayList.size() - 1;
            if (z) {
                while (true) {
                    int i4 = this.currentPlaylistNum;
                    if (i4 < 0 || i4 >= arrayList.size()) {
                        break;
                    }
                    int i5 = this.currentPlaylistNum;
                    if (i > 0) {
                        if (i5 > i3) {
                            break;
                        }
                        messageObject = arrayList.get(this.currentPlaylistNum);
                        if (messageObject == null && messageObject.mediaExists) {
                            break;
                        }
                        this.currentPlaylistNum += i;
                    } else {
                        if (i5 < i3) {
                            break;
                        }
                        messageObject = arrayList.get(this.currentPlaylistNum);
                        if (messageObject == null) {
                        }
                        this.currentPlaylistNum += i;
                    }
                }
                if (this.currentPlaylistNum >= arrayList.size() || this.currentPlaylistNum < 0) {
                    this.currentPlaylistNum = this.currentPlaylistNum < arrayList.size() ? arrayList.size() - 1 : 0;
                    return true;
                }
                return true;
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkIsNextMediaFileDownloaded() {
        MessageObject messageObject = this.playingMessageObject;
        if (messageObject == null || !messageObject.isMusic()) {
            return;
        }
        checkIsNextMusicFileDownloaded(this.playingMessageObject.currentAccount);
    }

    private void checkIsNextVoiceFileDownloaded(int i) {
        ArrayList<MessageObject> arrayList = this.voiceMessagesPlaylist;
        if (arrayList != null) {
            if (arrayList.size() < 2) {
                return;
            }
            MessageObject messageObject = this.voiceMessagesPlaylist.get(1);
            String str = messageObject.messageOwner.attachPath;
            File file = null;
            if (str != null && str.length() > 0) {
                File file2 = new File(messageObject.messageOwner.attachPath);
                if (file2.exists()) {
                    file = file2;
                }
            }
            File pathToMessage = file != null ? file : FileLoader.getInstance(i).getPathToMessage(messageObject.messageOwner);
            pathToMessage.exists();
            if (pathToMessage == file || pathToMessage.exists()) {
                return;
            }
            FileLoader.getInstance(i).loadFile(messageObject.getDocument(), messageObject, 0, messageObject.shouldEncryptPhotoOrVideo() ? 2 : 0);
        }
    }

    private void checkIsNextMusicFileDownloaded(int i) {
        int i2;
        if (DownloadController.getInstance(i).canDownloadNextTrack()) {
            ArrayList<MessageObject> arrayList = SharedConfig.shuffleMusic ? this.shuffledPlaylist : this.playlist;
            if (arrayList != null) {
                if (arrayList.size() < 2) {
                    return;
                }
                if (SharedConfig.playOrderReversed) {
                    i2 = this.currentPlaylistNum + 1;
                    if (i2 >= arrayList.size()) {
                        i2 = 0;
                    }
                } else {
                    i2 = this.currentPlaylistNum - 1;
                    if (i2 < 0) {
                        i2 = arrayList.size() - 1;
                    }
                }
                if (i2 < 0 || i2 >= arrayList.size()) {
                    return;
                }
                MessageObject messageObject = arrayList.get(i2);
                File file = null;
                if (!TextUtils.isEmpty(messageObject.messageOwner.attachPath)) {
                    File file2 = new File(messageObject.messageOwner.attachPath);
                    if (file2.exists()) {
                        file = file2;
                    }
                }
                File pathToMessage = file != null ? file : FileLoader.getInstance(i).getPathToMessage(messageObject.messageOwner);
                pathToMessage.exists();
                if (pathToMessage == file || pathToMessage.exists() || !messageObject.isMusic()) {
                    return;
                }
                FileLoader.getInstance(i).loadFile(messageObject.getDocument(), messageObject, 0, messageObject.shouldEncryptPhotoOrVideo() ? 2 : 0);
            }
        }
    }

    public void setVoiceMessagesPlaylist(ArrayList<MessageObject> arrayList, boolean z) {
        ArrayList<MessageObject> arrayList2 = arrayList != null ? new ArrayList<>(arrayList) : null;
        this.voiceMessagesPlaylist = arrayList2;
        if (arrayList2 != null) {
            this.voiceMessagesPlaylistUnread = z;
            this.voiceMessagesPlaylistMap = new SparseArray<>();
            for (int i = 0; i < this.voiceMessagesPlaylist.size(); i++) {
                MessageObject messageObject = this.voiceMessagesPlaylist.get(i);
                this.voiceMessagesPlaylistMap.put(messageObject.getId(), messageObject);
            }
        }
    }

    private void checkAudioFocus(MessageObject messageObject) {
        int i;
        int requestAudioFocus;
        if (messageObject.isVoice() || messageObject.isRoundVideo()) {
            i = this.useFrontSpeaker ? 3 : 2;
        } else {
            i = 1;
        }
        if (this.hasAudioFocus != i) {
            this.hasAudioFocus = i;
            if (i == 3) {
                requestAudioFocus = NotificationsController.audioManager.requestAudioFocus(this, 0, 1);
            } else {
                requestAudioFocus = NotificationsController.audioManager.requestAudioFocus(this, 3, (i != 2 || SharedConfig.pauseMusicOnMedia) ? 1 : 3);
            }
            if (requestAudioFocus == 1) {
                this.audioFocus = 2;
            }
        }
    }

    public boolean isPiPShown() {
        return this.pipRoundVideoView != null;
    }

    public void setCurrentVideoVisible(boolean z) {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.currentAspectRatioFrameLayout;
        if (aspectRatioFrameLayout == null) {
            return;
        }
        if (z) {
            PipRoundVideoView pipRoundVideoView = this.pipRoundVideoView;
            if (pipRoundVideoView != null) {
                this.pipSwitchingState = 2;
                pipRoundVideoView.close(true);
                this.pipRoundVideoView = null;
                return;
            }
            if (aspectRatioFrameLayout.getParent() == null) {
                this.currentTextureViewContainer.addView(this.currentAspectRatioFrameLayout);
            }
            this.videoPlayer.setTextureView(this.currentTextureView);
        } else if (aspectRatioFrameLayout.getParent() != null) {
            this.pipSwitchingState = 1;
            this.currentTextureViewContainer.removeView(this.currentAspectRatioFrameLayout);
        } else {
            if (this.pipRoundVideoView == null) {
                try {
                    PipRoundVideoView pipRoundVideoView2 = new PipRoundVideoView();
                    this.pipRoundVideoView = pipRoundVideoView2;
                    pipRoundVideoView2.show(this.baseActivity, new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaController.this.lambda$setCurrentVideoVisible$14();
                        }
                    });
                } catch (Exception unused) {
                    this.pipRoundVideoView = null;
                }
            }
            PipRoundVideoView pipRoundVideoView3 = this.pipRoundVideoView;
            if (pipRoundVideoView3 != null) {
                this.videoPlayer.setTextureView(pipRoundVideoView3.getTextureView());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCurrentVideoVisible$14() {
        cleanupPlayer(true, true);
    }

    public void setTextureView(TextureView textureView, AspectRatioFrameLayout aspectRatioFrameLayout, FrameLayout frameLayout, boolean z) {
        setTextureView(textureView, aspectRatioFrameLayout, frameLayout, z, null);
    }

    public void setTextureView(TextureView textureView, AspectRatioFrameLayout aspectRatioFrameLayout, FrameLayout frameLayout, boolean z, Runnable runnable) {
        if (textureView == null) {
            return;
        }
        boolean z2 = true;
        if (!z && this.currentTextureView == textureView) {
            this.pipSwitchingState = 1;
            this.currentTextureView = null;
            this.currentAspectRatioFrameLayout = null;
            this.currentTextureViewContainer = null;
        } else if (this.videoPlayer == null || textureView == this.currentTextureView) {
        } else {
            this.isDrawingWasReady = (aspectRatioFrameLayout == null || !aspectRatioFrameLayout.isDrawingReady()) ? false : false;
            this.currentTextureView = textureView;
            if (runnable != null && this.pipRoundVideoView == null) {
                try {
                    PipRoundVideoView pipRoundVideoView = new PipRoundVideoView();
                    this.pipRoundVideoView = pipRoundVideoView;
                    pipRoundVideoView.show(this.baseActivity, new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaController.this.lambda$setTextureView$15();
                        }
                    });
                } catch (Exception unused) {
                    this.pipRoundVideoView = null;
                }
            }
            PipRoundVideoView pipRoundVideoView2 = this.pipRoundVideoView;
            if (pipRoundVideoView2 != null) {
                this.videoPlayer.setTextureView(pipRoundVideoView2.getTextureView());
            } else {
                this.videoPlayer.setTextureView(this.currentTextureView);
            }
            this.currentAspectRatioFrameLayout = aspectRatioFrameLayout;
            this.currentTextureViewContainer = frameLayout;
            if (!this.currentAspectRatioFrameLayoutReady || aspectRatioFrameLayout == null) {
                return;
            }
            aspectRatioFrameLayout.setAspectRatio(this.currentAspectRatioFrameLayoutRatio, this.currentAspectRatioFrameLayoutRotation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTextureView$15() {
        cleanupPlayer(true, true);
    }

    public void setBaseActivity(Activity activity, boolean z) {
        if (z) {
            this.baseActivity = activity;
        } else if (this.baseActivity == activity) {
            this.baseActivity = null;
        }
    }

    public void setFeedbackView(View view, boolean z) {
        if (z) {
            this.feedbackView = view;
        } else if (this.feedbackView == view) {
            this.feedbackView = null;
        }
    }

    public void setPlaybackSpeed(boolean z, float f) {
        if (z) {
            if (this.currentMusicPlaybackSpeed >= 6.0f && f == 1.0f && this.playingMessageObject != null) {
                VideoPlayer videoPlayer = this.audioPlayer;
                if (videoPlayer != null) {
                    videoPlayer.pause();
                }
                final MessageObject messageObject = this.playingMessageObject;
                final float f2 = messageObject.audioProgress;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda35
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaController.this.lambda$setPlaybackSpeed$16(messageObject, f2);
                    }
                }, 50L);
            }
            this.currentMusicPlaybackSpeed = f;
            if (Math.abs(f - 1.0f) > 0.001f) {
                this.fastMusicPlaybackSpeed = f;
            }
        } else {
            this.currentPlaybackSpeed = f;
            if (Math.abs(f - 1.0f) > 0.001f) {
                this.fastPlaybackSpeed = f;
            }
        }
        VideoPlayer videoPlayer2 = this.audioPlayer;
        if (videoPlayer2 != null) {
            videoPlayer2.setPlaybackSpeed(Math.round(f * 10.0f) / 10.0f);
        } else {
            VideoPlayer videoPlayer3 = this.videoPlayer;
            if (videoPlayer3 != null) {
                videoPlayer3.setPlaybackSpeed(Math.round(f * 10.0f) / 10.0f);
            }
        }
        MessagesController.getGlobalMainSettings().edit().putFloat(z ? "musicPlaybackSpeed" : "playbackSpeed", f).putFloat(z ? "fastMusicPlaybackSpeed" : "fastPlaybackSpeed", z ? this.fastMusicPlaybackSpeed : this.fastPlaybackSpeed).commit();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingSpeedChanged, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setPlaybackSpeed$16(MessageObject messageObject, float f) {
        if (this.audioPlayer == null || this.playingMessageObject == null || this.isPaused) {
            return;
        }
        if (isSamePlayingMessage(messageObject)) {
            seekToProgress(this.playingMessageObject, f);
        }
        this.audioPlayer.play();
    }

    public float getPlaybackSpeed(boolean z) {
        return z ? this.currentMusicPlaybackSpeed : this.currentPlaybackSpeed;
    }

    public float getFastPlaybackSpeed(boolean z) {
        return z ? this.fastMusicPlaybackSpeed : this.fastPlaybackSpeed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVideoState(MessageObject messageObject, int[] iArr, boolean z, boolean z2, int i) {
        MessageObject messageObject2;
        if (this.videoPlayer == null) {
            return;
        }
        if (i != 4 && i != 1) {
            try {
                this.baseActivity.getWindow().addFlags(128);
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        } else {
            try {
                this.baseActivity.getWindow().clearFlags(128);
            } catch (Exception e2) {
                FileLog.m102e(e2);
            }
        }
        if (i == 3) {
            this.playerWasReady = true;
            MessageObject messageObject3 = this.playingMessageObject;
            if (messageObject3 != null && (messageObject3.isVideo() || this.playingMessageObject.isRoundVideo())) {
                AndroidUtilities.cancelRunOnUIThread(this.setLoadingRunnable);
                FileLoader.getInstance(messageObject.currentAccount).removeLoadingVideo(this.playingMessageObject.getDocument(), true, false);
            }
            this.currentAspectRatioFrameLayoutReady = true;
        } else if (i == 2) {
            if (!z2 || (messageObject2 = this.playingMessageObject) == null) {
                return;
            }
            if (messageObject2.isVideo() || this.playingMessageObject.isRoundVideo()) {
                if (this.playerWasReady) {
                    this.setLoadingRunnable.run();
                } else {
                    AndroidUtilities.runOnUIThread(this.setLoadingRunnable, 1000L);
                }
            }
        } else if (this.videoPlayer.isPlaying() && i == 4) {
            if (this.playingMessageObject.isVideo() && !z && (iArr == null || iArr[0] < 4)) {
                this.videoPlayer.seekTo(0L);
                if (iArr != null) {
                    iArr[0] = iArr[0] + 1;
                    return;
                }
                return;
            }
            cleanupPlayer(true, true, true, false);
        }
    }

    public void injectVideoPlayer(VideoPlayer videoPlayer, MessageObject messageObject) {
        if (videoPlayer == null || messageObject == null) {
            return;
        }
        FileLoader.getInstance(messageObject.currentAccount).setLoadingVideoForPlayer(messageObject.getDocument(), true);
        this.playerWasReady = false;
        clearPlaylist();
        this.videoPlayer = videoPlayer;
        this.playingMessageObject = messageObject;
        int i = this.playerNum + 1;
        this.playerNum = i;
        videoPlayer.setDelegate(new C36057(i, messageObject, null, true));
        this.currentAspectRatioFrameLayoutReady = false;
        TextureView textureView = this.currentTextureView;
        if (textureView != null) {
            this.videoPlayer.setTextureView(textureView);
        }
        checkAudioFocus(messageObject);
        setPlayerVolume();
        this.isPaused = false;
        this.lastProgress = 0L;
        MessageObject messageObject2 = this.playingMessageObject;
        this.playingMessageObject = messageObject;
        if (!SharedConfig.enabledRaiseTo(true)) {
            startRaiseToEarSensors(this.raiseChat);
        }
        startProgressTimer(this.playingMessageObject);
        NotificationCenter.getInstance(messageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingDidStart, messageObject, messageObject2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.MediaController$7 */
    /* loaded from: classes4.dex */
    public class C36057 implements VideoPlayer.VideoPlayerDelegate {
        final /* synthetic */ boolean val$destroyAtEnd;
        final /* synthetic */ MessageObject val$messageObject;
        final /* synthetic */ int[] val$playCount;
        final /* synthetic */ int val$tag;

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        C36057(int i, MessageObject messageObject, int[] iArr, boolean z) {
            this.val$tag = i;
            this.val$messageObject = messageObject;
            this.val$playCount = iArr;
            this.val$destroyAtEnd = z;
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onStateChanged(boolean z, int i) {
            if (this.val$tag != MediaController.this.playerNum) {
                return;
            }
            MediaController.this.updateVideoState(this.val$messageObject, this.val$playCount, this.val$destroyAtEnd, z, i);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onError(VideoPlayer videoPlayer, Exception exc) {
            FileLog.m102e(exc);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            MediaController.this.currentAspectRatioFrameLayoutRotation = i3;
            if (i3 != 90 && i3 != 270) {
                i2 = i;
                i = i2;
            }
            MediaController.this.currentAspectRatioFrameLayoutRatio = i == 0 ? 1.0f : (i2 * f) / i;
            if (MediaController.this.currentAspectRatioFrameLayout != null) {
                MediaController.this.currentAspectRatioFrameLayout.setAspectRatio(MediaController.this.currentAspectRatioFrameLayoutRatio, MediaController.this.currentAspectRatioFrameLayoutRotation);
            }
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onRenderedFirstFrame() {
            if (MediaController.this.currentAspectRatioFrameLayout == null || MediaController.this.currentAspectRatioFrameLayout.isDrawingReady()) {
                return;
            }
            MediaController.this.isDrawingWasReady = true;
            MediaController.this.currentAspectRatioFrameLayout.setDrawingReady(true);
            MediaController.this.currentTextureViewContainer.setTag(1);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
            if (MediaController.this.videoPlayer == null) {
                return false;
            }
            if (MediaController.this.pipSwitchingState == 2) {
                if (MediaController.this.currentAspectRatioFrameLayout != null) {
                    if (MediaController.this.isDrawingWasReady) {
                        MediaController.this.currentAspectRatioFrameLayout.setDrawingReady(true);
                    }
                    if (MediaController.this.currentAspectRatioFrameLayout.getParent() == null) {
                        MediaController.this.currentTextureViewContainer.addView(MediaController.this.currentAspectRatioFrameLayout);
                    }
                    if (MediaController.this.currentTextureView.getSurfaceTexture() != surfaceTexture) {
                        MediaController.this.currentTextureView.setSurfaceTexture(surfaceTexture);
                    }
                    MediaController.this.videoPlayer.setTextureView(MediaController.this.currentTextureView);
                }
                MediaController.this.pipSwitchingState = 0;
                return true;
            } else if (MediaController.this.pipSwitchingState == 1) {
                if (MediaController.this.baseActivity != null) {
                    if (MediaController.this.pipRoundVideoView == null) {
                        try {
                            MediaController.this.pipRoundVideoView = new PipRoundVideoView();
                            MediaController.this.pipRoundVideoView.show(MediaController.this.baseActivity, new Runnable() { // from class: org.telegram.messenger.MediaController$7$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MediaController.C36057.this.lambda$onSurfaceDestroyed$0();
                                }
                            });
                        } catch (Exception unused) {
                            MediaController.this.pipRoundVideoView = null;
                        }
                    }
                    if (MediaController.this.pipRoundVideoView != null) {
                        if (MediaController.this.pipRoundVideoView.getTextureView().getSurfaceTexture() != surfaceTexture) {
                            MediaController.this.pipRoundVideoView.getTextureView().setSurfaceTexture(surfaceTexture);
                        }
                        MediaController.this.videoPlayer.setTextureView(MediaController.this.pipRoundVideoView.getTextureView());
                    }
                }
                MediaController.this.pipSwitchingState = 0;
                return true;
            } else if (PhotoViewer.hasInstance() && PhotoViewer.getInstance().isInjectingVideoPlayer()) {
                PhotoViewer.getInstance().injectVideoPlayerSurface(surfaceTexture);
                return true;
            } else {
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSurfaceDestroyed$0() {
            MediaController.this.cleanupPlayer(true, true);
        }
    }

    public void playEmojiSound(final AccountInstance accountInstance, String str, final MessagesController.EmojiSound emojiSound, final boolean z) {
        if (emojiSound == null) {
            return;
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$playEmojiSound$19(emojiSound, accountInstance, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playEmojiSound$19(MessagesController.EmojiSound emojiSound, final AccountInstance accountInstance, boolean z) {
        final TLRPC$TL_document tLRPC$TL_document = new TLRPC$TL_document();
        tLRPC$TL_document.access_hash = emojiSound.accessHash;
        tLRPC$TL_document.f1610id = emojiSound.f1539id;
        tLRPC$TL_document.mime_type = "sound/ogg";
        tLRPC$TL_document.file_reference = emojiSound.fileReference;
        tLRPC$TL_document.dc_id = accountInstance.getConnectionsManager().getCurrentDatacenterId();
        final File pathToAttach = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(tLRPC$TL_document, true);
        if (!pathToAttach.exists()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.lambda$playEmojiSound$18(AccountInstance.this, tLRPC$TL_document);
                }
            });
        } else if (z) {
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.this.lambda$playEmojiSound$17(pathToAttach);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playEmojiSound$17(File file) {
        try {
            int i = this.emojiSoundPlayerNum + 1;
            this.emojiSoundPlayerNum = i;
            VideoPlayer videoPlayer = this.emojiSoundPlayer;
            if (videoPlayer != null) {
                videoPlayer.releasePlayer(true);
            }
            VideoPlayer videoPlayer2 = new VideoPlayer(false, false);
            this.emojiSoundPlayer = videoPlayer2;
            videoPlayer2.setDelegate(new C36068(i));
            this.emojiSoundPlayer.preparePlayer(Uri.fromFile(file), "other");
            this.emojiSoundPlayer.setStreamType(3);
            this.emojiSoundPlayer.play();
        } catch (Exception e) {
            FileLog.m102e(e);
            VideoPlayer videoPlayer3 = this.emojiSoundPlayer;
            if (videoPlayer3 != null) {
                videoPlayer3.releasePlayer(true);
                this.emojiSoundPlayer = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.MediaController$8 */
    /* loaded from: classes4.dex */
    public class C36068 implements VideoPlayer.VideoPlayerDelegate {
        final /* synthetic */ int val$tag;

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onError(VideoPlayer videoPlayer, Exception exc) {
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onRenderedFirstFrame() {
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
            return false;
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        }

        C36068(int i) {
            this.val$tag = i;
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onStateChanged(boolean z, final int i) {
            final int i2 = this.val$tag;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$8$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.C36068.this.lambda$onStateChanged$0(i2, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onStateChanged$0(int i, int i2) {
            if (i == MediaController.this.emojiSoundPlayerNum && i2 == 4 && MediaController.this.emojiSoundPlayer != null) {
                try {
                    MediaController.this.emojiSoundPlayer.releasePlayer(true);
                    MediaController.this.emojiSoundPlayer = null;
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playEmojiSound$18(AccountInstance accountInstance, TLRPC$Document tLRPC$Document) {
        accountInstance.getFileLoader().loadFile(tLRPC$Document, null, 1, 1);
    }

    public void checkVolumeBarUI() {
        if (this.isSilent) {
            return;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis();
            if (Math.abs(currentTimeMillis - volumeBarLastTimeShown) < 5000) {
                return;
            }
            AudioManager audioManager = (AudioManager) ApplicationLoader.applicationContext.getSystemService("audio");
            int i = this.useFrontSpeaker ? 0 : 3;
            int streamVolume = audioManager.getStreamVolume(i);
            if (streamVolume == 0) {
                audioManager.adjustStreamVolume(i, streamVolume, 1);
                volumeBarLastTimeShown = currentTimeMillis;
            }
        } catch (Exception unused) {
        }
    }

    private void setBluetoothScoOn(boolean z) {
        AudioManager audioManager = (AudioManager) ApplicationLoader.applicationContext.getSystemService("audio");
        if (!(audioManager.isBluetoothScoAvailableOffCall() && SharedConfig.recordViaSco) && z) {
            return;
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null) {
            try {
                if (defaultAdapter.getProfileConnectionState(1) != 2) {
                }
                if (!z && !audioManager.isBluetoothScoOn()) {
                    audioManager.startBluetoothSco();
                    return;
                } else if (z && audioManager.isBluetoothScoOn()) {
                    audioManager.stopBluetoothSco();
                    return;
                }
            } catch (SecurityException unused) {
                return;
            } catch (Throwable th) {
                FileLog.m102e(th);
                return;
            }
        }
        if (z) {
            return;
        }
        if (!z) {
        }
        if (z) {
        }
    }

    public boolean playMessage(MessageObject messageObject) {
        return playMessage(messageObject, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:172:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x056d  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x05c2  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x05cb  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x066d  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x06c4  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x060e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0482 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:284:0x04bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x016f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean playMessage(final org.telegram.messenger.MessageObject r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 1774
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.playMessage(org.telegram.messenger.MessageObject, boolean):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.MediaController$9 */
    /* loaded from: classes4.dex */
    public class C36079 implements VideoPlayer.VideoPlayerDelegate {
        final /* synthetic */ boolean val$destroyAtEnd;
        final /* synthetic */ MessageObject val$messageObject;
        final /* synthetic */ int[] val$playCount;
        final /* synthetic */ int val$tag;

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        C36079(int i, MessageObject messageObject, int[] iArr, boolean z) {
            this.val$tag = i;
            this.val$messageObject = messageObject;
            this.val$playCount = iArr;
            this.val$destroyAtEnd = z;
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onStateChanged(boolean z, int i) {
            if (this.val$tag != MediaController.this.playerNum) {
                return;
            }
            MediaController.this.updateVideoState(this.val$messageObject, this.val$playCount, this.val$destroyAtEnd, z, i);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onError(VideoPlayer videoPlayer, Exception exc) {
            FileLog.m102e(exc);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            MediaController.this.currentAspectRatioFrameLayoutRotation = i3;
            if (i3 != 90 && i3 != 270) {
                i2 = i;
                i = i2;
            }
            MediaController.this.currentAspectRatioFrameLayoutRatio = i == 0 ? 1.0f : (i2 * f) / i;
            if (MediaController.this.currentAspectRatioFrameLayout != null) {
                MediaController.this.currentAspectRatioFrameLayout.setAspectRatio(MediaController.this.currentAspectRatioFrameLayoutRatio, MediaController.this.currentAspectRatioFrameLayoutRotation);
            }
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onRenderedFirstFrame() {
            if (MediaController.this.currentAspectRatioFrameLayout == null || MediaController.this.currentAspectRatioFrameLayout.isDrawingReady()) {
                return;
            }
            MediaController.this.isDrawingWasReady = true;
            MediaController.this.currentAspectRatioFrameLayout.setDrawingReady(true);
            MediaController.this.currentTextureViewContainer.setTag(1);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
            if (MediaController.this.videoPlayer == null) {
                return false;
            }
            if (MediaController.this.pipSwitchingState == 2) {
                if (MediaController.this.currentAspectRatioFrameLayout != null) {
                    if (MediaController.this.isDrawingWasReady) {
                        MediaController.this.currentAspectRatioFrameLayout.setDrawingReady(true);
                    }
                    if (MediaController.this.currentAspectRatioFrameLayout.getParent() == null) {
                        MediaController.this.currentTextureViewContainer.addView(MediaController.this.currentAspectRatioFrameLayout);
                    }
                    if (MediaController.this.currentTextureView.getSurfaceTexture() != surfaceTexture) {
                        MediaController.this.currentTextureView.setSurfaceTexture(surfaceTexture);
                    }
                    MediaController.this.videoPlayer.setTextureView(MediaController.this.currentTextureView);
                }
                MediaController.this.pipSwitchingState = 0;
                return true;
            } else if (MediaController.this.pipSwitchingState == 1) {
                if (MediaController.this.baseActivity != null) {
                    if (MediaController.this.pipRoundVideoView == null) {
                        try {
                            MediaController.this.pipRoundVideoView = new PipRoundVideoView();
                            MediaController.this.pipRoundVideoView.show(MediaController.this.baseActivity, new Runnable() { // from class: org.telegram.messenger.MediaController$9$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MediaController.C36079.this.lambda$onSurfaceDestroyed$0();
                                }
                            });
                        } catch (Exception unused) {
                            MediaController.this.pipRoundVideoView = null;
                        }
                    }
                    if (MediaController.this.pipRoundVideoView != null) {
                        if (MediaController.this.pipRoundVideoView.getTextureView().getSurfaceTexture() != surfaceTexture) {
                            MediaController.this.pipRoundVideoView.getTextureView().setSurfaceTexture(surfaceTexture);
                        }
                        MediaController.this.videoPlayer.setTextureView(MediaController.this.pipRoundVideoView.getTextureView());
                    }
                }
                MediaController.this.pipSwitchingState = 0;
                return true;
            } else if (PhotoViewer.hasInstance() && PhotoViewer.getInstance().isInjectingVideoPlayer()) {
                PhotoViewer.getInstance().injectVideoPlayerSurface(surfaceTexture);
                return true;
            } else {
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSurfaceDestroyed$0() {
            MediaController.this.cleanupPlayer(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playMessage$20() {
        cleanupPlayer(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playMessage$21(MessageObject messageObject, File file) {
        NotificationCenter.getInstance(messageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoaded, FileLoader.getAttachFileName(messageObject.getDocument()), file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playMessage$22(MessageObject messageObject, File file) {
        NotificationCenter.getInstance(messageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoaded, FileLoader.getAttachFileName(messageObject.getDocument()), file);
    }

    public void updateSilent(boolean z) {
        this.isSilent = z;
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.setLooping(z);
        }
        setPlayerVolume();
        checkVolumeBarUI();
        MessageObject messageObject = this.playingMessageObject;
        if (messageObject != null) {
            NotificationCenter notificationCenter = NotificationCenter.getInstance(messageObject.currentAccount);
            int i = NotificationCenter.messagePlayingPlayStateChanged;
            Object[] objArr = new Object[1];
            MessageObject messageObject2 = this.playingMessageObject;
            objArr[0] = Integer.valueOf(messageObject2 != null ? messageObject2.getId() : 0);
            notificationCenter.lambda$postNotificationNameOnUIThread$1(i, objArr);
        }
    }

    public AudioInfo getAudioInfo() {
        return this.audioInfo;
    }

    public void setPlaybackOrderType(int i) {
        boolean z = SharedConfig.shuffleMusic;
        SharedConfig.setPlaybackOrderType(i);
        boolean z2 = SharedConfig.shuffleMusic;
        if (z != z2) {
            if (z2) {
                buildShuffledPlayList();
                return;
            }
            MessageObject messageObject = this.playingMessageObject;
            if (messageObject != null) {
                int indexOf = this.playlist.indexOf(messageObject);
                this.currentPlaylistNum = indexOf;
                if (indexOf == -1) {
                    clearPlaylist();
                    cleanupPlayer(true, true);
                }
            }
        }
    }

    public boolean isStreamingCurrentAudio() {
        return this.isStreamingCurrentAudio;
    }

    public boolean isCurrentPlayer(VideoPlayer videoPlayer) {
        return this.videoPlayer == videoPlayer || this.audioPlayer == videoPlayer;
    }

    public void tryResumePausedAudio() {
        MessageObject playingMessageObject = getPlayingMessageObject();
        if (playingMessageObject != null && isMessagePaused() && this.wasPlayingAudioBeforePause && (playingMessageObject.isVoice() || playingMessageObject.isMusic())) {
            playMessage(playingMessageObject);
        }
        this.wasPlayingAudioBeforePause = false;
    }

    /* renamed from: pauseMessage */
    public boolean lambda$startAudioAgain$7(MessageObject messageObject) {
        if ((this.audioPlayer != null || this.videoPlayer != null) && messageObject != null && this.playingMessageObject != null && isSamePlayingMessage(messageObject)) {
            stopProgressTimer();
            try {
                if (this.audioPlayer != null) {
                    if (!this.playingMessageObject.isVoice() && this.playingMessageObject.getDuration() * (1.0f - this.playingMessageObject.audioProgress) > 1.0d && LaunchActivity.isResumed) {
                        ValueAnimator valueAnimator = this.audioVolumeAnimator;
                        if (valueAnimator != null) {
                            valueAnimator.removeAllUpdateListeners();
                            this.audioVolumeAnimator.cancel();
                        }
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
                        this.audioVolumeAnimator = ofFloat;
                        ofFloat.addUpdateListener(this.audioVolumeUpdateListener);
                        this.audioVolumeAnimator.setDuration(300L);
                        this.audioVolumeAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.messenger.MediaController.12
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (MediaController.this.audioPlayer != null) {
                                    MediaController.this.audioPlayer.pause();
                                }
                            }
                        });
                        this.audioVolumeAnimator.start();
                    } else {
                        this.audioPlayer.pause();
                    }
                } else {
                    VideoPlayer videoPlayer = this.videoPlayer;
                    if (videoPlayer != null) {
                        videoPlayer.pause();
                    }
                }
                this.isPaused = true;
                NotificationCenter.getInstance(this.playingMessageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingPlayStateChanged, Integer.valueOf(this.playingMessageObject.getId()));
                return true;
            } catch (Exception e) {
                FileLog.m102e(e);
                this.isPaused = false;
            }
        }
        return false;
    }

    private boolean resumeAudio(MessageObject messageObject) {
        if ((this.audioPlayer != null || this.videoPlayer != null) && messageObject != null && this.playingMessageObject != null && isSamePlayingMessage(messageObject)) {
            try {
                startProgressTimer(this.playingMessageObject);
                ValueAnimator valueAnimator = this.audioVolumeAnimator;
                if (valueAnimator != null) {
                    valueAnimator.removeAllListeners();
                    this.audioVolumeAnimator.cancel();
                }
                if (!messageObject.isVoice() && !messageObject.isRoundVideo()) {
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(this.audioVolume, 1.0f);
                    this.audioVolumeAnimator = ofFloat;
                    ofFloat.addUpdateListener(this.audioVolumeUpdateListener);
                    this.audioVolumeAnimator.setDuration(300L);
                    this.audioVolumeAnimator.start();
                } else {
                    this.audioVolume = 1.0f;
                    setPlayerVolume();
                }
                VideoPlayer videoPlayer = this.audioPlayer;
                if (videoPlayer != null) {
                    videoPlayer.play();
                } else {
                    VideoPlayer videoPlayer2 = this.videoPlayer;
                    if (videoPlayer2 != null) {
                        videoPlayer2.play();
                    }
                }
                checkAudioFocus(messageObject);
                this.isPaused = false;
                NotificationCenter.getInstance(this.playingMessageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingPlayStateChanged, Integer.valueOf(this.playingMessageObject.getId()));
                return true;
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
        return false;
    }

    public boolean isVideoDrawingReady() {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.currentAspectRatioFrameLayout;
        return aspectRatioFrameLayout != null && aspectRatioFrameLayout.isDrawingReady();
    }

    public ArrayList<MessageObject> getPlaylist() {
        return this.playlist;
    }

    public boolean isPlayingMessage(MessageObject messageObject) {
        MessageObject messageObject2;
        if (messageObject == null || !messageObject.isRepostPreview) {
            if ((this.audioPlayer != null || this.videoPlayer != null) && messageObject != null && (messageObject2 = this.playingMessageObject) != null) {
                long j = messageObject2.eventId;
                if (j != 0 && j == messageObject.eventId) {
                    return !this.downloadingCurrentMessage;
                }
                if (isSamePlayingMessage(messageObject)) {
                    return !this.downloadingCurrentMessage;
                }
            }
            return false;
        }
        return false;
    }

    public boolean isPlayingMessageAndReadyToDraw(MessageObject messageObject) {
        return this.isDrawingWasReady && isPlayingMessage(messageObject);
    }

    public boolean isMessagePaused() {
        return this.isPaused || this.downloadingCurrentMessage;
    }

    public boolean isDownloadingCurrentMessage() {
        return this.downloadingCurrentMessage;
    }

    public void setReplyingMessage(MessageObject messageObject, MessageObject messageObject2, TL_stories$StoryItem tL_stories$StoryItem) {
        this.recordReplyingMsg = messageObject;
        this.recordReplyingTopMsg = messageObject2;
        this.recordReplyingStory = tL_stories$StoryItem;
    }

    public void requestAudioFocus(boolean z) {
        if (z) {
            if (!this.hasRecordAudioFocus && SharedConfig.pauseMusicOnRecord && NotificationsController.audioManager.requestAudioFocus(this.audioRecordFocusChangedListener, 3, 2) == 1) {
                this.hasRecordAudioFocus = true;
            }
        } else if (this.hasRecordAudioFocus) {
            NotificationsController.audioManager.abandonAudioFocus(this.audioRecordFocusChangedListener);
            this.hasRecordAudioFocus = false;
        }
    }

    public void toggleRecordingPause() {
        this.recordQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$toggleRecordingPause$25();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleRecordingPause$25() {
        if (this.recordingAudio == null || this.recordingAudioFile == null) {
            return;
        }
        boolean z = !this.audioRecorderPaused;
        this.audioRecorderPaused = z;
        if (z) {
            this.sendAfterDone = 4;
            this.audioRecorder.stop();
            this.audioRecorder.release();
            this.audioRecorder = null;
            final TLRPC$TL_document tLRPC$TL_document = this.recordingAudio;
            final File file = this.recordingAudioFile;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.this.lambda$toggleRecordingPause$23(file, tLRPC$TL_document);
                }
            });
            return;
        }
        this.recordQueue.cancelRunnable(this.recordRunnable);
        this.audioRecorder = new AudioRecord(0, this.sampleRate, 16, 2, this.recordBufferSize);
        this.recordStartTime = System.currentTimeMillis();
        this.fileBuffer.rewind();
        this.audioRecorder.startRecording();
        this.recordQueue.postRunnable(this.recordRunnable);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$toggleRecordingPause$24();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleRecordingPause$23(File file, TLRPC$TL_document tLRPC$TL_document) {
        if (!file.exists() && BuildVars.DEBUG_VERSION) {
            FileLog.m102e(new RuntimeException("file not found :( recordTimeCount " + this.recordTimeCount + " writedFrames" + this.writedFrame));
        }
        tLRPC$TL_document.date = ConnectionsManager.getInstance(this.recordingCurrentAccount).getCurrentTime();
        tLRPC$TL_document.size = (int) file.length();
        TLRPC$TL_documentAttributeAudio tLRPC$TL_documentAttributeAudio = new TLRPC$TL_documentAttributeAudio();
        tLRPC$TL_documentAttributeAudio.voice = true;
        short[] sArr = this.recordSamples;
        byte[] waveform2 = getWaveform2(sArr, sArr.length);
        tLRPC$TL_documentAttributeAudio.waveform = waveform2;
        if (waveform2 != null) {
            tLRPC$TL_documentAttributeAudio.flags |= 4;
        }
        tLRPC$TL_documentAttributeAudio.duration = this.recordTimeCount / 1000.0d;
        tLRPC$TL_document.attributes.clear();
        tLRPC$TL_document.attributes.add(tLRPC$TL_documentAttributeAudio);
        NotificationCenter.getInstance(this.recordingCurrentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordPaused, new Object[0]);
        NotificationCenter.getInstance(this.recordingCurrentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioDidSent, Integer.valueOf(this.recordingGuid), tLRPC$TL_document, file.getAbsolutePath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleRecordingPause$24() {
        NotificationCenter.getInstance(this.recordingCurrentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordResumed, new Object[0]);
    }

    public void startRecording(final int i, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final int i2, boolean z) {
        boolean z2;
        boolean z3;
        MessageObject messageObject3 = this.playingMessageObject;
        if (messageObject3 == null || !isPlayingMessage(messageObject3) || isMessagePaused()) {
            z2 = false;
            z3 = z;
        } else {
            z3 = z;
            z2 = true;
        }
        this.manualRecording = z3;
        requestAudioFocus(true);
        try {
            this.feedbackView.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        DispatchQueue dispatchQueue = this.recordQueue;
        Runnable runnable = new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$startRecording$30(i, i2, j, messageObject, messageObject2, tL_stories$StoryItem);
            }
        };
        this.recordStartRunnable = runnable;
        dispatchQueue.postRunnable(runnable, z2 ? 500L : 50L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecording$30(final int i, final int i2, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories$StoryItem tL_stories$StoryItem) {
        if (this.audioRecorder != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.this.lambda$startRecording$26(i, i2);
                }
            });
            return;
        }
        setBluetoothScoOn(true);
        this.sendAfterDone = 0;
        TLRPC$TL_document tLRPC$TL_document = new TLRPC$TL_document();
        this.recordingAudio = tLRPC$TL_document;
        this.recordingGuid = i2;
        tLRPC$TL_document.file_reference = new byte[0];
        tLRPC$TL_document.dc_id = Integer.MIN_VALUE;
        tLRPC$TL_document.f1610id = SharedConfig.getLastLocalId();
        this.recordingAudio.user_id = UserConfig.getInstance(i).getClientUserId();
        TLRPC$TL_document tLRPC$TL_document2 = this.recordingAudio;
        tLRPC$TL_document2.mime_type = MimeTypes.AUDIO_OGG;
        tLRPC$TL_document2.file_reference = new byte[0];
        SharedConfig.saveConfig();
        File directory = FileLoader.getDirectory(1);
        this.recordingAudioFile = new File(directory, System.currentTimeMillis() + "_" + FileLoader.getAttachFileName(this.recordingAudio)) { // from class: org.telegram.messenger.MediaController.13
            @Override // java.io.File
            public boolean delete() {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m104e("delete voice file");
                }
                return super.delete();
            }
        };
        FileLoader.getDirectory(4).mkdirs();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m105d("start recording internal " + this.recordingAudioFile.getPath() + " " + this.recordingAudioFile.exists());
        }
        AutoDeleteMediaTask.lockFile(this.recordingAudioFile);
        try {
            if (startRecord(this.recordingAudioFile.getPath(), this.sampleRate) == 0) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda22
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaController.this.lambda$startRecording$27(i, i2);
                    }
                });
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m105d("cant init encoder");
                    return;
                }
                return;
            }
            this.audioRecorderPaused = false;
            this.audioRecorder = new AudioRecord(0, this.sampleRate, 16, 2, this.recordBufferSize);
            this.recordStartTime = System.currentTimeMillis();
            this.recordTimeCount = 0L;
            this.writedFrame = 0;
            this.samplesCount = 0L;
            this.recordDialogId = j;
            this.recordingCurrentAccount = i;
            this.recordReplyingMsg = messageObject;
            this.recordReplyingTopMsg = messageObject2;
            this.recordReplyingStory = tL_stories$StoryItem;
            this.fileBuffer.rewind();
            this.audioRecorder.startRecording();
            this.recordQueue.postRunnable(this.recordRunnable);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.this.lambda$startRecording$29(i, i2);
                }
            });
        } catch (Exception e) {
            FileLog.m102e(e);
            this.recordingAudio = null;
            stopRecord();
            AutoDeleteMediaTask.unlockFile(this.recordingAudioFile);
            this.recordingAudioFile.delete();
            this.recordingAudioFile = null;
            try {
                this.audioRecorder.release();
                this.audioRecorder = null;
            } catch (Exception e2) {
                FileLog.m102e(e2);
            }
            setBluetoothScoOn(false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.this.lambda$startRecording$28(i, i2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecording$26(int i, int i2) {
        this.recordStartRunnable = null;
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStartError, Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecording$27(int i, int i2) {
        this.recordStartRunnable = null;
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStartError, Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecording$28(int i, int i2) {
        this.recordStartRunnable = null;
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStartError, Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecording$29(int i, int i2) {
        this.recordStartRunnable = null;
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recordStarted, Integer.valueOf(i2), Boolean.TRUE);
    }

    public void generateWaveform(final MessageObject messageObject) {
        final String str = messageObject.getId() + "_" + messageObject.getDialogId();
        final String absolutePath = FileLoader.getInstance(messageObject.currentAccount).getPathToMessage(messageObject.messageOwner).getAbsolutePath();
        if (this.generatingWaveform.containsKey(str)) {
            return;
        }
        this.generatingWaveform.put(str, messageObject);
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$generateWaveform$32(absolutePath, str, messageObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$generateWaveform$32(String str, final String str2, final MessageObject messageObject) {
        try {
            final byte[] waveform = getWaveform(str);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.this.lambda$generateWaveform$31(str2, waveform, messageObject);
                }
            });
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$generateWaveform$31(String str, byte[] bArr, MessageObject messageObject) {
        MessageObject remove = this.generatingWaveform.remove(str);
        if (remove == null || bArr == null || remove.getDocument() == null) {
            return;
        }
        int i = 0;
        while (true) {
            if (i >= remove.getDocument().attributes.size()) {
                break;
            }
            TLRPC$DocumentAttribute tLRPC$DocumentAttribute = remove.getDocument().attributes.get(i);
            if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeAudio) {
                tLRPC$DocumentAttribute.waveform = bArr;
                tLRPC$DocumentAttribute.flags |= 4;
                break;
            }
            i++;
        }
        TLRPC$TL_messages_messages tLRPC$TL_messages_messages = new TLRPC$TL_messages_messages();
        tLRPC$TL_messages_messages.messages.add(remove.messageOwner);
        MessagesStorage.getInstance(remove.currentAccount).putMessages((TLRPC$messages_Messages) tLRPC$TL_messages_messages, remove.getDialogId(), -1, 0, false, messageObject.scheduled ? 1 : 0, 0L);
        ArrayList arrayList = new ArrayList();
        arrayList.add(remove);
        NotificationCenter.getInstance(remove.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.replaceMessagesObjects, Long.valueOf(remove.getDialogId()), arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopRecordingInternal(final int i, final boolean z, final int i2, final boolean z2, final String str) {
        if (i != 0) {
            final TLRPC$TL_document tLRPC$TL_document = this.recordingAudio;
            final File file = this.recordingAudioFile;
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m105d("stop recording internal filename " + this.recordingAudioFile.getPath());
            }
            this.fileEncodingQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.this.lambda$stopRecordingInternal$34(file, tLRPC$TL_document, i, z, i2, z2, str);
                }
            });
        } else {
            AutoDeleteMediaTask.unlockFile(this.recordingAudioFile);
            File file2 = this.recordingAudioFile;
            if (file2 != null) {
                file2.delete();
            }
            requestAudioFocus(false);
        }
        try {
            AudioRecord audioRecord = this.audioRecorder;
            if (audioRecord != null) {
                audioRecord.release();
                this.audioRecorder = null;
            }
        } catch (Exception e) {
            FileLog.m102e(e);
        }
        this.recordingAudio = null;
        this.recordingAudioFile = null;
        this.manualRecording = false;
        this.raiseToEarRecord = false;
        this.ignoreOnPause = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopRecordingInternal$34(final File file, final TLRPC$TL_document tLRPC$TL_document, final int i, final boolean z, final int i2, final boolean z2, final String str) {
        stopRecord();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m105d("stop recording internal in queue " + file.exists() + " " + file.length());
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$stopRecordingInternal$33(file, tLRPC$TL_document, i, z, i2, z2, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopRecordingInternal$33(File file, TLRPC$TL_document tLRPC$TL_document, int i, boolean z, int i2, boolean z2, String str) {
        boolean z3;
        char c;
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m105d("stop recording internal " + file.exists() + " " + file.length() + "  recordTimeCount " + this.recordTimeCount + " writedFrames" + this.writedFrame);
        }
        if (!file.exists() && BuildVars.DEBUG_VERSION) {
            FileLog.m102e(new RuntimeException("file not found :( recordTimeCount " + this.recordTimeCount + " writedFrames" + this.writedFrame));
        }
        tLRPC$TL_document.date = ConnectionsManager.getInstance(this.recordingCurrentAccount).getCurrentTime();
        tLRPC$TL_document.size = (int) file.length();
        TLRPC$TL_documentAttributeAudio tLRPC$TL_documentAttributeAudio = new TLRPC$TL_documentAttributeAudio();
        tLRPC$TL_documentAttributeAudio.voice = true;
        short[] sArr = this.recordSamples;
        byte[] waveform2 = getWaveform2(sArr, sArr.length);
        tLRPC$TL_documentAttributeAudio.waveform = waveform2;
        if (waveform2 != null) {
            tLRPC$TL_documentAttributeAudio.flags |= 4;
        }
        long j = this.recordTimeCount;
        tLRPC$TL_documentAttributeAudio.duration = j / 1000.0d;
        tLRPC$TL_document.attributes.clear();
        tLRPC$TL_document.attributes.add(tLRPC$TL_documentAttributeAudio);
        if (j > 700) {
            if (i == 1) {
                c = 1;
                SendMessagesHelper.SendMessageParams m89of = SendMessagesHelper.SendMessageParams.m89of(tLRPC$TL_document, null, file.getAbsolutePath(), this.recordDialogId, this.recordReplyingMsg, this.recordReplyingTopMsg, null, null, null, null, z, i2, z2 ? Integer.MAX_VALUE : 0, null, null, false, str);
                m89of.replyToStoryItem = this.recordReplyingStory;
                SendMessagesHelper.getInstance(this.recordingCurrentAccount).sendMessage(m89of);
            } else {
                c = 1;
            }
            NotificationCenter notificationCenter = NotificationCenter.getInstance(this.recordingCurrentAccount);
            int i3 = NotificationCenter.audioDidSent;
            Object[] objArr = new Object[3];
            z3 = false;
            objArr[0] = Integer.valueOf(this.recordingGuid);
            objArr[c] = i == 2 ? tLRPC$TL_document : null;
            objArr[2] = i == 2 ? file.getAbsolutePath() : null;
            notificationCenter.lambda$postNotificationNameOnUIThread$1(i3, objArr);
        } else {
            z3 = false;
            NotificationCenter.getInstance(this.recordingCurrentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.audioRecordTooShort, Integer.valueOf(this.recordingGuid), Boolean.FALSE, Integer.valueOf((int) j));
            AutoDeleteMediaTask.unlockFile(file);
            file.delete();
        }
        requestAudioFocus(z3);
    }

    public void stopRecording(final int i, final boolean z, final int i2, final boolean z2, final String str) {
        Runnable runnable = this.recordStartRunnable;
        if (runnable != null) {
            this.recordQueue.cancelRunnable(runnable);
            this.recordStartRunnable = null;
        }
        this.recordQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$stopRecording$36(i, z, i2, z2, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopRecording$36(final int i, boolean z, int i2, boolean z2, String str) {
        if (this.sendAfterDone == 3) {
            this.sendAfterDone = 0;
            stopRecordingInternal(i, z, i2, z2, str);
            return;
        }
        AudioRecord audioRecord = this.audioRecorder;
        if (audioRecord == null) {
            this.recordingAudio = null;
            this.manualRecording = false;
            this.raiseToEarRecord = false;
            this.ignoreOnPause = false;
            return;
        }
        try {
            this.sendAfterDone = i;
            this.sendAfterDoneNotify = z;
            this.sendAfterDoneScheduleDate = i2;
            this.sendAfterDoneOnce = z2;
            this.sendAfterDoneTemplateName = str;
            audioRecord.stop();
            setBluetoothScoOn(false);
        } catch (Exception e) {
            FileLog.m102e(e);
            if (this.recordingAudioFile != null) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m104e("delete voice file");
                }
                this.recordingAudioFile.delete();
            }
        }
        if (i == 0) {
            stopRecordingInternal(0, false, 0, false, null);
        }
        try {
            this.feedbackView.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$stopRecording$35(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopRecording$35(int i) {
        NotificationCenter notificationCenter = NotificationCenter.getInstance(this.recordingCurrentAccount);
        int i2 = NotificationCenter.recordStopped;
        Object[] objArr = new Object[2];
        objArr[0] = Integer.valueOf(this.recordingGuid);
        objArr[1] = Integer.valueOf(i == 2 ? 1 : 0);
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i2, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class MediaLoader implements NotificationCenter.NotificationCenterDelegate {
        private boolean cancelled;
        private int copiedFiles;
        private AccountInstance currentAccount;
        private boolean finished;
        private float finishedProgress;
        private boolean isMusic;
        private HashMap<String, MessageObject> loadingMessageObjects = new HashMap<>();
        private ArrayList<MessageObject> messageObjects;
        private MessagesStorage.IntCallback onFinishRunnable;
        private AlertDialog progressDialog;
        private CountDownLatch waitingForFile;

        public MediaLoader(Context context, AccountInstance accountInstance, ArrayList<MessageObject> arrayList, MessagesStorage.IntCallback intCallback) {
            this.currentAccount = accountInstance;
            this.messageObjects = arrayList;
            this.onFinishRunnable = intCallback;
            this.isMusic = arrayList.get(0).isMusic();
            this.currentAccount.getNotificationCenter().addObserver(this, NotificationCenter.fileLoaded);
            this.currentAccount.getNotificationCenter().addObserver(this, NotificationCenter.fileLoadProgressChanged);
            this.currentAccount.getNotificationCenter().addObserver(this, NotificationCenter.fileLoadFailed);
            AlertDialog alertDialog = new AlertDialog(context, 2);
            this.progressDialog = alertDialog;
            alertDialog.setMessage(LocaleController.getString("Loading", C3632R.string.Loading));
            this.progressDialog.setCanceledOnTouchOutside(false);
            this.progressDialog.setCancelable(true);
            this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    MediaController.MediaLoader.this.lambda$new$0(dialogInterface);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(DialogInterface dialogInterface) {
            this.cancelled = true;
        }

        public void start() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.MediaLoader.this.lambda$start$1();
                }
            }, 250L);
            new Thread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.MediaLoader.this.lambda$start$2();
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$1() {
            if (this.finished) {
                return;
            }
            this.progressDialog.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0069 A[Catch: Exception -> 0x01b8, TryCatch #0 {Exception -> 0x01b8, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0011, B:8:0x0023, B:10:0x0029, B:14:0x0037, B:26:0x007d, B:28:0x0088, B:29:0x0097, B:32:0x009d, B:34:0x00a3, B:38:0x00aa, B:39:0x00b2, B:16:0x003d, B:18:0x004b, B:20:0x0051, B:22:0x005c, B:25:0x0069, B:81:0x01b4, B:40:0x00b6, B:42:0x00ba, B:44:0x00c7, B:46:0x00d3, B:48:0x00ea, B:54:0x00fc, B:56:0x0136, B:59:0x0143, B:55:0x011f, B:60:0x0147, B:62:0x014d, B:63:0x0150, B:65:0x0156, B:67:0x015c, B:71:0x016a, B:74:0x0184, B:76:0x018f, B:77:0x019e, B:79:0x01a4, B:80:0x01b0, B:73:0x0170, B:43:0x00c1), top: B:86:0x0000 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void lambda$start$2() {
            /*
                Method dump skipped, instructions count: 445
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.MediaLoader.lambda$start$2():void");
        }

        private void checkIfFinished() {
            if (this.loadingMessageObjects.isEmpty()) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaController.MediaLoader.this.lambda$checkIfFinished$4();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkIfFinished$4() {
            try {
                if (this.progressDialog.isShowing()) {
                    this.progressDialog.dismiss();
                } else {
                    this.finished = true;
                }
                if (this.onFinishRunnable != null) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaController.MediaLoader.this.lambda$checkIfFinished$3();
                        }
                    });
                }
            } catch (Exception e) {
                FileLog.m102e(e);
            }
            this.currentAccount.getNotificationCenter().removeObserver(this, NotificationCenter.fileLoaded);
            this.currentAccount.getNotificationCenter().removeObserver(this, NotificationCenter.fileLoadProgressChanged);
            this.currentAccount.getNotificationCenter().removeObserver(this, NotificationCenter.fileLoadFailed);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkIfFinished$3() {
            this.onFinishRunnable.run(this.copiedFiles);
        }

        private void addMessageToLoad(final MessageObject messageObject) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.MediaLoader.this.lambda$addMessageToLoad$5(messageObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$addMessageToLoad$5(MessageObject messageObject) {
            TLRPC$Document document = messageObject.getDocument();
            if (document == null) {
                return;
            }
            this.loadingMessageObjects.put(FileLoader.getAttachFileName(document), messageObject);
            this.currentAccount.getFileLoader().loadFile(document, messageObject, 0, messageObject.shouldEncryptPhotoOrVideo() ? 2 : 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:91:0x0181 A[Catch: all -> 0x0185, TRY_ENTER, TRY_LEAVE, TryCatch #12 {all -> 0x018b, blocks: (B:96:0x018a, B:62:0x0150, B:67:0x015c, B:91:0x0181), top: B:115:0x0015 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean copyFile(java.io.File r33, java.io.File r34, java.lang.String r35) {
            /*
                Method dump skipped, instructions count: 426
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.MediaLoader.copyFile(java.io.File, java.io.File, java.lang.String):boolean");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$copyFile$6() {
            try {
                this.progressDialog.dismiss();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$copyFile$7(int i) {
            try {
                this.progressDialog.setProgress(i);
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$copyFile$8(int i) {
            try {
                this.progressDialog.setProgress(i);
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.fileLoaded || i == NotificationCenter.fileLoadFailed) {
                if (this.loadingMessageObjects.remove((String) objArr[0]) != null) {
                    this.waitingForFile.countDown();
                }
            } else if (i == NotificationCenter.fileLoadProgressChanged) {
                if (this.loadingMessageObjects.containsKey((String) objArr[0])) {
                    final int longValue = (int) (this.finishedProgress + (((((float) ((Long) objArr[1]).longValue()) / ((float) ((Long) objArr[2]).longValue())) / this.messageObjects.size()) * 100.0f));
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$MediaLoader$$ExternalSyntheticLambda7
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaController.MediaLoader.this.lambda$didReceivedNotification$9(longValue);
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didReceivedNotification$9(int i) {
            try {
                this.progressDialog.setProgress(i);
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
    }

    public static void saveFilesFromMessages(Context context, AccountInstance accountInstance, ArrayList<MessageObject> arrayList, MessagesStorage.IntCallback intCallback) {
        if (arrayList == null || arrayList.isEmpty() || arrayList.get(0) == null) {
            return;
        }
        new MediaLoader(context, accountInstance, arrayList, intCallback).start();
    }

    public static void saveFile(String str, Context context, int i, String str2, String str3) {
        saveFile(str, context, i, str2, str3, null);
    }

    public static void saveFile(String str, Context context, int i, String str2, String str3, Utilities.Callback<Uri> callback) {
        saveFile(str, context, i, str2, str3, callback, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void saveFile(java.lang.String r13, android.content.Context r14, final int r15, final java.lang.String r16, final java.lang.String r17, final org.telegram.messenger.Utilities.Callback<android.net.Uri> r18, boolean r19) {
        /*
            r0 = r13
            r1 = r14
            if (r0 == 0) goto L80
            if (r1 != 0) goto L8
            goto L80
        L8:
            boolean r2 = android.text.TextUtils.isEmpty(r13)
            r3 = 0
            if (r2 != 0) goto L27
            java.io.File r2 = new java.io.File
            r2.<init>(r13)
            boolean r0 = r2.exists()
            if (r0 == 0) goto L27
            android.net.Uri r0 = android.net.Uri.fromFile(r2)
            boolean r0 = org.telegram.messenger.AndroidUtilities.isInternalUri(r0)
            if (r0 == 0) goto L25
            goto L27
        L25:
            r6 = r2
            goto L28
        L27:
            r6 = r3
        L28:
            if (r6 != 0) goto L2b
            return
        L2b:
            r0 = 1
            boolean[] r9 = new boolean[r0]
            r2 = 0
            r9[r2] = r2
            boolean r4 = r6.exists()
            if (r4 == 0) goto L80
            boolean[] r12 = new boolean[r0]
            if (r15 == 0) goto L6a
            org.telegram.ui.ActionBar.AlertDialog r4 = new org.telegram.ui.ActionBar.AlertDialog     // Catch: java.lang.Exception -> L66
            r5 = 2
            r4.<init>(r14, r5)     // Catch: java.lang.Exception -> L66
            java.lang.String r1 = "Loading"
            int r5 = org.telegram.messenger.C3632R.string.Loading     // Catch: java.lang.Exception -> L66
            java.lang.String r1 = org.telegram.messenger.LocaleController.getString(r1, r5)     // Catch: java.lang.Exception -> L66
            r4.setMessage(r1)     // Catch: java.lang.Exception -> L66
            r4.setCanceledOnTouchOutside(r2)     // Catch: java.lang.Exception -> L66
            r4.setCancelable(r0)     // Catch: java.lang.Exception -> L66
            org.telegram.messenger.MediaController$$ExternalSyntheticLambda1 r0 = new org.telegram.messenger.MediaController$$ExternalSyntheticLambda1     // Catch: java.lang.Exception -> L66
            r0.<init>()     // Catch: java.lang.Exception -> L66
            r4.setOnCancelListener(r0)     // Catch: java.lang.Exception -> L66
            org.telegram.messenger.MediaController$$ExternalSyntheticLambda44 r0 = new org.telegram.messenger.MediaController$$ExternalSyntheticLambda44     // Catch: java.lang.Exception -> L66
            r0.<init>()     // Catch: java.lang.Exception -> L66
            r1 = 250(0xfa, double:1.235E-321)
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r0, r1)     // Catch: java.lang.Exception -> L66
            r8 = r4
            goto L6b
        L66:
            r0 = move-exception
            org.telegram.messenger.FileLog.m102e(r0)
        L6a:
            r8 = r3
        L6b:
            java.lang.Thread r0 = new java.lang.Thread
            org.telegram.messenger.MediaController$$ExternalSyntheticLambda5 r1 = new org.telegram.messenger.MediaController$$ExternalSyntheticLambda5
            r4 = r1
            r5 = r15
            r7 = r16
            r10 = r17
            r11 = r18
            r4.<init>()
            r0.<init>(r1)
            r0.start()
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.saveFile(java.lang.String, android.content.Context, int, java.lang.String, java.lang.String, org.telegram.messenger.Utilities$Callback, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveFile$37(boolean[] zArr, DialogInterface dialogInterface) {
        zArr[0] = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveFile$38(boolean[] zArr, AlertDialog alertDialog) {
        if (zArr[0]) {
            return;
        }
        alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
        if (r0 != null) goto L8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01e0 A[Catch: Exception -> 0x0228, TryCatch #12 {Exception -> 0x0228, blocks: (B:3:0x000a, B:5:0x0012, B:127:0x021f, B:10:0x0020, B:30:0x00db, B:32:0x00e1, B:33:0x00e4, B:114:0x01dc, B:116:0x01e0, B:121:0x01eb, B:122:0x020f, B:123:0x0216, B:113:0x01d7, B:12:0x003f, B:14:0x005e, B:16:0x006b, B:18:0x007e, B:24:0x0090, B:26:0x00ca, B:29:0x00d7, B:25:0x00b3, B:15:0x0065), top: B:141:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x021d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:157:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01b8 A[Catch: all -> 0x01bc, TRY_ENTER, TRY_LEAVE, TryCatch #14 {all -> 0x01c2, blocks: (B:97:0x01c1, B:73:0x0197, B:92:0x01b8), top: B:147:0x00f0 }] */
    /* JADX WARN: Type inference failed for: r23v10 */
    /* JADX WARN: Type inference failed for: r23v3, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r23v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$saveFile$43(int r21, java.io.File r22, java.lang.String r23, final org.telegram.p043ui.ActionBar.AlertDialog r24, boolean[] r25, java.lang.String r26, final org.telegram.messenger.Utilities.Callback r27, final boolean[] r28) {
        /*
            Method dump skipped, instructions count: 569
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.lambda$saveFile$43(int, java.io.File, java.lang.String, org.telegram.ui.ActionBar.AlertDialog, boolean[], java.lang.String, org.telegram.messenger.Utilities$Callback, boolean[]):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveFile$39(AlertDialog alertDialog) {
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveFile$40(AlertDialog alertDialog, int i) {
        try {
            alertDialog.setProgress(i);
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveFile$42(AlertDialog alertDialog, boolean[] zArr) {
        try {
            if (alertDialog.isShowing()) {
                alertDialog.dismiss();
            } else {
                zArr[0] = true;
            }
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Uri saveFileInternal(int i, File file, String str) {
        Uri contentUri;
        try {
            ContentValues contentValues = new ContentValues();
            String fileExtension = FileLoader.getFileExtension(file);
            String mimeTypeFromExtension = fileExtension != null ? MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtension) : null;
            if ((i == 0 || i == 1) && mimeTypeFromExtension != null) {
                if (mimeTypeFromExtension.startsWith("image")) {
                    i = 0;
                }
                if (mimeTypeFromExtension.startsWith("video")) {
                    i = 1;
                }
            }
            if (i == 0) {
                if (str == null) {
                    str = AndroidUtilities.generateFileName(0, fileExtension);
                }
                contentUri = MediaStore.Images.Media.getContentUri("external_primary");
                contentValues.put("relative_path", new File(Environment.DIRECTORY_PICTURES, "Telegram") + File.separator);
                contentValues.put("_display_name", str);
                contentValues.put("mime_type", mimeTypeFromExtension);
            } else if (i == 1) {
                if (str == null) {
                    str = AndroidUtilities.generateFileName(1, fileExtension);
                }
                contentValues.put("relative_path", new File(Environment.DIRECTORY_MOVIES, "Telegram") + File.separator);
                contentUri = MediaStore.Video.Media.getContentUri("external_primary");
                contentValues.put("_display_name", str);
            } else if (i == 2) {
                if (str == null) {
                    str = file.getName();
                }
                contentValues.put("relative_path", new File(Environment.DIRECTORY_DOWNLOADS, "Telegram") + File.separator);
                contentUri = MediaStore.Downloads.getContentUri("external_primary");
                contentValues.put("_display_name", str);
            } else {
                if (str == null) {
                    str = file.getName();
                }
                contentValues.put("relative_path", new File(Environment.DIRECTORY_MUSIC, "Telegram") + File.separator);
                contentUri = MediaStore.Audio.Media.getContentUri("external_primary");
                contentValues.put("_display_name", str);
            }
            contentValues.put("mime_type", mimeTypeFromExtension);
            Uri insert = ApplicationLoader.applicationContext.getContentResolver().insert(contentUri, contentValues);
            if (insert != null) {
                FileInputStream fileInputStream = new FileInputStream(file);
                AndroidUtilities.copyFile(fileInputStream, ApplicationLoader.applicationContext.getContentResolver().openOutputStream(insert));
                fileInputStream.close();
            }
            return insert;
        } catch (Exception e) {
            FileLog.m102e(e);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getStickerExt(android.net.Uri r8) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.getStickerExt(android.net.Uri):java.lang.String");
    }

    public static boolean isWebp(Uri uri) {
        InputStream inputStream = null;
        try {
            try {
                try {
                    inputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                    byte[] bArr = new byte[12];
                    if (inputStream.read(bArr, 0, 12) == 12) {
                        String lowerCase = new String(bArr).toLowerCase();
                        if (lowerCase.startsWith("riff")) {
                            if (lowerCase.endsWith("webp")) {
                                try {
                                    inputStream.close();
                                } catch (Exception e) {
                                    FileLog.m102e(e);
                                }
                                return true;
                            }
                        }
                    }
                    inputStream.close();
                } catch (Exception e2) {
                    FileLog.m102e(e2);
                }
            } catch (Exception e3) {
                FileLog.m102e(e3);
                if (inputStream != null) {
                    inputStream.close();
                }
            }
            return false;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception e4) {
                    FileLog.m102e(e4);
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x003d -> B:32:0x0040). Please submit an issue!!! */
    public static boolean isGif(Uri uri) {
        InputStream inputStream = null;
        try {
            try {
                try {
                    inputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                    byte[] bArr = new byte[3];
                    if (inputStream.read(bArr, 0, 3) == 3) {
                        if (new String(bArr).equalsIgnoreCase(AnalyticsEvent.SendClip.typeGif)) {
                            try {
                                inputStream.close();
                            } catch (Exception e) {
                                FileLog.m102e(e);
                            }
                            return true;
                        }
                    }
                    inputStream.close();
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception e2) {
                            FileLog.m102e(e2);
                        }
                    }
                    throw th;
                }
            } catch (Exception e3) {
                FileLog.m102e(e3);
                if (inputStream != null) {
                    inputStream.close();
                }
            }
        } catch (Exception e4) {
            FileLog.m102e(e4);
        }
        return false;
    }

    public static String getFileName(Uri uri) {
        if (uri == null) {
            return "";
        }
        try {
            if (uri.getScheme().equals("content")) {
                try {
                    Cursor query = ApplicationLoader.applicationContext.getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
                    r2 = query.moveToFirst() ? query.getString(query.getColumnIndex("_display_name")) : null;
                    query.close();
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
            }
            if (r2 == null) {
                String path = uri.getPath();
                int lastIndexOf = path.lastIndexOf(47);
                return lastIndexOf != -1 ? path.substring(lastIndexOf + 1) : path;
            }
            return r2;
        } catch (Exception e2) {
            FileLog.m102e(e2);
            return "";
        }
    }

    public static String copyFileToCache(Uri uri, String str) {
        return copyFileToCache(uri, str, -1L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0131, code lost:
        r3 = r5.getAbsolutePath();
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0135, code lost:
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0139, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x013a, code lost:
        org.telegram.messenger.FileLog.m102e(r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0187 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x017c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x01a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x00ab A[EDGE_INSN: B:169:0x00ab->B:27:0x00ab ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0164 A[LOOP:0: B:16:0x0048->B:94:0x0164, LOOP_END] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.io.FileOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String copyFileToCache(android.net.Uri r13, java.lang.String r14, long r15) {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.copyFileToCache(android.net.Uri, java.lang.String, long):java.lang.String");
    }

    public static void loadGalleryPhotosAlbums(final int i) {
        Thread thread = new Thread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.lambda$loadGalleryPhotosAlbums$45(i);
            }
        });
        thread.setPriority(1);
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x03c8, code lost:
        if (r0.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b4, code lost:
        if (r0.checkSelfPermission("android.permission.READ_MEDIA_AUDIO") == 0) goto L210;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x03f9  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0573 A[LOOP:0: B:284:0x056d->B:286:0x0573, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:311:0x0367 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0103 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:321:0x03ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:347:0x055d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:363:0x054f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$loadGalleryPhotosAlbums$45(int r54) {
        /*
            Method dump skipped, instructions count: 1451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.lambda$loadGalleryPhotosAlbums$45(int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$loadGalleryPhotosAlbums$44(PhotoEntry photoEntry, PhotoEntry photoEntry2) {
        long j = photoEntry.dateTaken;
        long j2 = photoEntry2.dateTaken;
        if (j < j2) {
            return 1;
        }
        return j > j2 ? -1 : 0;
    }

    private static void broadcastNewPhotos(final int i, final ArrayList<AlbumEntry> arrayList, final ArrayList<AlbumEntry> arrayList2, final Integer num, final AlbumEntry albumEntry, final AlbumEntry albumEntry2, final AlbumEntry albumEntry3, int i2) {
        Runnable runnable = broadcastPhotosRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.lambda$broadcastNewPhotos$46(i, arrayList, arrayList2, num, albumEntry, albumEntry2, albumEntry3);
            }
        };
        broadcastPhotosRunnable = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$broadcastNewPhotos$46(int i, ArrayList arrayList, ArrayList arrayList2, Integer num, AlbumEntry albumEntry, AlbumEntry albumEntry2, AlbumEntry albumEntry3) {
        if (PhotoViewer.getInstance().isVisible() && !forceBroadcastNewPhotos) {
            broadcastNewPhotos(i, arrayList, arrayList2, num, albumEntry, albumEntry2, albumEntry3, 1000);
            return;
        }
        allMediaAlbums = arrayList;
        allPhotoAlbums = arrayList2;
        broadcastPhotosRunnable = null;
        allPhotosAlbumEntry = albumEntry2;
        allMediaAlbumEntry = albumEntry;
        allVideosAlbumEntry = albumEntry3;
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.albumsDidLoad, Integer.valueOf(i), arrayList, arrayList2, num);
    }

    public void scheduleVideoConvert(MessageObject messageObject) {
        scheduleVideoConvert(messageObject, false, true);
    }

    public boolean scheduleVideoConvert(MessageObject messageObject, boolean z, boolean z2) {
        if (messageObject == null || messageObject.videoEditedInfo == null) {
            return false;
        }
        if (!z || this.videoConvertQueue.isEmpty()) {
            if (z) {
                new File(messageObject.messageOwner.attachPath).delete();
            }
            VideoConvertMessage videoConvertMessage = new VideoConvertMessage(messageObject, messageObject.videoEditedInfo, z2);
            this.videoConvertQueue.add(videoConvertMessage);
            if (videoConvertMessage.foreground) {
                this.foregroundConvertingMessages.add(videoConvertMessage);
                checkForegroundConvertMessage(false);
            }
            if (this.videoConvertQueue.size() == 1) {
                startVideoConvertFromQueue();
            }
            return true;
        }
        return false;
    }

    public void cancelVideoConvert(MessageObject messageObject) {
        if (messageObject == null || this.videoConvertQueue.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.videoConvertQueue.size(); i++) {
            VideoConvertMessage videoConvertMessage = this.videoConvertQueue.get(i);
            MessageObject messageObject2 = videoConvertMessage.messageObject;
            if (messageObject2.equals(messageObject) && messageObject2.currentAccount == messageObject.currentAccount) {
                if (i == 0) {
                    synchronized (this.videoConvertSync) {
                        videoConvertMessage.videoEditedInfo.canceled = true;
                    }
                    return;
                }
                this.foregroundConvertingMessages.remove(this.videoConvertQueue.remove(i));
                checkForegroundConvertMessage(true);
                return;
            }
        }
    }

    private void checkForegroundConvertMessage(boolean z) {
        if (!this.foregroundConvertingMessages.isEmpty()) {
            this.currentForegroundConvertingVideo = this.foregroundConvertingMessages.get(0);
        } else {
            this.currentForegroundConvertingVideo = null;
        }
        if (this.currentForegroundConvertingVideo != null || z) {
            VideoEncodingService.start(z);
        }
    }

    private boolean startVideoConvertFromQueue() {
        if (this.videoConvertQueue.isEmpty()) {
            return false;
        }
        VideoConvertMessage videoConvertMessage = this.videoConvertQueue.get(0);
        VideoEditedInfo videoEditedInfo = videoConvertMessage.videoEditedInfo;
        synchronized (this.videoConvertSync) {
            if (videoEditedInfo != null) {
                videoEditedInfo.canceled = false;
            }
        }
        VideoConvertRunnable.runConversion(videoConvertMessage);
        return true;
    }

    public static MediaCodecInfo selectCodec(String str) {
        int codecCount = MediaCodecList.getCodecCount();
        MediaCodecInfo mediaCodecInfo = null;
        for (int i = 0; i < codecCount; i++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (codecInfoAt.isEncoder()) {
                for (String str2 : codecInfoAt.getSupportedTypes()) {
                    if (str2.equalsIgnoreCase(str)) {
                        String name = codecInfoAt.getName();
                        if (name != null && (!name.equals("OMX.SEC.avc.enc") || name.equals("OMX.SEC.AVC.Encoder"))) {
                            return codecInfoAt;
                        }
                        mediaCodecInfo = codecInfoAt;
                    }
                }
                continue;
            }
        }
        return mediaCodecInfo;
    }

    public static int selectColorFormat(MediaCodecInfo mediaCodecInfo, String str) {
        int i;
        MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int[] iArr = capabilitiesForType.colorFormats;
            if (i2 >= iArr.length) {
                return i3;
            }
            i = iArr[i2];
            if (isRecognizedFormat(i)) {
                if (!mediaCodecInfo.getName().equals("OMX.SEC.AVC.Encoder") || i != 19) {
                    break;
                }
                i3 = i;
            }
            i2++;
        }
        return i;
    }

    public static int findTrack(MediaExtractor mediaExtractor, boolean z) {
        int trackCount = mediaExtractor.getTrackCount();
        for (int i = 0; i < trackCount; i++) {
            String string = mediaExtractor.getTrackFormat(i).getString("mime");
            if (z) {
                if (string.startsWith("audio/")) {
                    return i;
                }
            } else if (string.startsWith("video/")) {
                return i;
            }
        }
        return -5;
    }

    public static boolean isH264Video(String str) {
        MediaExtractor mediaExtractor = new MediaExtractor();
        boolean z = false;
        try {
            mediaExtractor.setDataSource(str);
            int findTrack = findTrack(mediaExtractor, false);
            if (findTrack >= 0) {
                if (mediaExtractor.getTrackFormat(findTrack).getString("mime").equals("video/avc")) {
                    z = true;
                }
            }
            return z;
        } catch (Exception e) {
            FileLog.m102e(e);
            return false;
        } finally {
            mediaExtractor.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void didWriteData(final VideoConvertMessage videoConvertMessage, final File file, final boolean z, final long j, final long j2, final boolean z2, final float f) {
        VideoEditedInfo videoEditedInfo = videoConvertMessage.videoEditedInfo;
        final boolean z3 = videoEditedInfo.videoConvertFirstWrite;
        if (z3) {
            videoEditedInfo.videoConvertFirstWrite = false;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaController$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                MediaController.this.lambda$didWriteData$47(z2, z, videoConvertMessage, file, f, j, z3, j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didWriteData$47(boolean z, boolean z2, VideoConvertMessage videoConvertMessage, File file, float f, long j, boolean z3, long j2) {
        if (z || z2) {
            boolean z4 = videoConvertMessage.videoEditedInfo.canceled;
            synchronized (this.videoConvertSync) {
                videoConvertMessage.videoEditedInfo.canceled = false;
            }
            this.videoConvertQueue.remove(videoConvertMessage);
            this.foregroundConvertingMessages.remove(videoConvertMessage);
            checkForegroundConvertMessage(z4 || z);
            startVideoConvertFromQueue();
        }
        if (videoConvertMessage.videoEditedInfo instanceof AnimatedStickerEditedInfo) {
            if (z) {
                NotificationCenter.getInstance(videoConvertMessage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.gifStickerAvatarPreparingFailed, new Object[0]);
            } else if (z2) {
                NotificationCenter.getInstance(videoConvertMessage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.gifStickerAvatarPrepared, file.getAbsolutePath(), Boolean.TRUE);
            }
        } else if (z) {
            NotificationCenter.getInstance(videoConvertMessage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.filePreparingFailed, videoConvertMessage.messageObject, file.toString(), Float.valueOf(f), Long.valueOf(j));
        } else {
            if (z3) {
                NotificationCenter.getInstance(videoConvertMessage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.filePreparingStarted, videoConvertMessage.messageObject, file.toString(), Float.valueOf(f), Long.valueOf(j));
            }
            NotificationCenter notificationCenter = NotificationCenter.getInstance(videoConvertMessage.currentAccount);
            int i = NotificationCenter.fileNewChunkAvailable;
            Object[] objArr = new Object[6];
            objArr[0] = videoConvertMessage.messageObject;
            objArr[1] = file.toString();
            objArr[2] = Long.valueOf(j2);
            objArr[3] = Long.valueOf(z2 ? file.length() : 0L);
            objArr[4] = Float.valueOf(f);
            objArr[5] = Long.valueOf(j);
            notificationCenter.lambda$postNotificationNameOnUIThread$1(i, objArr);
        }
    }

    public void pauseByRewind() {
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer != null) {
            videoPlayer.pause();
        }
    }

    public void resumeByRewind() {
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer == null || this.playingMessageObject == null || this.isPaused) {
            return;
        }
        if (videoPlayer.isBuffering()) {
            MessageObject messageObject = this.playingMessageObject;
            cleanupPlayer(false, false);
            playMessage(messageObject);
            return;
        }
        this.audioPlayer.play();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class VideoConvertRunnable implements Runnable {
        private VideoConvertMessage convertMessage;

        private VideoConvertRunnable(VideoConvertMessage videoConvertMessage) {
            this.convertMessage = videoConvertMessage;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.convertMessage != null) {
                MediaController.getInstance().convertVideo(this.convertMessage);
            }
        }

        public static void runConversion(final VideoConvertMessage videoConvertMessage) {
            new Thread(new Runnable() { // from class: org.telegram.messenger.MediaController$VideoConvertRunnable$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController.VideoConvertRunnable.lambda$runConversion$0(MediaController.VideoConvertMessage.this);
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$runConversion$0(VideoConvertMessage videoConvertMessage) {
            try {
                Thread thread = new Thread(new VideoConvertRunnable(videoConvertMessage), "VideoConvertRunnable");
                thread.start();
                thread.join();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01ff A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean convertVideo(final org.telegram.messenger.MediaController.VideoConvertMessage r39) {
        /*
            Method dump skipped, instructions count: 539
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.convertVideo(org.telegram.messenger.MediaController$VideoConvertMessage):boolean");
    }

    public static int getVideoBitrate(String str) {
        int i;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(str);
            i = Integer.parseInt(mediaMetadataRetriever.extractMetadata(20));
        } catch (Exception e) {
            FileLog.m102e(e);
            i = 0;
        }
        try {
            mediaMetadataRetriever.release();
        } catch (Throwable th) {
            FileLog.m102e(th);
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0053 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int makeVideoBitrate(int r5, int r6, int r7, int r8, int r9) {
        /*
            int r0 = java.lang.Math.min(r8, r9)
            r1 = 1065353216(0x3f800000, float:1.0)
            r2 = 1080(0x438, float:1.513E-42)
            if (r0 < r2) goto Lf
            r0 = 6800000(0x67c280, float:9.52883E-39)
        Ld:
            r2 = r1
            goto L35
        Lf:
            int r0 = java.lang.Math.min(r8, r9)
            r2 = 720(0x2d0, float:1.009E-42)
            if (r0 < r2) goto L1b
            r0 = 2600000(0x27ac40, float:3.643376E-39)
            goto Ld
        L1b:
            int r0 = java.lang.Math.min(r8, r9)
            r1 = 480(0x1e0, float:6.73E-43)
            if (r0 < r1) goto L2c
            r0 = 1000000(0xf4240, float:1.401298E-39)
            r1 = 1061158912(0x3f400000, float:0.75)
            r2 = 1063675494(0x3f666666, float:0.9)
            goto L35
        L2c:
            r0 = 750000(0xb71b0, float:1.050974E-39)
            r1 = 1058642330(0x3f19999a, float:0.6)
            r2 = 1060320051(0x3f333333, float:0.7)
        L35:
            float r3 = (float) r7
            float r5 = (float) r5
            float r4 = (float) r8
            float r5 = r5 / r4
            float r6 = (float) r6
            float r4 = (float) r9
            float r6 = r6 / r4
            float r5 = java.lang.Math.min(r5, r6)
            float r3 = r3 / r5
            int r5 = (int) r3
            float r5 = (float) r5
            float r5 = r5 * r1
            int r5 = (int) r5
            int r6 = getVideoBitrateWithFactor(r2)
            float r6 = (float) r6
            r1 = 1231093760(0x49610000, float:921600.0)
            int r9 = r9 * r8
            float r8 = (float) r9
            float r1 = r1 / r8
            float r6 = r6 / r1
            int r6 = (int) r6
            if (r7 >= r6) goto L54
            return r5
        L54:
            if (r5 <= r0) goto L57
            return r0
        L57:
            int r5 = java.lang.Math.max(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.makeVideoBitrate(int, int, int, int, int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int extractRealEncoderBitrate(int r4, int r5, int r6, boolean r7) {
        /*
            java.lang.String r0 = "bitrate"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r4)
            java.lang.String r2 = ""
            r1.append(r2)
            r1.append(r5)
            r1.append(r2)
            r1.append(r6)
            java.lang.String r1 = r1.toString()
            j$.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> r2 = org.telegram.messenger.MediaController.cachedEncoderBitrates
            java.lang.Object r2 = r2.get(r1)
            java.lang.Integer r2 = (java.lang.Integer) r2
            if (r2 == 0) goto L2b
            int r4 = r2.intValue()
            return r4
        L2b:
            r2 = 0
            if (r7 == 0) goto L36
            java.lang.String r7 = "video/hevc"
            android.media.MediaCodec r7 = android.media.MediaCodec.createEncoderByType(r7)     // Catch: java.lang.Exception -> L36
            goto L37
        L36:
            r7 = r2
        L37:
            java.lang.String r3 = "video/avc"
            if (r7 != 0) goto L40
            android.media.MediaCodec r7 = android.media.MediaCodec.createEncoderByType(r3)     // Catch: java.lang.Exception -> L7a
        L40:
            android.media.MediaFormat r4 = android.media.MediaFormat.createVideoFormat(r3, r4, r5)     // Catch: java.lang.Exception -> L7a
            java.lang.String r5 = "color-format"
            r3 = 2130708361(0x7f000789, float:1.701803E38)
            r4.setInteger(r5, r3)     // Catch: java.lang.Exception -> L7a
            java.lang.String r5 = "max-bitrate"
            r4.setInteger(r5, r6)     // Catch: java.lang.Exception -> L7a
            r4.setInteger(r0, r6)     // Catch: java.lang.Exception -> L7a
            java.lang.String r5 = "frame-rate"
            r3 = 30
            r4.setInteger(r5, r3)     // Catch: java.lang.Exception -> L7a
            java.lang.String r5 = "i-frame-interval"
            r3 = 1
            r4.setInteger(r5, r3)     // Catch: java.lang.Exception -> L7a
            r7.configure(r4, r2, r2, r3)     // Catch: java.lang.Exception -> L7a
            android.media.MediaFormat r4 = r7.getOutputFormat()     // Catch: java.lang.Exception -> L7a
            int r4 = r4.getInteger(r0)     // Catch: java.lang.Exception -> L7a
            j$.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> r5 = org.telegram.messenger.MediaController.cachedEncoderBitrates     // Catch: java.lang.Exception -> L7a
            java.lang.Integer r0 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Exception -> L7a
            r5.put(r1, r0)     // Catch: java.lang.Exception -> L7a
            r7.release()     // Catch: java.lang.Exception -> L7a
            return r4
        L7a:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaController.extractRealEncoderBitrate(int, int, int, boolean):int");
    }

    /* loaded from: classes4.dex */
    public static class PlaylistGlobalSearchParams {
        final long dialogId;
        public boolean endReached;
        final FiltersView.MediaFilterData filter;
        public int folderId;
        final long maxDate;
        final long minDate;
        public int nextSearchRate;
        final String query;
        public int totalCount;

        public PlaylistGlobalSearchParams(String str, long j, long j2, long j3, FiltersView.MediaFilterData mediaFilterData) {
            this.filter = mediaFilterData;
            this.query = str;
            this.dialogId = j;
            this.minDate = j2;
            this.maxDate = j3;
        }
    }

    public boolean currentPlaylistIsGlobalSearch() {
        return this.playlistGlobalSearchParams != null;
    }
}
