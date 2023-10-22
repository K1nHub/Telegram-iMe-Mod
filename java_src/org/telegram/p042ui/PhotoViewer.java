package org.telegram.p042ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Insets;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.transition.ChangeBounds;
import android.transition.Fade;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.util.FloatProperty;
import android.util.Pair;
import android.util.Property;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.OverScroller;
import android.widget.Scroller;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewSwitcher;
import androidx.annotation.Keep;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.widget.NestedScrollView;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScrollerEnd;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.C0479C;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.exoplayer2.p016ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.enums.ExternalApp;
import com.iMe.fork.enums.PhotoViewerMenuItem;
import com.iMe.fork.enums.TranslationDialogType;
import com.iMe.fork.p023ui.dialog.ForwardCloudBottomSheet;
import com.iMe.fork.p023ui.dialog.TranslateAlert;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.translation.TranslationArgs;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.p030ui.base.mvp.view.MvpNoParentCustomView;
import com.iMe.p030ui.recognition.PhotoView;
import com.iMe.p030ui.recognition.PhotoViewerPresenter;
import com.iMe.p030ui.recognition.RecognitionBottomSheetDialog;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.helper.wallet.WalletHelper;
import io.reactivex.disposables.Disposable;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import moxy.presenter.InjectPresenter;
import moxy.presenter.ProvidePresenter;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.Bitmaps;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.BringAppForegroundService;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsSettingsFacade;
import org.telegram.messenger.SecureDocument;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.TranslateController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.WebFile;
import org.telegram.messenger.camera.Size;
import org.telegram.messenger.video.VideoPlayerRewinder;
import org.telegram.p042ui.ActionBar.ActionBarMenu;
import org.telegram.p042ui.ActionBar.ActionBarMenuItem;
import org.telegram.p042ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p042ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p042ui.ActionBar.AlertDialog;
import org.telegram.p042ui.ActionBar.BaseFragment;
import org.telegram.p042ui.ActionBar.BottomSheet;
import org.telegram.p042ui.ActionBar.C3702ActionBar;
import org.telegram.p042ui.ActionBar.SimpleTextView;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Cells.CheckBoxCell;
import org.telegram.p042ui.Cells.PhotoPickerPhotoCell;
import org.telegram.p042ui.Cells.TextSelectionHelper;
import org.telegram.p042ui.ChooseSpeedLayout;
import org.telegram.p042ui.Components.AlertsCreator;
import org.telegram.p042ui.Components.AnimatedEmojiSpan;
import org.telegram.p042ui.Components.AnimatedFileDrawable;
import org.telegram.p042ui.Components.AnimatedFloat;
import org.telegram.p042ui.Components.AnimatedTextView;
import org.telegram.p042ui.Components.AnimationProperties;
import org.telegram.p042ui.Components.BackupImageView;
import org.telegram.p042ui.Components.BlurringShader;
import org.telegram.p042ui.Components.Bulletin;
import org.telegram.p042ui.Components.BulletinFactory;
import org.telegram.p042ui.Components.CaptionPhotoViewer;
import org.telegram.p042ui.Components.ChatAttachAlert;
import org.telegram.p042ui.Components.CheckBox;
import org.telegram.p042ui.Components.ClippingImageView;
import org.telegram.p042ui.Components.CombinedDrawable;
import org.telegram.p042ui.Components.Crop.CropAreaView;
import org.telegram.p042ui.Components.Crop.CropTransform;
import org.telegram.p042ui.Components.CubicBezierInterpolator;
import org.telegram.p042ui.Components.FilterGLThread;
import org.telegram.p042ui.Components.FilterShaders;
import org.telegram.p042ui.Components.FloatSeekBarAccessibilityDelegate;
import org.telegram.p042ui.Components.Forum.ForumUtilities;
import org.telegram.p042ui.Components.GestureDetector2;
import org.telegram.p042ui.Components.GroupedPhotosListView;
import org.telegram.p042ui.Components.HideViewAfterAnimation;
import org.telegram.p042ui.Components.ImageUpdater;
import org.telegram.p042ui.Components.LayoutHelper;
import org.telegram.p042ui.Components.LinkSpanDrawable;
import org.telegram.p042ui.Components.LoadingDrawable;
import org.telegram.p042ui.Components.MentionsContainerView;
import org.telegram.p042ui.Components.OptionsSpeedIconDrawable;
import org.telegram.p042ui.Components.Paint.Views.LPhotoPaintView;
import org.telegram.p042ui.Components.Paint.Views.PaintCancelView;
import org.telegram.p042ui.Components.Paint.Views.PaintDoneView;
import org.telegram.p042ui.Components.PaintingOverlay;
import org.telegram.p042ui.Components.PhotoCropView;
import org.telegram.p042ui.Components.PhotoFilterView;
import org.telegram.p042ui.Components.PhotoViewerWebView;
import org.telegram.p042ui.Components.PickerBottomLayoutViewer;
import org.telegram.p042ui.Components.PipVideoOverlay;
import org.telegram.p042ui.Components.PlayPauseDrawable;
import org.telegram.p042ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p042ui.Components.RLottieDrawable;
import org.telegram.p042ui.Components.RadialProgressView;
import org.telegram.p042ui.Components.RecyclerListView;
import org.telegram.p042ui.Components.ScaleStateListAnimator;
import org.telegram.p042ui.Components.ShareAlert;
import org.telegram.p042ui.Components.SizeNotifierFrameLayoutPhoto;
import org.telegram.p042ui.Components.SpeedIconDrawable;
import org.telegram.p042ui.Components.StickersAlert;
import org.telegram.p042ui.Components.TextViewSwitcher;
import org.telegram.p042ui.Components.Tooltip;
import org.telegram.p042ui.Components.TranslateAlert2;
import org.telegram.p042ui.Components.URLSpanReplacement;
import org.telegram.p042ui.Components.UndoView;
import org.telegram.p042ui.Components.VideoCompressButton;
import org.telegram.p042ui.Components.VideoEditTextureView;
import org.telegram.p042ui.Components.VideoForwardDrawable;
import org.telegram.p042ui.Components.VideoPlayer;
import org.telegram.p042ui.Components.VideoPlayerSeekBar;
import org.telegram.p042ui.Components.VideoSeekPreviewImage;
import org.telegram.p042ui.Components.VideoTimelinePlayView;
import org.telegram.p042ui.Components.ViewHelper;
import org.telegram.p042ui.Components.spoilers.SpoilersTextView;
import org.telegram.p042ui.PhotoViewer;
import org.telegram.p042ui.Stories.DarkThemeResourceProvider;
import org.telegram.p042ui.Stories.recorder.KeyboardNotifier;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$PageBlock;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_fileLocationToBeDeprecated;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$TL_inputPhoto;
import org.telegram.tgnet.TLRPC$TL_message;
import org.telegram.tgnet.TLRPC$TL_messageActionEmpty;
import org.telegram.tgnet.TLRPC$TL_messageActionUserUpdatedPhoto;
import org.telegram.tgnet.TLRPC$TL_messageMediaEmpty;
import org.telegram.tgnet.TLRPC$TL_messageMediaInvoice;
import org.telegram.tgnet.TLRPC$TL_messageMediaPhoto;
import org.telegram.tgnet.TLRPC$TL_messageMediaWebPage;
import org.telegram.tgnet.TLRPC$TL_messageService;
import org.telegram.tgnet.TLRPC$TL_page;
import org.telegram.tgnet.TLRPC$TL_pageBlockAuthorDate;
import org.telegram.tgnet.TLRPC$TL_photo;
import org.telegram.tgnet.TLRPC$TL_photoEmpty;
import org.telegram.tgnet.TLRPC$TL_photos_photo;
import org.telegram.tgnet.TLRPC$TL_webDocument;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$WebDocument;
import org.telegram.tgnet.TLRPC$WebPage;
/* renamed from: org.telegram.ui.PhotoViewer */
/* loaded from: classes5.dex */
public class PhotoViewer extends MvpNoParentCustomView implements NotificationCenter.NotificationCenterDelegate, GestureDetector2.OnGestureListener, GestureDetector2.OnDoubleTapListener, PhotoView {
    private static volatile PhotoViewer Instance;
    private static volatile PhotoViewer PipInstance;
    private static final Property<VideoPlayerControlFrameLayout, Float> VPC_PROGRESS;
    private static DecelerateInterpolator decelerateInterpolator;
    private static Drawable[] progressDrawables;
    private static Paint progressPaint;
    private boolean ALLOW_USE_SURFACE;
    public final Property<View, Float> FLASH_VIEW_VALUE;
    private int aboutToSwitchTo;
    private C3702ActionBar actionBar;
    private AnimatorSet actionBarAnimator;
    private PhotoViewerActionBarContainer actionBarContainer;
    private Map<View, Boolean> actionBarItemsVisibility = new HashMap(4);
    private boolean actionBarWasShownBeforeByEnd;
    private Context activityContext;
    private ActionBarMenuSubItem allMediaItem;
    private boolean allowOrder;
    private boolean allowShare;
    private boolean allowShowFullscreenButton;
    private float animateToMirror;
    private float animateToRotate;
    private float animateToScale;
    private float animateToX;
    private float animateToY;
    private ClippingImageView animatingImageView;
    private Runnable animationEndRunnable;
    private int animationInProgress;
    private long animationStartTime;
    private float animationValue;
    private float[][] animationValues;
    private boolean applying;
    private AspectRatioFrameLayout aspectRatioFrameLayout;
    private boolean attachedToWindow;
    private long audioFramesSize;
    private float avatarStartProgress;
    private long avatarStartTime;
    private final ArrayList<TLRPC$Photo> avatarsArr;
    private long avatarsDialogId;
    private BackgroundDrawable backgroundDrawable;
    private Paint bitmapPaint;
    private volatile int bitrate;
    private Paint blackPaint;
    private final AnimatedFloat blurAlpha;
    private RectF blurBounds;
    private BlurringShader.BlurManager blurManager;
    private LinearGradient bottomFancyShadow;
    private Matrix bottomFancyShadowMatrix;
    private Paint bottomFancyShadowPaint;
    private FrameLayout bottomLayout;
    private boolean canDragDown;
    private boolean canEditAvatar;
    private boolean canZoom;
    private ObjectAnimator captionAnimator;
    private FrameLayout captionContainer;
    private String captionDetectedLanguage;
    private CaptionPhotoViewer captionEdit;
    private FrameLayout captionEditContainer;
    public CharSequence captionForAllMedia;
    private boolean captionHwLayerEnabled;
    private CaptionScrollView captionScrollView;
    private CaptionTextViewSwitcher captionTextViewSwitcher;
    private boolean captionTranslated;
    private long captureFrameAtTime;
    private long captureFrameReadyAtTime;
    private BlurringShader.ThumbBlurer centerBlur;
    private ImageReceiver centerImage;
    private AnimatedFloat[] centerImageInsideBlur;
    private boolean centerImageIsVideo;
    private AnimatorSet changeModeAnimation;
    private TextureView changedTextureView;
    private boolean changingPage;
    private boolean changingTextureView;
    private CheckBox checkImageView;
    ChooseSpeedLayout chooseSpeedLayout;
    private int classGuid;
    private Path clipFancyShadows;
    private float clippingImageProgress;
    public boolean closePhotoAfterSelect;
    private VideoCompressButton compressItem;
    private volatile int compressionsCount;
    private FrameLayoutDrawer containerView;
    private PhotoCountView countView;
    private boolean cropInitied;
    private ImageView cropItem;
    private CropTransform cropTransform;
    private int currentAccount;
    private AnimatedFileDrawable currentAnimation;
    private ImageLocation currentAvatarLocation;
    private Bitmap currentBitmap;
    private TLRPC$BotInlineResult currentBotInlineResult;
    private long currentDialogId;
    private int currentEditMode;
    private ImageLocation currentFileLocation;
    private ImageLocation currentFileLocationVideo;
    private String[] currentFileNames;
    private String currentImageFaceKey;
    private int currentImageHasFace;
    private String currentImagePath;
    private int currentIndex;
    private AnimatorSet currentListViewAnimation;
    private Runnable currentLoadingVideoRunnable;
    private MessageObject currentMessageObject;
    private TLRPC$PageBlock currentPageBlock;
    private float currentPanTranslationY;
    private String currentPathObject;
    private PlaceProviderObject currentPlaceObject;
    private Uri currentPlayingVideoFile;
    private SecureDocument currentSecureDocument;
    private String currentSubtitle;
    private ImageReceiver.BitmapHolder currentThumb;
    private boolean currentVideoFinishedLoading;
    private float currentVideoSpeed;
    private CharSequence customTitle;
    private boolean disableShowCheck;
    private boolean discardTap;
    private TextView docInfoTextView;
    private TextView docNameTextView;
    private TextView doneButtonFullWidth;
    private boolean doneButtonPressed;
    private boolean dontAutoPlay;
    private boolean dontChangeCaptionPosition;
    private boolean dontResetZoomOnFirstLayout;
    private boolean doubleTap;
    private boolean doubleTapEnabled;
    private float dragY;
    private boolean draggingDown;
    private boolean[] drawPressedDrawable;
    private ActionBarMenuItem editItem;
    private EditState editState;
    private boolean editing;
    private PickerBottomLayoutViewer editorDoneLayout;
    private boolean[] endReached;
    private long endTime;
    private long estimatedDuration;
    private long estimatedSize;
    private ImageView exitFullscreenButton;
    private boolean fancyShadows;
    private boolean firstAnimationDelay;
    private boolean firstFrameRendered;
    private FirstFrameView firstFrameView;
    private AnimatorSet flashAnimator;
    private View flashView;
    private ActionBarMenuItem forwardCloudItem;
    boolean fromCamera;
    private ImageView[] fullscreenButton;
    private int fullscreenedByButton;
    private GestureDetector2 gestureDetector;
    private GroupedPhotosListView groupedPhotosListView;
    public boolean hasCaptionForAllMedia;
    private Runnable hideActionBarRunnable;
    private PlaceProviderObject hideAfterAnimation;
    private UndoView hintView;
    private Rect hitRect;
    private boolean ignoreDidSetImage;
    private RectF imageBounds;
    private Matrix imageBoundsMatrix;
    private float[] imageBoundsPoints;
    private AnimatorSet imageMoveAnimation;
    private final ArrayList<MessageObject> imagesArr;
    private final ArrayList<Object> imagesArrLocals;
    private final ArrayList<ImageLocation> imagesArrLocations;
    private final ArrayList<Long> imagesArrLocationsSizes;
    private final ArrayList<ImageLocation> imagesArrLocationsVideo;
    private final ArrayList<TLRPC$Message> imagesArrMessages;
    private final ArrayList<MessageObject> imagesArrTemp;
    private final SparseArray<MessageObject>[] imagesByIds;
    private final SparseArray<MessageObject>[] imagesByIdsTemp;
    private boolean inBubbleMode;
    private boolean inPreview;
    private VideoPlayer injectingVideoPlayer;
    private SurfaceTexture injectingVideoPlayerSurface;
    private float inlineOutAnimationProgress;
    private final Rect insets;
    private DecelerateInterpolator interpolator;
    private boolean invalidCoords;
    private boolean isActionBarVisible;
    private boolean isCurrentVideo;
    private boolean isDocumentsPicker;
    private boolean isEmbedVideo;
    private boolean isEvent;
    private boolean isFirstLoading;
    private volatile boolean isH264Video;
    private boolean isInline;
    private boolean isPhotosListViewVisible;
    private boolean isPlaying;
    private boolean isStreaming;
    private boolean isVisible;
    private boolean isVisibleOrAnimating;
    private LinearLayout itemsLayout;
    private boolean keepScreenOnFlagSet;
    private int keyboardSize;
    private long lastBufferedPositionCheck;
    private boolean lastCaptionTranslating;
    private String lastControlFrameDuration;
    private Bitmap lastFrameBitmap;
    private ImageView lastFrameImageView;
    private int lastImageId;
    private long lastPhotoSetTime;
    private long lastSaveTime;
    private CharSequence lastTitle;
    private BlurringShader.ThumbBlurer leftBlur;
    private MediaController.CropState leftCropState;
    private CropTransform leftCropTransform;
    private ImageReceiver leftImage;
    private boolean leftImageIsVideo;
    private PaintingOverlay leftPaintingOverlay;
    private Bulletin limitBulletin;
    private boolean loadInitialVideo;
    private boolean loadingMoreImages;
    Runnable longPressRunnable;
    float longPressX;
    private boolean manuallyPaused;
    private StickersAlert masksAlert;
    private ActionBarMenuItem masksItem;
    private int maxSelectedPhotos;
    private float maxX;
    private float maxY;
    private ActionBarMenu menu;
    private ActionBarMenuItem menuItem;
    private OptionsSpeedIconDrawable menuItemIcon;
    private long mergeDialogId;
    private float minX;
    private float minY;
    private AnimatorSet miniProgressAnimator;
    private Runnable miniProgressShowRunnable;
    private RadialProgressView miniProgressView;
    private float mirror;
    private ImageView mirrorItem;
    private float moveStartX;
    private float moveStartY;
    private boolean moving;
    private ImageView muteItem;
    private boolean muteVideo;
    private View navigationBar;
    private int navigationBarHeight;
    private boolean needCaptionLayout;
    private long needCaptureFrameReadyAtTime;
    private boolean needSearchImageInArr;
    private boolean needShowOnReady;
    private Runnable onUserLeaveHintListener;
    private boolean openedFromProfile;
    private boolean openedFullScreenVideo;
    private boolean opennedFromMedia;
    private OrientationEventListener orientationEventListener;
    private volatile int originalBitrate;
    private volatile int originalHeight;
    private long originalSize;
    private volatile int originalWidth;
    private boolean padImageForHorizontalInsets;
    private PageBlocksAdapter pageBlocksAdapter;
    private ImageView paintItem;
    private AnimatorSet paintKeyboardAnimator;
    private KeyboardNotifier paintKeyboardNotifier;
    private int paintViewTouched;
    private PaintingOverlay paintingOverlay;
    private Activity parentActivity;
    private ChatAttachAlert parentAlert;
    private ChatActivity parentChatActivity;
    private BaseFragment parentFragment;
    private PhotoCropView photoCropView;
    private PhotoFilterView photoFilterView;
    private LPhotoPaintView photoPaintView;
    private PhotoProgressView[] photoProgressViews;
    private PhotoViewerWebView photoViewerWebView;
    private CounterView photosCounterView;
    private FrameLayout pickerView;
    private ImageView pickerViewSendButton;
    private Drawable pickerViewSendDrawable;
    private float pinchCenterX;
    private float pinchCenterY;
    private float pinchStartDistance;
    private float pinchStartScale;
    private float pinchStartX;
    private float pinchStartY;
    private boolean pipAnimationInProgress;
    private boolean pipAvailable;
    private ActionBarMenuItem pipItem;
    private int[] pipPosition;
    private boolean pipVideoOverlayAnimateFlag;
    private PhotoViewerProvider placeProvider;
    private View playButtonAccessibilityOverlay;
    private boolean playerAutoStarted;
    private boolean playerInjected;
    private boolean playerLooping;
    private boolean playerWasPlaying;
    private boolean playerWasReady;
    private GradientDrawable[] pressedDrawable;
    private float[] pressedDrawableAlpha;
    private int prevOrientation;
    private int previousCompression;
    private boolean previousCropMirrored;
    private int previousCropOrientation;
    private float previousCropPh;
    private float previousCropPw;
    private float previousCropPx;
    private float previousCropPy;
    private float previousCropRotation;
    private float previousCropScale;
    private boolean previousHasTransform;
    private AlertDialog progressDialog;
    private RadialProgressView progressView;
    private QualityChooseView qualityChooseView;
    private AnimatorSet qualityChooseViewAnimation;
    private PickerBottomLayoutViewer qualityPicker;
    @InjectPresenter
    public PhotoViewerPresenter recognitionPresenter;
    private boolean requestingPreview;
    private TextView resetButton;
    private Theme.ResourcesProvider resourcesProvider;
    private volatile int resultHeight;
    private volatile int resultWidth;
    private BlurringShader.ThumbBlurer rightBlur;
    private MediaController.CropState rightCropState;
    private CropTransform rightCropTransform;
    private ImageReceiver rightImage;
    private boolean rightImageIsVideo;
    private PaintingOverlay rightPaintingOverlay;
    private float rotate;
    private ImageView rotateItem;
    private int rotationValue;
    private SavedState savedState;
    private ArrayMap<String, SavedVideoPosition> savedVideoPositions;
    private float scale;
    private Scroller scroller;
    private final ArrayList<SecureDocument> secureDocuments;
    private float seekToProgressPending;
    private float seekToProgressPending2;
    private volatile int selectedCompression;
    private ListAdapter selectedPhotosAdapter;
    private SelectedPhotosListView selectedPhotosListView;
    private ActionBarMenuItem sendItem;
    private int sendPhotoType;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout sendPopupLayout;
    private ActionBarPopupWindow sendPopupWindow;
    private ImageUpdater.AvatarFor setAvatarFor;
    private Runnable setLoadingRunnable;
    private BlurringShader.StoryBlurDrawer shadowBlurer;
    private int sharedMediaType;
    private float shiftDp;
    private String shouldSavePositionForCurrentVideo;
    private String shouldSavePositionForCurrentVideoShortTerm;
    private PlaceProviderObject showAfterAnimation;
    private boolean shownControlsByEnd;
    private ImageReceiver sideImage;
    private boolean skipFirstBufferingProgress;
    public boolean skipLastFrameDraw;
    private int slideshowMessageId;
    private ActionBarPopupWindow.GapView speedGap;
    private ActionBarMenuSubItem speedItem;
    private int startOffset;
    private long startTime;
    private long startedPlayTime;
    private boolean streamingAlertShown;
    private Paint surfaceBlackoutPaint;
    private TextureView.SurfaceTextureListener surfaceTextureListener;
    private int switchImageAfterAnimation;
    private Runnable switchToInlineRunnable;
    private boolean switchingInlineMode;
    private int switchingToIndex;
    private int switchingToMode;
    private int[] tempInt;
    private TextSelectionHelper.SimpleTextSelectionHelper textSelectionHelper;
    private ImageView textureImageView;
    private boolean textureUploaded;
    private Tooltip tooltip;
    private LinearGradient topFancyShadow;
    private Matrix topFancyShadowMatrix;
    private Paint topFancyShadowPaint;
    private int topicId;
    private int totalImagesCount;
    private int totalImagesCountMerge;
    private int touchSlop;
    private long transitionAnimationStartTime;
    private AnimationNotificationsLocker transitionNotificationLocker;
    private float translateY;
    private ValueAnimator translateYAnimator;
    private float translationX;
    private float translationY;
    private boolean tryStartRequestPreviewOnFinish;
    private ImageView tuneItem;
    private final Runnable updateContainerFlagsRunnable;
    private Runnable updateProgressRunnable;
    private boolean usedSurfaceView;
    private VelocityTracker velocityTracker;
    private TextView videoAvatarTooltip;
    private volatile boolean videoConvertSupported;
    private float videoCrossfadeAlpha;
    private long videoCrossfadeAlphaLastTime;
    private boolean videoCrossfadeStarted;
    private float videoCutEnd;
    private float videoCutStart;
    private float videoDuration;
    private VideoForwardDrawable videoForwardDrawable;
    private Bitmap videoFrameBitmap;
    private Paint videoFrameBitmapPaint;
    private int videoFramerate;
    private long videoFramesSize;
    private int videoHeight;
    private Runnable videoPlayRunnable;
    private VideoPlayer videoPlayer;
    private Animator videoPlayerControlAnimator;
    private VideoPlayerControlFrameLayout videoPlayerControlFrameLayout;
    private boolean videoPlayerControlVisible;
    private int[] videoPlayerCurrentTime;
    VideoPlayerRewinder videoPlayerRewinder;
    private VideoPlayerSeekBar videoPlayerSeekbar;
    private View videoPlayerSeekbarView;
    private SimpleTextView videoPlayerTime;
    private int[] videoPlayerTotalTime;
    private VideoSeekPreviewImage videoPreviewFrame;
    private AnimatorSet videoPreviewFrameAnimation;
    private MessageObject videoPreviewMessageObject;
    private boolean videoSizeSet;
    private SurfaceView videoSurfaceView;
    private TextureView videoTextureView;
    private ObjectAnimator videoTimelineAnimator;
    private VideoTimelinePlayView videoTimelineView;
    private FrameLayout videoTimelineViewContainer;
    private int videoWidth;
    private Dialog visibleDialog;
    private int waitingForDraw;
    private int waitingForFirstTextureUpload;
    private boolean wasCountViewShown;
    private boolean wasLayout;
    private boolean wasRotated;
    private WindowManager.LayoutParams windowLayoutParams;
    private FrameLayout windowView;
    private boolean zoomAnimation;
    private boolean zooming;

    /* renamed from: org.telegram.ui.PhotoViewer$EmptyPhotoViewerProvider */
    /* loaded from: classes5.dex */
    public static class EmptyPhotoViewerProvider implements PhotoViewerProvider {
        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public boolean allowCaption() {
            return true;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public boolean allowSendingSubmenu() {
            return true;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public boolean canCaptureMorePhotos() {
            return true;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public /* synthetic */ boolean canLoadMoreAvatars() {
            return PhotoViewerProvider.CC.$default$canLoadMoreAvatars(this);
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public boolean canReplace(int i) {
            return false;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public boolean canScrollAway() {
            return true;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public boolean cancelButtonPressed() {
            return true;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public boolean closeKeyboard() {
            return false;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public void deleteImageAtIndex(int i) {
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public String getDeleteMessageString() {
            return null;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public MessageObject getEditingMessageObject() {
            return null;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public int getPhotoIndex(int i) {
            return -1;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i, boolean z) {
            return null;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public int getSelectedCount() {
            return 0;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public HashMap<Object, Object> getSelectedPhotos() {
            return null;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public ArrayList<Object> getSelectedPhotosOrder() {
            return null;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public ImageReceiver.BitmapHolder getThumbForPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i) {
            return null;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public int getTotalImageCount() {
            return -1;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public boolean isPhotoChecked(int i) {
            return false;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public boolean loadMore() {
            return false;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public void needAddMorePhotos() {
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public void onApplyCaption(CharSequence charSequence) {
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public void onClose() {
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public /* synthetic */ boolean onDeletePhoto(int i) {
            return PhotoViewerProvider.CC.$default$onDeletePhoto(this, i);
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public /* synthetic */ void onEditModeChanged(boolean z) {
            PhotoViewerProvider.CC.$default$onEditModeChanged(this, z);
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public void onOpen() {
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public /* synthetic */ void onPreClose() {
            PhotoViewerProvider.CC.$default$onPreClose(this);
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public /* synthetic */ void onPreOpen() {
            PhotoViewerProvider.CC.$default$onPreOpen(this);
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public /* synthetic */ void onReleasePlayerBeforeClose(int i) {
            PhotoViewerProvider.CC.$default$onReleasePlayerBeforeClose(this, i);
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public void openPhotoForEdit(String str, String str2, boolean z) {
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public void replaceButtonPressed(int i, VideoEditedInfo videoEditedInfo) {
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public boolean scaleToFill() {
            return false;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public void sendButtonPressed(int i, VideoEditedInfo videoEditedInfo, boolean z, int i2, boolean z2, String str, boolean z3) {
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public int setPhotoChecked(int i, VideoEditedInfo videoEditedInfo) {
            return -1;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public int setPhotoUnchecked(Object obj) {
            return -1;
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public void updatePhotoAtIndex(int i) {
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public void willHidePhotoViewer() {
        }

        @Override // org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
        public void willSwitchFromPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i) {
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$PageBlocksAdapter */
    /* loaded from: classes5.dex */
    public interface PageBlocksAdapter {
        TLRPC$PageBlock get(int i);

        List<TLRPC$PageBlock> getAll();

        CharSequence getCaption(int i);

        File getFile(int i);

        TLRPC$PhotoSize getFileLocation(TLObject tLObject, int[] iArr);

        String getFileName(int i);

        int getItemsCount();

        TLObject getMedia(int i);

        Object getParentObject();

        boolean isHardwarePlayer(int i);

        boolean isVideo(int i);

        void updateSlideshowCell(TLRPC$PageBlock tLRPC$PageBlock);
    }

    /* renamed from: org.telegram.ui.PhotoViewer$PhotoViewerProvider */
    /* loaded from: classes5.dex */
    public interface PhotoViewerProvider {

        /* renamed from: org.telegram.ui.PhotoViewer$PhotoViewerProvider$-CC */
        /* loaded from: classes5.dex */
        public final /* synthetic */ class CC {
            public static boolean $default$canLoadMoreAvatars(PhotoViewerProvider photoViewerProvider) {
                return true;
            }

            public static boolean $default$onDeletePhoto(PhotoViewerProvider photoViewerProvider, int i) {
                return true;
            }

            public static void $default$onEditModeChanged(PhotoViewerProvider photoViewerProvider, boolean z) {
            }

            public static void $default$onPreClose(PhotoViewerProvider photoViewerProvider) {
            }

            public static void $default$onPreOpen(PhotoViewerProvider photoViewerProvider) {
            }

            public static void $default$onReleasePlayerBeforeClose(PhotoViewerProvider photoViewerProvider, int i) {
            }
        }

        boolean allowCaption();

        boolean allowSendingSubmenu();

        boolean canCaptureMorePhotos();

        boolean canLoadMoreAvatars();

        boolean canReplace(int i);

        boolean canScrollAway();

        boolean cancelButtonPressed();

        boolean closeKeyboard();

        void deleteImageAtIndex(int i);

        String getDeleteMessageString();

        MessageObject getEditingMessageObject();

        int getPhotoIndex(int i);

        PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i, boolean z);

        int getSelectedCount();

        HashMap<Object, Object> getSelectedPhotos();

        ArrayList<Object> getSelectedPhotosOrder();

        ImageReceiver.BitmapHolder getThumbForPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i);

        int getTotalImageCount();

        boolean isPhotoChecked(int i);

        boolean loadMore();

        void needAddMorePhotos();

        void onApplyCaption(CharSequence charSequence);

        void onClose();

        boolean onDeletePhoto(int i);

        void onEditModeChanged(boolean z);

        void onOpen();

        void onPreClose();

        void onPreOpen();

        void onReleasePlayerBeforeClose(int i);

        void openPhotoForEdit(String str, String str2, boolean z);

        void replaceButtonPressed(int i, VideoEditedInfo videoEditedInfo);

        boolean scaleToFill();

        void sendButtonPressed(int i, VideoEditedInfo videoEditedInfo, boolean z, int i2, boolean z2, String str, boolean z3);

        int setPhotoChecked(int i, VideoEditedInfo videoEditedInfo);

        int setPhotoUnchecked(Object obj);

        void updatePhotoAtIndex(int i);

        void willHidePhotoViewer();

        void willSwitchFromPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i);
    }

    /* renamed from: org.telegram.ui.PhotoViewer$PlaceProviderObject */
    /* loaded from: classes5.dex */
    public static class PlaceProviderObject {
        public ClippingImageView animatingImageView;
        public int animatingImageViewYOffset;
        public boolean canEdit;
        public int clipBottomAddition;
        public int clipTopAddition;
        public long dialogId;
        public ImageReceiver imageReceiver;
        public boolean isEvent;
        public View parentView;
        public int[] radius;
        public long size;
        public int starOffset;
        public ImageReceiver.BitmapHolder thumb;
        public int viewX;
        public int viewY;
        public float scale = 1.0f;
        public boolean allowTakeAnimation = true;
    }

    private void detectFaces(String str, ImageReceiver.BitmapHolder bitmapHolder, int i) {
    }

    private boolean enableSwipeToPiP() {
        return false;
    }

    public static /* synthetic */ void lambda$sendPressed$44(DialogInterface dialogInterface, int i) {
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // org.telegram.p042ui.Components.GestureDetector2.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // org.telegram.p042ui.Components.GestureDetector2.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // org.telegram.p042ui.Components.GestureDetector2.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override // org.telegram.p042ui.Components.GestureDetector2.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    public static /* synthetic */ void access$16600(PhotoViewer photoViewer) {
        photoViewer.updateCaptionTranslated();
    }

    @ProvidePresenter
    public PhotoViewerPresenter providePresenter() {
        return (PhotoViewerPresenter) KoinJavaComponent.get(PhotoViewerPresenter.class);
    }

    public void showAlertDialog(AlertDialog.Builder builder) {
        showAlertDialog(builder.create());
    }

    public void openStickerEditor(MediaController.PhotoEntry photoEntry, boolean z, PhotoViewerProvider photoViewerProvider) {
        openPhotoForSelect(new ArrayList<>(Collections.singletonList(photoEntry)), 0, 0, false, photoViewerProvider, null);
        this.containerView.removeView(this.checkImageView);
        this.containerView.removeView(this.muteItem);
        if (z) {
            this.muteVideo = true;
            updateVideoInfo();
        }
    }

    @Override // com.iMe.p030ui.base.mvp.AppUpdateRequiredView
    public void showAppUpdateDialog() {
        showAlertDialog(DialogsFactoryKt.createUpdateAppDialog(getPreviousFragment()));
    }

    @Override // com.iMe.p030ui.recognition.PhotoView
    public void showTranslateDialog(String str) {
        showAlertDialog(TranslateAlert.createInstanceForForkTranslation(getPreviousFragment(), new TranslationArgs(TranslationDialogType.INCOMING, str, null), null, MessagesController.getInstance(UserConfig.selectedAccount).isChatNoForwards(-this.currentDialogId)));
    }

    @Override // com.iMe.p030ui.recognition.PhotoView
    public void showPhotoTextDialog(String str) {
        showRecognitionDialog(str, C3630R.string.text_recognition_bottom_sheet_title, C3630R.C3632drawable.fork_photo_text);
    }

    @Override // com.iMe.p030ui.recognition.PhotoView
    public void showPhotoObjectsDialog(String str) {
        showRecognitionDialog(str, C3630R.string.image_recognition_bottom_sheet_title, C3630R.C3632drawable.fork_photo_objects);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public void showLoadingDialog(boolean z, boolean z2, final Disposable disposable) {
        if (this.progressDialog == null) {
            AlertDialog alertDialog = new AlertDialog(this.parentActivity, 3);
            this.progressDialog = alertDialog;
            alertDialog.setCanCancel(z2);
            this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda19
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    PhotoViewer.lambda$showLoadingDialog$0(Disposable.this, dialogInterface);
                }
            });
        }
        if (z) {
            this.progressDialog.show();
            return;
        }
        this.progressDialog.dismiss();
        this.progressDialog = null;
    }

    public static /* synthetic */ void lambda$showLoadingDialog$0(Disposable disposable, DialogInterface dialogInterface) {
        if (disposable != null) {
            disposable.dispose();
        }
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public void showToast(String str) {
        ContextExtKt.longToast(str);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public <T> void showErrorToast(Result.Error<? extends T> error, ResourceManager resourceManager) {
        ContextExtKt.longToast(error.getError().getErrorMessage(resourceManager));
    }

    public void onSharePressed() {
        onSharePressed(null);
    }

    private void sendPressed(boolean z, int i) {
        sendPressed(z, i, null);
    }

    private void sendPressed(boolean z, int i, boolean z2, boolean z3, boolean z4) {
        sendPressed(z, i, z2, z3, z4, null, false);
    }

    public BaseFragment getPreviousFragment() {
        return ((LaunchActivity) this.parentActivity).getActionBarLayout().getLastFragment();
    }

    private void showRecognitionDialog(String str, int i, int i2) {
        showAlertDialog(RecognitionBottomSheetDialog.newInstance(getPreviousFragment(), str, new RecognitionBottomSheetDialog.TranslationDelegate() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda56
            @Override // com.iMe.p030ui.recognition.RecognitionBottomSheetDialog.TranslationDelegate
            public final void onTranslateAction(String str2) {
                PhotoViewer.this.showTranslateDialog(str2);
            }
        }, i, i2));
    }

    private void updateForwardCloudItem(MessageObject messageObject) {
        if ((this.parentActivity instanceof LaunchActivity) && messageObject != null && !MessagesController.getInstance(UserConfig.selectedAccount).isChatNoForwards(messageObject.getChatId())) {
            this.forwardCloudItem.setVisibility(0);
        } else {
            this.forwardCloudItem.setVisibility(8);
        }
    }

    private void updatePhotoOptionsSubItems(MessageObject messageObject) {
        TLRPC$Message tLRPC$Message;
        ActionBarMenuItem actionBarMenuItem = this.menuItem;
        int i = IdFabric$Menu.PHOTO_COPY;
        actionBarMenuItem.hideSubItem(i);
        ActionBarMenuItem actionBarMenuItem2 = this.menuItem;
        int i2 = IdFabric$Menu.PHOTO_TEXT;
        actionBarMenuItem2.hideSubItem(i2);
        ActionBarMenuItem actionBarMenuItem3 = this.menuItem;
        int i3 = IdFabric$Menu.PHOTO_OBJECTS;
        actionBarMenuItem3.hideSubItem(i3);
        ActionBarMenuItem actionBarMenuItem4 = this.menuItem;
        int i4 = IdFabric$Menu.TRANSLATE;
        actionBarMenuItem4.hideSubItem(i4);
        if (!(this.parentActivity instanceof LaunchActivity) || messageObject == null) {
            return;
        }
        if ((messageObject.isPhoto() || messageObject.checkIsPhotoDocument()) && !this.isEmbedVideo) {
            if (!(MessagesController.getInstance(this.currentAccount).isChatNoForwards(messageObject.getChatId()) || ((tLRPC$Message = messageObject.messageOwner) != null && tLRPC$Message.noforwards)) && SharedConfig.selectedPhotoViewerMenuItems.contains(PhotoViewerMenuItem.COPY_IMAGE)) {
                this.menuItem.showSubItem(i);
            }
            if (messageObject.isPhoto()) {
                if (SharedConfig.selectedPhotoViewerMenuItems.contains(PhotoViewerMenuItem.PHOTO_TEXT)) {
                    this.menuItem.showSubItem(i2);
                }
                if (SharedConfig.selectedPhotoViewerMenuItems.contains(PhotoViewerMenuItem.PHOTO_INFO)) {
                    this.menuItem.showSubItem(i3);
                }
                if (SharedConfig.selectedPhotoViewerMenuItems.contains(PhotoViewerMenuItem.TRANSLATE)) {
                    this.menuItem.showSubItem(i4);
                }
            }
        }
    }

    private void updateVideoOptionsSubItems(MessageObject messageObject) {
        this.menuItem.setSubItemVisible(IdFabric$Menu.MESSAGE_DELETE_FROM_CACHE, SharedConfig.selectedPhotoViewerMenuItems.contains(PhotoViewerMenuItem.CLEAR_CACHE) && messageObject != null && messageObject.isVideo() && !this.isEmbedVideo && (messageObject.attachPathExists || messageObject.mediaExists));
    }

    private void updateForwardToMessengersSubItems(MessageObject messageObject) {
        ExternalApp[] messengersForForward;
        this.menuItem.hideSubItem(IdFabric$Menu.MESSAGE_FORWARD_WHATSAPP);
        this.menuItem.hideSubItem(IdFabric$Menu.MESSAGE_FORWARD_WHATSAPP_BUSINESS);
        this.menuItem.hideSubItem(IdFabric$Menu.MESSAGE_FORWARD_VIBER);
        if (messageObject != null && this.allowShare && SharedConfig.selectedPhotoViewerMenuItems.contains(PhotoViewerMenuItem.FORWARD_MESSENGERS)) {
            for (ExternalApp externalApp : ExternalApp.getMessengersForForward()) {
                if (externalApp.isInstalled()) {
                    if (externalApp == ExternalApp.WHATSAPP) {
                        this.menuItem.showSubItem(IdFabric$Menu.MESSAGE_FORWARD_WHATSAPP);
                    } else if (externalApp == ExternalApp.WHATSAPP_BUSINESS) {
                        this.menuItem.showSubItem(IdFabric$Menu.MESSAGE_FORWARD_WHATSAPP_BUSINESS);
                    } else if (externalApp == ExternalApp.VIBER) {
                        this.menuItem.showSubItem(IdFabric$Menu.MESSAGE_FORWARD_VIBER);
                    }
                }
            }
        }
    }

    public void forwardCloud() {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        ((LaunchActivity) this.parentActivity).switchToAccount(messageObject.currentAccount, true);
        final MessageObject messageObject2 = this.currentMessageObject;
        ForwardCloudBottomSheet.Delegate delegate = new ForwardCloudBottomSheet.Delegate() { // from class: org.telegram.ui.PhotoViewer.1
            {
                PhotoViewer.this = this;
            }

            @Override // com.iMe.fork.p023ui.dialog.ForwardCloudBottomSheet.Delegate
            public void didSelectCloudDialog(long j) {
                SendMessagesHelper.getInstance(PhotoViewer.this.currentAccount).sendMessage(new ArrayList<>(Arrays.asList(messageObject2)), j, true, false, true, 0, null, null, true);
            }

            @Override // com.iMe.fork.p023ui.dialog.ForwardCloudBottomSheet.Delegate
            public void onAlbumCreatorOpened() {
                PhotoViewer.this.closePhoto(false, false);
            }
        };
        if (SharedConfig.isCloudAlbumsEnabled) {
            showAlertDialog(new ForwardCloudBottomSheet(getPreviousFragment(), delegate));
        } else {
            delegate.didSelectCloudDialog(UserConfig.getInstance(this.currentAccount).getClientUserId());
        }
    }

    public void deleteVideoFromCache() {
        MessagesStorage.getInstance(this.currentAccount).getCachedFilesFromMessages(new ArrayList<>(Collections.singletonList(this.currentMessageObject)), new Callbacks$Callback1() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda54
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                PhotoViewer.this.lambda$deleteVideoFromCache$1((ArrayList) obj);
            }
        });
    }

    public /* synthetic */ void lambda$deleteVideoFromCache$1(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        FileLoader.getInstance(this.currentAccount).deleteFiles(arrayList, 2);
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null) {
            messageObject.mediaExists = false;
            messageObject.attachPathExists = false;
            updateVideoOptionsSubItems(messageObject);
            showToast(LocaleController.formatString("CacheWasCleared", C3630R.string.CacheWasCleared, AndroidUtilities.formatFileSize(this.currentMessageObject.getSize())));
        }
    }

    public /* synthetic */ void lambda$new$2() {
        toggleMiniProgressInternal(true);
    }

    public TextureView getVideoTextureView() {
        return this.videoTextureView;
    }

    public boolean isVisibleOrAnimating() {
        return this.isVisibleOrAnimating;
    }

    public SurfaceView getVideoSurfaceView() {
        return this.videoSurfaceView;
    }

    /* renamed from: org.telegram.ui.PhotoViewer$PhotoViewerActionBarContainer */
    /* loaded from: classes5.dex */
    public static class PhotoViewerActionBarContainer extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
        private FrameLayout container;
        private boolean hasSubtitle;
        int lastHeight;
        private float rightPadding;
        private ValueAnimator rightPaddingAnimator;
        private AnimatorSet subtitleAnimator;
        AnimatedTextView subtitleTextView;
        private AnimatorSet titleAnimator;
        private FrameLayout titleLayout;
        SimpleTextView[] titleTextView;

        public PhotoViewerActionBarContainer(Context context) {
            super(context);
            FrameLayout frameLayout = new FrameLayout(context);
            this.container = frameLayout;
            frameLayout.setPadding(AndroidUtilities.m102dp((AndroidUtilities.isTablet() ? 80 : 72) - 16), 0, 0, 0);
            addView(this.container, LayoutHelper.createFrame(-1, -1, 119));
            FrameLayout frameLayout2 = new FrameLayout(this, context) { // from class: org.telegram.ui.PhotoViewer.PhotoViewerActionBarContainer.1
                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    super.onMeasure(i, i2);
                    setPivotY(getMeasuredHeight());
                }
            };
            this.titleLayout = frameLayout2;
            frameLayout2.setPivotX(AndroidUtilities.m102dp(16));
            this.titleLayout.setPadding(AndroidUtilities.m102dp(16), 0, 0, 0);
            this.titleLayout.setClipToPadding(false);
            this.container.addView(this.titleLayout, LayoutHelper.createFrame(-1, -1, 119));
            this.titleTextView = new SimpleTextView[2];
            for (int i = 0; i < 2; i++) {
                this.titleTextView[i] = new SimpleTextView(context);
                this.titleTextView[i].setGravity(19);
                this.titleTextView[i].setTextColor(-1);
                this.titleTextView[i].setTextSize(20);
                this.titleTextView[i].setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                this.titleTextView[i].setDrawablePadding(AndroidUtilities.m102dp(4));
                this.titleTextView[i].setScrollNonFitText(true);
                this.titleLayout.addView(this.titleTextView[i], LayoutHelper.createFrame(-1, -2, 19));
            }
            AnimatedTextView animatedTextView = new AnimatedTextView(context, true, false, false);
            this.subtitleTextView = animatedTextView;
            animatedTextView.setAnimationProperties(0.4f, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.subtitleTextView.setTextSize(AndroidUtilities.m102dp(14));
            this.subtitleTextView.setGravity(19);
            this.subtitleTextView.setTextColor(-1);
            this.subtitleTextView.setEllipsizeByGradient(true);
            this.container.addView(this.subtitleTextView, LayoutHelper.createFrame(-1, 20, 51, 16, 0, 0, 0));
        }

        public void setTextShadows(boolean z) {
            this.titleTextView[0].getPaint().setShadowLayer(AndroidUtilities.dpf2(0.66f), BitmapDescriptorFactory.HUE_RED, 1.0f, z ? 1912602624 : 0);
            this.titleTextView[1].getPaint().setShadowLayer(AndroidUtilities.dpf2(0.66f), BitmapDescriptorFactory.HUE_RED, 1.0f, z ? 1912602624 : 0);
            this.subtitleTextView.getDrawable().setShadowLayer(AndroidUtilities.dpf2(0.66f), BitmapDescriptorFactory.HUE_RED, 1.0f, z ? 1912602624 : 0);
        }

        public void setTitle(CharSequence charSequence) {
            this.titleTextView[1].setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.titleTextView[1].setVisibility(8);
            if (!areStringsEqual(this.titleTextView[0].getText(), charSequence)) {
                this.titleTextView[0].resetScrolling();
            }
            this.titleTextView[0].setText(charSequence);
            this.titleTextView[0].setAlpha(1.0f);
            this.titleTextView[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.titleTextView[0].setTranslationY(BitmapDescriptorFactory.HUE_RED);
        }

        private boolean areStringsEqual(CharSequence charSequence, CharSequence charSequence2) {
            if (charSequence == null && charSequence2 == null) {
                return true;
            }
            if ((charSequence == null) != (charSequence2 == null)) {
                return false;
            }
            return TextUtils.equals(charSequence.toString(), charSequence2.toString());
        }

        public void setTitleAnimated(CharSequence charSequence, boolean z, boolean z2) {
            if (areStringsEqual(this.titleTextView[0].getText(), charSequence)) {
                return;
            }
            AnimatorSet animatorSet = this.titleAnimator;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.titleAnimator = null;
            }
            SimpleTextView[] simpleTextViewArr = this.titleTextView;
            simpleTextViewArr[1].copyScrolling(simpleTextViewArr[0]);
            SimpleTextView[] simpleTextViewArr2 = this.titleTextView;
            simpleTextViewArr2[1].setText(simpleTextViewArr2[0].getText());
            this.titleTextView[1].setRightPadding((int) this.rightPadding);
            this.titleTextView[0].resetScrolling();
            this.titleTextView[0].setText(charSequence);
            float m102dp = AndroidUtilities.m102dp(8) * (z2 ? 1 : -1);
            this.titleTextView[1].setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.titleTextView[1].setTranslationY(BitmapDescriptorFactory.HUE_RED);
            if (z) {
                this.titleTextView[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                this.titleTextView[0].setTranslationY(-m102dp);
            } else {
                this.titleTextView[0].setTranslationX(-m102dp);
                this.titleTextView[0].setTranslationY(BitmapDescriptorFactory.HUE_RED);
            }
            this.titleTextView[0].setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.titleTextView[1].setAlpha(1.0f);
            this.titleTextView[0].setVisibility(0);
            this.titleTextView[1].setVisibility(0);
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.titleTextView[1], View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            arrayList.add(ObjectAnimator.ofFloat(this.titleTextView[0], View.ALPHA, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.titleTextView[1], z ? View.TRANSLATION_Y : View.TRANSLATION_X, m102dp));
            arrayList.add(ObjectAnimator.ofFloat(this.titleTextView[0], z ? View.TRANSLATION_Y : View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.titleAnimator = animatorSet2;
            animatorSet2.playTogether(arrayList);
            this.titleAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.PhotoViewerActionBarContainer.2
                {
                    PhotoViewerActionBarContainer.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (PhotoViewerActionBarContainer.this.titleAnimator == animator) {
                        PhotoViewerActionBarContainer.this.titleTextView[1].setVisibility(8);
                        PhotoViewerActionBarContainer.this.titleAnimator = null;
                    }
                }
            });
            this.titleAnimator.setDuration(320L);
            this.titleAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.titleAnimator.start();
        }

        public void setSubtitle(CharSequence charSequence) {
            setSubtitle(charSequence, true);
        }

        public void setSubtitle(CharSequence charSequence, boolean z) {
            boolean z2 = !TextUtils.isEmpty(charSequence);
            if (z2 != this.hasSubtitle) {
                this.hasSubtitle = z2;
                AnimatorSet animatorSet = this.subtitleAnimator;
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
                Point point = AndroidUtilities.displaySize;
                int m102dp = AndroidUtilities.m102dp((z2 ? 30 : 33) - (point.x > point.y ? 6 : 0));
                float f = BitmapDescriptorFactory.HUE_RED;
                if (z) {
                    ArrayList arrayList = new ArrayList();
                    AnimatedTextView animatedTextView = this.subtitleTextView;
                    Property property = View.ALPHA;
                    float[] fArr = new float[1];
                    fArr[0] = z2 ? 1.0f : 0.0f;
                    arrayList.add(ObjectAnimator.ofFloat(animatedTextView, property, fArr));
                    arrayList.add(ObjectAnimator.ofFloat(this.subtitleTextView, View.TRANSLATION_Y, m102dp));
                    FrameLayout frameLayout = this.titleLayout;
                    Property property2 = View.TRANSLATION_Y;
                    float[] fArr2 = new float[1];
                    if (z2) {
                        f = AndroidUtilities.m102dp(-12);
                    }
                    fArr2[0] = f;
                    arrayList.add(ObjectAnimator.ofFloat(frameLayout, property2, fArr2));
                    FrameLayout frameLayout2 = this.titleLayout;
                    Property property3 = View.SCALE_X;
                    float[] fArr3 = new float[1];
                    fArr3[0] = z2 ? 0.87f : 1.0f;
                    arrayList.add(ObjectAnimator.ofFloat(frameLayout2, property3, fArr3));
                    FrameLayout frameLayout3 = this.titleLayout;
                    Property property4 = View.SCALE_Y;
                    float[] fArr4 = new float[1];
                    fArr4[0] = z2 ? 0.87f : 1.0f;
                    arrayList.add(ObjectAnimator.ofFloat(frameLayout3, property4, fArr4));
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    this.subtitleAnimator = animatorSet2;
                    animatorSet2.playTogether(arrayList);
                    this.subtitleAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                    this.subtitleAnimator.start();
                } else {
                    this.subtitleTextView.setAlpha(z2 ? 1.0f : 0.0f);
                    this.subtitleTextView.setTranslationY(m102dp);
                    FrameLayout frameLayout4 = this.titleLayout;
                    if (z2) {
                        f = AndroidUtilities.m102dp(-12);
                    }
                    frameLayout4.setTranslationY(f);
                    this.titleLayout.setScaleX(z2 ? 0.87f : 1.0f);
                    this.titleLayout.setScaleY(z2 ? 0.87f : 1.0f);
                }
            }
            this.subtitleTextView.setText(charSequence, z);
        }

        public void updateOrientation() {
            this.hasSubtitle = !this.hasSubtitle;
            setSubtitle(this.subtitleTextView.getText(), false);
        }

        public void updateRightPadding(final float f, boolean z) {
            ValueAnimator valueAnimator = this.rightPaddingAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.rightPaddingAnimator = null;
            }
            if (z) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(this.rightPadding, f);
                this.rightPaddingAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$PhotoViewerActionBarContainer$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        PhotoViewer.PhotoViewerActionBarContainer.this.lambda$updateRightPadding$0(f, valueAnimator2);
                    }
                });
                this.rightPaddingAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.PhotoViewerActionBarContainer.3
                    {
                        PhotoViewerActionBarContainer.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        PhotoViewerActionBarContainer.this.updateRightPadding(f, false);
                    }
                });
                this.rightPaddingAnimator.setDuration(320L);
                this.rightPaddingAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.rightPaddingAnimator.start();
                return;
            }
            this.rightPadding = f;
            this.titleTextView[0].setRightPadding((int) f);
            this.subtitleTextView.setRightPadding(f);
        }

        public /* synthetic */ void lambda$updateRightPadding$0(float f, ValueAnimator valueAnimator) {
            this.rightPadding = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            int i = (int) f;
            this.titleTextView[0].setRightPadding(i);
            this.titleTextView[1].setRightPadding(i);
            this.subtitleTextView.setRightPadding(f);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            int i3 = Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0;
            int i4 = this.lastHeight;
            int i5 = AndroidUtilities.displaySize.y;
            if (i4 != i5) {
                this.lastHeight = i5;
                updateOrientation();
            }
            this.container.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2 - i3, 1073741824));
            setMeasuredDimension(size, size2);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            this.container.layout(0, Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0, i3 - i, i4 - i2);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.emojiLoaded) {
                this.titleTextView[0].invalidate();
                this.titleTextView[1].invalidate();
                this.subtitleTextView.invalidate();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$PhotoCountView */
    /* loaded from: classes5.dex */
    public static class PhotoCountView extends View {
        Paint backgroundPaint;
        StaticLayout center;
        float centerTop;
        float centerWidth;
        AnimatedTextView.AnimatedTextDrawable left;
        private String lng;
        private int marginTop;
        private boolean nextNotAnimate;
        TextPaint paint;
        AnimatedTextView.AnimatedTextDrawable right;
        private AnimatedFloat showT;
        private boolean shown;

        public PhotoCountView(Context context) {
            super(context);
            this.backgroundPaint = new Paint(1);
            this.paint = new TextPaint(1);
            this.shown = false;
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.showT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
            this.backgroundPaint.setColor(2130706432);
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
            this.left = animatedTextDrawable;
            animatedTextDrawable.setAnimationProperties(0.3f, 0L, 320L, cubicBezierInterpolator);
            this.left.setTextColor(-1);
            this.left.setTextSize(AndroidUtilities.m102dp(14));
            this.left.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.left.setCallback(this);
            this.left.setText(SessionDescription.SUPPORTED_SDP_VERSION);
            this.left.setOverrideFullWidth(AndroidUtilities.displaySize.x);
            this.paint.setColor(-1);
            this.paint.setTextSize(AndroidUtilities.m102dp(14));
            this.paint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            setCenterText();
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
            this.right = animatedTextDrawable2;
            animatedTextDrawable2.setAnimationProperties(0.3f, 0L, 320L, cubicBezierInterpolator);
            this.right.setTextColor(-1);
            this.right.setTextSize(AndroidUtilities.m102dp(14));
            this.right.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.right.setCallback(this);
            this.right.setText(SessionDescription.SUPPORTED_SDP_VERSION);
            this.right.setOverrideFullWidth(AndroidUtilities.displaySize.x);
        }

        private void setCenterText() {
            StaticLayout staticLayout = new StaticLayout(getOf(), this.paint, AndroidUtilities.m102dp(200), Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.center = staticLayout;
            if (staticLayout.getLineCount() >= 1) {
                this.centerWidth = this.center.getLineWidth(0);
                this.centerTop = this.center.getLineDescent(0);
                return;
            }
            this.centerWidth = BitmapDescriptorFactory.HUE_RED;
            this.centerTop = BitmapDescriptorFactory.HUE_RED;
        }

        private String getOf() {
            this.lng = LocaleController.getInstance().getCurrentLocaleInfo().shortName;
            return LocaleController.getString("Of").replace("%1$d", "").replace("%2$d", "");
        }

        public void set(int i, int i2) {
            set(i, i2, true);
        }

        public void set(int i, int i2, boolean z) {
            boolean z2 = false;
            int max = Math.max(0, i);
            int max2 = Math.max(max, i2);
            if (LocaleController.getInstance().getCurrentLocaleInfo() != null && !TextUtils.equals(this.lng, LocaleController.getInstance().getCurrentLocaleInfo().shortName)) {
                setCenterText();
            }
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.left;
            Object[] objArr = new Object[1];
            objArr[0] = Integer.valueOf(LocaleController.isRTL ? max2 : max);
            animatedTextDrawable.setText(String.format("%d", objArr), (!z || this.nextNotAnimate || LocaleController.isRTL) ? false : true);
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = this.right;
            Object[] objArr2 = new Object[1];
            if (!LocaleController.isRTL) {
                max = max2;
            }
            objArr2[0] = Integer.valueOf(max);
            String format = String.format("%d", objArr2);
            if (z && !this.nextNotAnimate && !LocaleController.isRTL) {
                z2 = true;
            }
            animatedTextDrawable2.setText(format, z2);
            this.nextNotAnimate = !z;
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return this.left == drawable || this.right == drawable || super.verifyDrawable(drawable);
        }

        public void updateShow(boolean z, boolean z2) {
            if (this.shown != z) {
                this.shown = z;
                if (!z) {
                    this.nextNotAnimate = true;
                }
                if (!z2) {
                    this.showT.set(z ? 1.0f : BitmapDescriptorFactory.HUE_RED, true);
                }
                invalidate();
            }
        }

        @Override // android.view.View
        public boolean isShown() {
            return this.shown;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            float f = this.showT.set(this.shown ? 1.0f : 0.0f);
            if (f <= BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            float currentWidth = this.left.getCurrentWidth() + this.centerWidth + this.right.getCurrentWidth() + AndroidUtilities.m102dp(18);
            float f2 = this.marginTop + ((1.0f - f) * (-AndroidUtilities.m102dp(8)));
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set((getWidth() - currentWidth) / 2.0f, AndroidUtilities.dpf2(10.0f) + f2, (getWidth() + currentWidth) / 2.0f, AndroidUtilities.dpf2(33.0f) + f2);
            int alpha = this.backgroundPaint.getAlpha();
            this.backgroundPaint.setAlpha((int) (alpha * f));
            canvas.drawRoundRect(rectF, AndroidUtilities.dpf2(12.0f), AndroidUtilities.dpf2(12.0f), this.backgroundPaint);
            this.backgroundPaint.setAlpha(alpha);
            canvas.save();
            canvas.translate(((getWidth() - currentWidth) / 2.0f) + AndroidUtilities.m102dp(9), f2 + AndroidUtilities.m102dp(10));
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.left;
            animatedTextDrawable.setBounds(0, 0, (int) animatedTextDrawable.getCurrentWidth(), AndroidUtilities.m102dp(23));
            int i = (int) (f * 255.0f);
            this.left.setAlpha(i);
            this.left.draw(canvas);
            canvas.translate(this.left.getCurrentWidth(), BitmapDescriptorFactory.HUE_RED);
            canvas.save();
            canvas.translate((-(this.center.getWidth() - this.centerWidth)) / 2.0f, ((AndroidUtilities.m102dp(23) - this.center.getHeight()) + (this.centerTop / 2.0f)) / 2.0f);
            this.paint.setAlpha(i);
            this.center.draw(canvas);
            canvas.restore();
            canvas.translate(this.centerWidth, BitmapDescriptorFactory.HUE_RED);
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = this.right;
            animatedTextDrawable2.setBounds(0, 0, (int) animatedTextDrawable2.getCurrentWidth(), AndroidUtilities.m102dp(23));
            this.right.setAlpha(i);
            this.right.draw(canvas);
            canvas.restore();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            this.marginTop = C3702ActionBar.getCurrentActionBarHeight() + (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0);
            this.left.setOverrideFullWidth(size);
            this.right.setOverrideFullWidth(size);
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(this.marginTop + AndroidUtilities.m102dp(43), 1073741824));
        }
    }

    public void addPhoto(MessageObject messageObject, int i) {
        if (i != this.classGuid) {
            return;
        }
        if (this.imagesByIds[0].indexOfKey(messageObject.getId()) < 0) {
            if (this.opennedFromMedia) {
                this.imagesArr.add(messageObject);
            } else {
                this.imagesArr.add(0, messageObject);
            }
            this.imagesByIds[0].put(messageObject.getId(), messageObject);
        }
        this.endReached[0] = this.imagesArr.size() == this.totalImagesCount;
        setImages();
    }

    public int getClassGuid() {
        return this.classGuid;
    }

    public void setCaption(CharSequence charSequence) {
        this.hasCaptionForAllMedia = true;
        this.captionForAllMedia = charSequence;
        setCurrentCaption(null, charSequence, false, false);
        updateCaptionTextForCurrentPhoto(null);
    }

    public void setAvatarFor(ImageUpdater.AvatarFor avatarFor) {
        int i;
        String str;
        TLRPC$User tLRPC$User;
        this.setAvatarFor = avatarFor;
        if (this.sendPhotoType == 1) {
            if (this.pickerViewSendButton != null) {
                if (useFullWidthSendButton()) {
                    this.doneButtonFullWidth.setVisibility(0);
                    this.pickerViewSendButton.setVisibility(8);
                } else {
                    this.pickerViewSendButton.setVisibility(0);
                    this.doneButtonFullWidth.setVisibility(8);
                }
            }
            if (avatarFor != null && (tLRPC$User = avatarFor.fromObject) != null && avatarFor.type == 1 && this.setAvatarFor.self) {
                if (avatarFor.isVideo) {
                    this.photoCropView.setSubtitle(LocaleController.formatString("SetSuggestedVideoTooltip", C3630R.string.SetSuggestedVideoTooltip, tLRPC$User.first_name));
                } else {
                    this.photoCropView.setSubtitle(LocaleController.formatString("SetSuggestedPhotoTooltip", C3630R.string.SetSuggestedPhotoTooltip, tLRPC$User.first_name));
                }
            } else {
                this.photoCropView.setSubtitle(null);
            }
        }
        if (avatarFor != null) {
            if (avatarFor.type == 2) {
                if (avatarFor.isVideo) {
                    i = C3630R.string.SuggestVideo;
                    str = "SuggestVideo";
                } else {
                    i = C3630R.string.SuggestPhoto;
                    str = "SuggestPhoto";
                }
                setTitle(LocaleController.getString(str, i));
            }
            if (avatarFor.isVideo) {
                this.videoAvatarTooltip.setText(LocaleController.getString("SetCover", C3630R.string.SetCover));
            }
            this.actionBar.setBackground(null);
            if (Build.VERSION.SDK_INT >= 21) {
                this.actionBar.setElevation(2.0f);
            }
        }
    }

    public boolean useFullWidthSendButton() {
        ImageUpdater.AvatarFor avatarFor = this.setAvatarFor;
        return (avatarFor == null || !avatarFor.self || avatarFor.isVideo) ? false : true;
    }

    /* renamed from: org.telegram.ui.PhotoViewer$SavedVideoPosition */
    /* loaded from: classes5.dex */
    public static class SavedVideoPosition {
        public final float position;
        public final long timestamp;

        public SavedVideoPosition(float f, long j) {
            this.position = f;
            this.timestamp = j;
        }
    }

    public void onLinkClick(ClickableSpan clickableSpan, TextView textView) {
        if (textView != null && (clickableSpan instanceof URLSpan)) {
            String url = ((URLSpan) clickableSpan).getURL();
            if (url.startsWith("video")) {
                if (this.videoPlayer == null || this.currentMessageObject == null) {
                    return;
                }
                int intValue = Utilities.parseInt((CharSequence) url).intValue();
                if (this.videoPlayer.getDuration() == C0479C.TIME_UNSET) {
                    this.seekToProgressPending = intValue / ((float) this.currentMessageObject.getDuration());
                    return;
                }
                long j = intValue * 1000;
                this.videoPlayer.seekTo(j);
                this.videoPlayerSeekbar.setProgress(((float) j) / ((float) this.videoPlayer.getDuration()), true);
                this.videoPlayerSeekbarView.invalidate();
                return;
            } else if (url.startsWith("#")) {
                if (this.parentActivity instanceof LaunchActivity) {
                    DialogsActivity dialogsActivity = new DialogsActivity(null);
                    dialogsActivity.setSearchString(url);
                    ((LaunchActivity) this.parentActivity).presentFragment(dialogsActivity, false, true);
                    closePhoto(false, false);
                    return;
                }
                return;
            } else if (this.parentChatActivity != null && ((clickableSpan instanceof URLSpanReplacement) || AndroidUtilities.shouldShowUrlInAlert(url))) {
                AlertsCreator.showOpenUrlAlert(this.parentChatActivity, url, true, true);
                return;
            } else {
                clickableSpan.onClick(textView);
                return;
            }
        }
        clickableSpan.onClick(textView);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(8:15|16|(1:5)(1:14)|6|7|8|9|10)|3|(0)(0)|6|7|8|9|10) */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLinkLongPress(final android.text.style.URLSpan r11, final android.widget.TextView r12, final java.lang.Runnable r13) {
        /*
            r10 = this;
            org.telegram.ui.ActionBar.BottomSheet$Builder r0 = new org.telegram.ui.ActionBar.BottomSheet$Builder
            android.app.Activity r1 = r10.parentActivity
            org.telegram.ui.ActionBar.Theme$ResourcesProvider r2 = r10.resourcesProvider
            r3 = 0
            r4 = -14933463(0xffffffffff1c2229, float:-2.0753694E38)
            r0.<init>(r1, r3, r2, r4)
            java.lang.String r1 = r11.getURL()
            java.lang.String r2 = "video?"
            boolean r1 = r1.startsWith(r2)
            r2 = -1
            r5 = 1
            if (r1 == 0) goto L33
            java.lang.String r1 = r11.getURL()     // Catch: java.lang.Throwable -> L33
            java.lang.String r6 = r11.getURL()     // Catch: java.lang.Throwable -> L33
            r7 = 63
            int r6 = r6.indexOf(r7)     // Catch: java.lang.Throwable -> L33
            int r6 = r6 + r5
            java.lang.String r1 = r1.substring(r6)     // Catch: java.lang.Throwable -> L33
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Throwable -> L33
            goto L34
        L33:
            r1 = r2
        L34:
            if (r1 < 0) goto L3e
            java.lang.String r6 = org.telegram.messenger.AndroidUtilities.formatDuration(r1, r3)
            r0.setTitle(r6)
            goto L45
        L3e:
            java.lang.String r6 = r11.getURL()
            r0.setTitle(r6)
        L45:
            r6 = 2
            java.lang.CharSequence[] r7 = new java.lang.CharSequence[r6]
            int r8 = org.telegram.messenger.C3630R.string.Open
            java.lang.String r9 = "Open"
            java.lang.String r8 = org.telegram.messenger.LocaleController.getString(r9, r8)
            r7[r3] = r8
            int r8 = org.telegram.messenger.C3630R.string.Copy
            java.lang.String r9 = "Copy"
            java.lang.String r8 = org.telegram.messenger.LocaleController.getString(r9, r8)
            r7[r5] = r8
            org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda21 r8 = new org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda21
            r8.<init>()
            r0.setItems(r7, r8)
            org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda24 r11 = new org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda24
            r11.<init>()
            r0.setOnPreDismissListener(r11)
            org.telegram.ui.ActionBar.BottomSheet r11 = r0.create()
            r11.scrollNavBar = r5
            r11.show()
            org.telegram.ui.PhotoViewer$FrameLayoutDrawer r12 = r10.containerView     // Catch: java.lang.Exception -> L7a
            r12.performHapticFeedback(r3, r6)     // Catch: java.lang.Exception -> L7a
        L7a:
            r11.setItemColor(r3, r2, r2)
            r11.setItemColor(r5, r2, r2)
            r11.setBackgroundColor(r4)
            r12 = -7697782(0xffffffffff8a8a8a, float:NaN)
            r11.setTitleColor(r12)
            r11.setCalcMandatoryInsets(r5)
            android.view.Window r12 = r11.getWindow()
            org.telegram.messenger.AndroidUtilities.setNavigationBarColor(r12, r4, r3)
            android.view.Window r12 = r11.getWindow()
            org.telegram.messenger.AndroidUtilities.setLightNavigationBar(r12, r3)
            r11.scrollNavBar = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.onLinkLongPress(android.text.style.URLSpan, android.widget.TextView, java.lang.Runnable):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:131:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$onLinkLongPress$3(android.text.style.URLSpan r6, android.widget.TextView r7, int r8, android.content.DialogInterface r9, int r10) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.lambda$onLinkLongPress$3(android.text.style.URLSpan, android.widget.TextView, int, android.content.DialogInterface, int):void");
    }

    public void cancelFlashAnimations() {
        View view = this.flashView;
        if (view != null) {
            view.animate().setListener(null).cancel();
            this.flashView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        AnimatorSet animatorSet = this.flashAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.flashAnimator = null;
        }
        PhotoCropView photoCropView = this.photoCropView;
        if (photoCropView != null) {
            photoCropView.cancelThumbAnimation();
        }
    }

    public void cancelVideoPlayRunnable() {
        Runnable runnable = this.videoPlayRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.videoPlayRunnable = null;
        }
    }

    public long getCurrentVideoPosition() {
        PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
        if (photoViewerWebView != null && photoViewerWebView.isControllable()) {
            return this.photoViewerWebView.getCurrentPosition();
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            return 0L;
        }
        return videoPlayer.getCurrentPosition();
    }

    public long getVideoDuration() {
        PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
        if (photoViewerWebView != null && photoViewerWebView.isControllable()) {
            return this.photoViewerWebView.getVideoDuration();
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            return 0L;
        }
        return videoPlayer.getDuration();
    }

    public void seekVideoOrWebTo(long j) {
        PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
        if (photoViewerWebView != null && photoViewerWebView.isControllable()) {
            this.photoViewerWebView.seekTo(j);
        } else {
            VideoPlayer videoPlayer = this.videoPlayer;
            if (videoPlayer != null) {
                videoPlayer.seekTo(j);
            }
        }
        updateVideoPlayerTime();
    }

    public boolean isVideoPlaying() {
        PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
        if (photoViewerWebView != null && photoViewerWebView.isControllable()) {
            return this.photoViewerWebView.isPlaying();
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        return videoPlayer != null && videoPlayer.isPlaying();
    }

    /* renamed from: org.telegram.ui.PhotoViewer$6 */
    /* loaded from: classes5.dex */
    public class RunnableC66586 implements Runnable {
        RunnableC66586() {
            PhotoViewer.this = r1;
        }

        @Override // java.lang.Runnable
        public void run() {
            float f;
            PhotoViewer photoViewer;
            if (PhotoViewer.this.videoPlayer != null || (PhotoViewer.this.photoViewerWebView != null && PhotoViewer.this.photoViewerWebView.isControllable())) {
                boolean z = PhotoViewer.this.isCurrentVideo;
                float f2 = BitmapDescriptorFactory.HUE_RED;
                if (z) {
                    if (!PhotoViewer.this.videoTimelineView.isDragging()) {
                        float currentVideoPosition = ((float) PhotoViewer.this.getCurrentVideoPosition()) / ((float) PhotoViewer.this.getVideoDuration());
                        if (!PhotoViewer.this.shownControlsByEnd || PhotoViewer.this.actionBarWasShownBeforeByEnd) {
                            f2 = currentVideoPosition;
                        }
                        if (PhotoViewer.this.inPreview || (PhotoViewer.this.currentEditMode == 0 && PhotoViewer.this.videoTimelineViewContainer.getVisibility() != 0)) {
                            if (PhotoViewer.this.sendPhotoType != 1) {
                                PhotoViewer.this.videoTimelineView.setProgress(f2);
                            }
                        } else if (f2 >= PhotoViewer.this.videoTimelineView.getRightProgress()) {
                            PhotoViewer.this.videoTimelineView.setProgress(PhotoViewer.this.videoTimelineView.getLeftProgress());
                            PhotoViewer.this.videoPlayer.seekTo((int) (PhotoViewer.this.videoTimelineView.getLeftProgress() * ((float) PhotoViewer.this.getVideoDuration())));
                            PhotoViewer.this.manuallyPaused = false;
                            PhotoViewer.this.cancelVideoPlayRunnable();
                            if (PhotoViewer.this.muteVideo || PhotoViewer.this.sendPhotoType == 1 || PhotoViewer.this.currentEditMode != 0 || PhotoViewer.this.switchingToMode > 0) {
                                PhotoViewer.this.playVideoOrWeb();
                            } else {
                                PhotoViewer.this.pauseVideoOrWeb();
                            }
                            PhotoViewer.this.containerView.invalidate();
                        } else {
                            PhotoViewer.this.videoTimelineView.setProgress(f2);
                        }
                        PhotoViewer.this.updateVideoPlayerTime();
                    }
                } else {
                    final float currentVideoPosition2 = ((float) PhotoViewer.this.getCurrentVideoPosition()) / ((float) PhotoViewer.this.getVideoDuration());
                    if (PhotoViewer.this.shownControlsByEnd && !PhotoViewer.this.actionBarWasShownBeforeByEnd) {
                        currentVideoPosition2 = 0.0f;
                    }
                    if (PhotoViewer.this.currentVideoFinishedLoading) {
                        f = 1.0f;
                    } else {
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        if (Math.abs(elapsedRealtime - PhotoViewer.this.lastBufferedPositionCheck) >= 500) {
                            if (PhotoViewer.this.photoViewerWebView == null || !PhotoViewer.this.photoViewerWebView.isControllable()) {
                                if (PhotoViewer.this.isStreaming) {
                                    f = FileLoader.getInstance(PhotoViewer.this.currentAccount).getBufferedProgressFromPosition(PhotoViewer.this.seekToProgressPending != BitmapDescriptorFactory.HUE_RED ? PhotoViewer.this.seekToProgressPending : currentVideoPosition2, PhotoViewer.this.currentFileNames[0]);
                                } else {
                                    f = 1.0f;
                                }
                            } else {
                                f = PhotoViewer.this.photoViewerWebView.getBufferedPosition();
                            }
                            PhotoViewer.this.lastBufferedPositionCheck = elapsedRealtime;
                        } else {
                            f = -1.0f;
                        }
                    }
                    if (PhotoViewer.this.inPreview || PhotoViewer.this.videoTimelineViewContainer.getVisibility() != 0) {
                        if (PhotoViewer.this.seekToProgressPending == BitmapDescriptorFactory.HUE_RED) {
                            PhotoViewer photoViewer2 = PhotoViewer.this;
                            VideoPlayerRewinder videoPlayerRewinder = photoViewer2.videoPlayerRewinder;
                            if (videoPlayerRewinder.rewindCount == 0 || !videoPlayerRewinder.rewindByBackSeek) {
                                photoViewer2.videoPlayerSeekbar.setProgress(currentVideoPosition2, false);
                            }
                        }
                        if (f != -1.0f) {
                            PhotoViewer.this.videoPlayerSeekbar.setBufferedProgress(f);
                            PipVideoOverlay.setBufferedProgress(f);
                        }
                    } else if (currentVideoPosition2 >= PhotoViewer.this.videoTimelineView.getRightProgress()) {
                        PhotoViewer.this.manuallyPaused = false;
                        PhotoViewer.this.pauseVideoOrWeb();
                        PhotoViewer.this.videoPlayerSeekbar.setProgress(BitmapDescriptorFactory.HUE_RED);
                        PhotoViewer.this.seekVideoOrWebTo((int) (photoViewer.videoTimelineView.getLeftProgress() * ((float) PhotoViewer.this.getVideoDuration())));
                        PhotoViewer.this.containerView.invalidate();
                    } else {
                        float leftProgress = currentVideoPosition2 - PhotoViewer.this.videoTimelineView.getLeftProgress();
                        if (leftProgress < BitmapDescriptorFactory.HUE_RED) {
                            leftProgress = 0.0f;
                        }
                        currentVideoPosition2 = leftProgress / (PhotoViewer.this.videoTimelineView.getRightProgress() - PhotoViewer.this.videoTimelineView.getLeftProgress());
                        if (currentVideoPosition2 > 1.0f) {
                            currentVideoPosition2 = 1.0f;
                        }
                        PhotoViewer.this.videoPlayerSeekbar.setProgress(currentVideoPosition2);
                    }
                    PhotoViewer.this.videoPlayerSeekbarView.invalidate();
                    if (PhotoViewer.this.shouldSavePositionForCurrentVideo != null && currentVideoPosition2 >= BitmapDescriptorFactory.HUE_RED && SystemClock.elapsedRealtime() - PhotoViewer.this.lastSaveTime >= 1000) {
                        String unused = PhotoViewer.this.shouldSavePositionForCurrentVideo;
                        PhotoViewer.this.lastSaveTime = SystemClock.elapsedRealtime();
                        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.PhotoViewer$6$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                PhotoViewer.RunnableC66586.this.lambda$run$0(currentVideoPosition2);
                            }
                        });
                    }
                    PhotoViewer.this.updateVideoPlayerTime();
                }
            }
            if (PhotoViewer.this.firstFrameView != null) {
                PhotoViewer.this.firstFrameView.updateAlpha();
            }
            if (PhotoViewer.this.isPlaying) {
                AndroidUtilities.runOnUIThread(PhotoViewer.this.updateProgressRunnable, 17L);
            }
        }

        public /* synthetic */ void lambda$run$0(float f) {
            ApplicationLoader.applicationContext.getSharedPreferences("media_saved_pos", 0).edit().putFloat(PhotoViewer.this.shouldSavePositionForCurrentVideo, f).commit();
        }
    }

    public void checkChangedTextureView(boolean z) {
        int[] iArr;
        if (z) {
            TextureView textureView = this.changedTextureView;
            if (textureView == null) {
                return;
            }
            textureView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC66869());
            this.changedTextureView.invalidate();
        } else if (this.waitingForFirstTextureUpload == 2) {
            ImageView imageView = this.textureImageView;
            if (imageView != null) {
                imageView.setVisibility(4);
                this.textureImageView.setImageDrawable(null);
                Bitmap bitmap = this.currentBitmap;
                if (bitmap != null) {
                    bitmap.recycle();
                    this.currentBitmap = null;
                }
            }
            this.switchingInlineMode = false;
            if (Build.VERSION.SDK_INT >= 21) {
                final View view = this.usedSurfaceView ? this.videoSurfaceView : this.videoTextureView;
                AspectRatioFrameLayout aspectRatioFrameLayout = this.aspectRatioFrameLayout;
                if (aspectRatioFrameLayout == null) {
                    return;
                }
                aspectRatioFrameLayout.getLocationInWindow(this.pipPosition);
                this.pipPosition[1] = (int) (iArr[1] - this.containerView.getTranslationY());
                ImageView imageView2 = this.textureImageView;
                if (imageView2 != null) {
                    imageView2.setTranslationX(imageView2.getTranslationX() + getLeftInset());
                }
                if (view != null) {
                    view.setTranslationX((view.getTranslationX() + getLeftInset()) - this.aspectRatioFrameLayout.getX());
                }
                FirstFrameView firstFrameView = this.firstFrameView;
                if (firstFrameView != null) {
                    firstFrameView.setTranslationX(view.getTranslationX());
                }
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda7
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        PhotoViewer.this.lambda$checkChangedTextureView$5(valueAnimator);
                    }
                });
                boolean z2 = this.usedSurfaceView;
                float f = BitmapDescriptorFactory.HUE_RED;
                float x = z2 ? 0.0f : this.pipPosition[0] - this.aspectRatioFrameLayout.getX();
                float y = this.usedSurfaceView ? 0.0f : this.pipPosition[1] - this.aspectRatioFrameLayout.getY();
                AnimatorSet animatorSet = new AnimatorSet();
                ArrayList arrayList = new ArrayList();
                arrayList.add(ofFloat);
                arrayList.add(ObjectAnimator.ofFloat(this.textureImageView, View.SCALE_X, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(this.textureImageView, View.SCALE_Y, 1.0f));
                ImageView imageView3 = this.textureImageView;
                Property property = View.TRANSLATION_X;
                float[] fArr = new float[1];
                fArr[0] = this.usedSurfaceView ? 0.0f : this.pipPosition[0];
                arrayList.add(ObjectAnimator.ofFloat(imageView3, property, fArr));
                ImageView imageView4 = this.textureImageView;
                Property property2 = View.TRANSLATION_Y;
                float[] fArr2 = new float[1];
                if (!this.usedSurfaceView) {
                    f = this.pipPosition[1];
                }
                fArr2[0] = f;
                arrayList.add(ObjectAnimator.ofFloat(imageView4, property2, fArr2));
                arrayList.add(ObjectAnimator.ofFloat(view, View.SCALE_X, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(view, View.SCALE_Y, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(view, View.TRANSLATION_X, x));
                arrayList.add(ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, y));
                arrayList.add(ObjectAnimator.ofInt(this.backgroundDrawable, (Property<BackgroundDrawable, Integer>) AnimationProperties.COLOR_DRAWABLE_ALPHA, 255));
                FirstFrameView firstFrameView2 = this.firstFrameView;
                if (firstFrameView2 != null) {
                    arrayList.add(ObjectAnimator.ofFloat(firstFrameView2, View.SCALE_X, 1.0f));
                    arrayList.add(ObjectAnimator.ofFloat(this.firstFrameView, View.SCALE_Y, 1.0f));
                    arrayList.add(ObjectAnimator.ofFloat(this.firstFrameView, View.TRANSLATION_X, x));
                    arrayList.add(ObjectAnimator.ofFloat(this.firstFrameView, View.TRANSLATION_Y, y));
                }
                float f2 = PipVideoOverlay.getPipRect(false, this.aspectRatioFrameLayout.getAspectRatio()).width;
                view.getWidth();
                ValueAnimator ofFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda17
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        PhotoViewer.this.lambda$checkChangedTextureView$6(view, valueAnimator);
                    }
                });
                arrayList.add(ofFloat2);
                animatorSet.playTogether(arrayList);
                DecelerateInterpolator decelerateInterpolator2 = new DecelerateInterpolator();
                animatorSet.setInterpolator(decelerateInterpolator2);
                animatorSet.setDuration(250L);
                SurfaceView surfaceView = this.videoSurfaceView;
                if (surfaceView != null) {
                    surfaceView.setVisibility(0);
                }
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.10
                    {
                        PhotoViewer.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        PhotoViewer.this.pipAnimationInProgress = false;
                        view.setOutlineProvider(null);
                        if (PhotoViewer.this.textureImageView != null) {
                            PhotoViewer.this.textureImageView.setOutlineProvider(null);
                        }
                        if (PhotoViewer.this.firstFrameView != null) {
                            PhotoViewer.this.firstFrameView.setOutlineProvider(null);
                        }
                        if (PhotoViewer.this.videoSurfaceView != null) {
                            PhotoViewer.this.videoSurfaceView.setVisibility(0);
                        }
                    }
                });
                animatorSet.start();
                toggleActionBar(true, true, new ActionBarToggleParams().enableStatusBarAnimation(false).enableTranslationAnimation(false).animationDuration(250).animationInterpolator(decelerateInterpolator2));
            } else {
                toggleActionBar(true, false);
            }
            this.waitingForFirstTextureUpload = 0;
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$9 */
    /* loaded from: classes5.dex */
    public class ViewTreeObserver$OnPreDrawListenerC66869 implements ViewTreeObserver.OnPreDrawListener {
        ViewTreeObserver$OnPreDrawListenerC66869() {
            PhotoViewer.this = r1;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            PhotoViewer.this.changedTextureView.getViewTreeObserver().removeOnPreDrawListener(this);
            if (PhotoViewer.this.textureImageView != null) {
                if (!PhotoViewer.this.isInline) {
                    PhotoViewer.this.textureImageView.setVisibility(4);
                    PhotoViewer.this.textureImageView.setImageDrawable(null);
                    if (PhotoViewer.this.currentBitmap != null) {
                        PhotoViewer.this.currentBitmap.recycle();
                        PhotoViewer.this.currentBitmap = null;
                    }
                } else {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$9$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            PhotoViewer.ViewTreeObserver$OnPreDrawListenerC66869.this.lambda$onPreDraw$0();
                        }
                    }, 300L);
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$9$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.ViewTreeObserver$OnPreDrawListenerC66869.this.lambda$onPreDraw$1();
                }
            });
            PhotoViewer.this.waitingForFirstTextureUpload = 0;
            return true;
        }

        public /* synthetic */ void lambda$onPreDraw$0() {
            PhotoViewer.this.textureImageView.setVisibility(4);
            PhotoViewer.this.textureImageView.setImageDrawable(null);
            if (PhotoViewer.this.currentBitmap != null) {
                PhotoViewer.this.currentBitmap.recycle();
                PhotoViewer.this.currentBitmap = null;
            }
        }

        public /* synthetic */ void lambda$onPreDraw$1() {
            if (PhotoViewer.this.isInline) {
                PhotoViewer.this.dismissInternal();
            }
        }
    }

    public /* synthetic */ void lambda$checkChangedTextureView$5(ValueAnimator valueAnimator) {
        this.clippingImageProgress = 1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    public /* synthetic */ void lambda$checkChangedTextureView$6(View view, ValueAnimator valueAnimator) {
        this.inlineOutAnimationProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        view.invalidateOutline();
        ImageView imageView = this.textureImageView;
        if (imageView != null) {
            imageView.invalidateOutline();
        }
        FirstFrameView firstFrameView = this.firstFrameView;
        if (firstFrameView != null) {
            firstFrameView.invalidateOutline();
        }
    }

    public /* synthetic */ void lambda$new$7() {
        if (this.isVisible && this.animationInProgress == 0) {
            updateContainerFlags(this.isActionBarVisible);
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$EditState */
    /* loaded from: classes5.dex */
    public static class EditState {
        public long averageDuration;
        public MediaController.CropState cropState;
        public ArrayList<VideoEditedInfo.MediaEntity> croppedMediaEntities;
        public String croppedPaintPath;
        public ArrayList<VideoEditedInfo.MediaEntity> mediaEntities;
        public String paintPath;
        public MediaController.SavedFilterState savedFilterState;

        public void reset() {
            this.paintPath = null;
            this.cropState = null;
            this.savedFilterState = null;
            this.mediaEntities = null;
            this.croppedPaintPath = null;
            this.croppedMediaEntities = null;
            this.averageDuration = 0L;
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$SavedState */
    /* loaded from: classes5.dex */
    public class SavedState {
        private int index;
        private ArrayList<MessageObject> messages;
        private PhotoViewerProvider provider;

        public SavedState(int i, ArrayList<MessageObject> arrayList, PhotoViewerProvider photoViewerProvider) {
            PhotoViewer.this = r1;
            this.messages = arrayList;
            this.index = i;
            this.provider = photoViewerProvider;
        }

        public void restore() {
            PhotoViewer.this.placeProvider = this.provider;
            if (Build.VERSION.SDK_INT >= 21) {
                PhotoViewer.this.windowLayoutParams.flags = -2147417856;
            }
            PhotoViewer.this.windowLayoutParams.softInputMode = 272;
            PhotoViewer.this.windowView.setFocusable(false);
            PhotoViewer.this.containerView.setFocusable(false);
            PhotoViewer.this.backgroundDrawable.setAlpha(255);
            PhotoViewer.this.containerView.setAlpha(1.0f);
            PhotoViewer photoViewer = PhotoViewer.this;
            ArrayList<MessageObject> arrayList = this.messages;
            int i = this.index;
            photoViewer.onPhotoShow(null, null, null, null, arrayList, null, null, i, this.provider.getPlaceForPhoto(arrayList.get(i), null, this.index, true));
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$BackgroundDrawable */
    /* loaded from: classes5.dex */
    public class BackgroundDrawable extends ColorDrawable {
        private boolean allowDrawContent;
        private Runnable drawRunnable;
        private final Paint paint;
        private final RectF rect;
        private final RectF visibleRect;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BackgroundDrawable(int i) {
            super(i);
            PhotoViewer.this = r2;
            this.rect = new RectF();
            this.visibleRect = new RectF();
            Paint paint = new Paint(1);
            this.paint = paint;
            paint.setColor(i);
        }

        @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
        @Keep
        public void setAlpha(int i) {
            if (PhotoViewer.this.parentActivity instanceof LaunchActivity) {
                this.allowDrawContent = (PhotoViewer.this.isVisible && i == 255) ? false : true;
                ((LaunchActivity) PhotoViewer.this.parentActivity).drawerLayoutContainer.setAllowDrawContent(this.allowDrawContent);
                if (PhotoViewer.this.parentAlert != null) {
                    if (this.allowDrawContent) {
                        PhotoViewer.this.parentAlert.setAllowDrawContent(true);
                    } else {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$BackgroundDrawable$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                PhotoViewer.BackgroundDrawable.this.lambda$setAlpha$0();
                            }
                        }, 50L);
                    }
                }
            }
            super.setAlpha(i);
            this.paint.setAlpha(i);
        }

        public /* synthetic */ void lambda$setAlpha$0() {
            if (PhotoViewer.this.parentAlert != null) {
                PhotoViewer.this.parentAlert.setAllowDrawContent(this.allowDrawContent);
            }
        }

        @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Runnable runnable;
            if (PhotoViewer.this.animationInProgress != 0 && !AndroidUtilities.isTablet() && PhotoViewer.this.currentPlaceObject != null && PhotoViewer.this.currentPlaceObject.animatingImageView != null) {
                PhotoViewer.this.animatingImageView.getClippedVisibleRect(this.visibleRect);
                if (!this.visibleRect.isEmpty()) {
                    this.visibleRect.inset(AndroidUtilities.m103dp(1.0f), AndroidUtilities.m103dp(1.0f));
                    Rect bounds = getBounds();
                    float f = bounds.right;
                    float f2 = bounds.bottom;
                    for (int i = 0; i < 4; i++) {
                        if (i == 0) {
                            RectF rectF = this.rect;
                            RectF rectF2 = this.visibleRect;
                            rectF.set(BitmapDescriptorFactory.HUE_RED, rectF2.top, rectF2.left, rectF2.bottom);
                        } else if (i == 1) {
                            this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, this.visibleRect.top);
                        } else if (i == 2) {
                            RectF rectF3 = this.rect;
                            RectF rectF4 = this.visibleRect;
                            rectF3.set(rectF4.right, rectF4.top, f, rectF4.bottom);
                        } else if (i == 3) {
                            this.rect.set(BitmapDescriptorFactory.HUE_RED, this.visibleRect.bottom, f, f2);
                        }
                        canvas.drawRect(this.rect, this.paint);
                    }
                }
            } else {
                super.draw(canvas);
            }
            if (getAlpha() == 0 || (runnable = this.drawRunnable) == null) {
                return;
            }
            AndroidUtilities.runOnUIThread(runnable);
            this.drawRunnable = null;
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$SelectedPhotosListView */
    /* loaded from: classes5.dex */
    public static class SelectedPhotosListView extends RecyclerListView {
        private Drawable arrowDrawable;
        private Paint paint;
        private RectF rect;

        public SelectedPhotosListView(Context context) {
            super(context);
            this.paint = new Paint(1);
            this.rect = new RectF();
            setWillNotDraw(false);
            setClipToPadding(false);
            setTranslationY(-AndroidUtilities.m102dp(10));
            DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.PhotoViewer.SelectedPhotosListView.1
                {
                    SelectedPhotosListView.this = this;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // androidx.recyclerview.widget.DefaultItemAnimator
                public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                    SelectedPhotosListView.this.invalidate();
                }
            };
            setItemAnimator(defaultItemAnimator);
            defaultItemAnimator.setDelayAnimations(false);
            defaultItemAnimator.setSupportsChangeAnimations(false);
            setPadding(AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(6));
            this.paint.setColor(2130706432);
            this.arrowDrawable = context.getResources().getDrawable(C3630R.C3632drawable.photo_tooltip2).mutate();
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int childCount = getChildCount();
            if (childCount > 0) {
                int measuredWidth = getMeasuredWidth() - AndroidUtilities.m102dp(87);
                Drawable drawable = this.arrowDrawable;
                drawable.setBounds(measuredWidth, 0, drawable.getIntrinsicWidth() + measuredWidth, AndroidUtilities.m102dp(6));
                this.arrowDrawable.draw(canvas);
                int i = Integer.MIN_VALUE;
                int i2 = Integer.MAX_VALUE;
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = getChildAt(i3);
                    i2 = (int) Math.min(i2, Math.floor(childAt.getX()));
                    i = (int) Math.max(i, Math.ceil(childAt.getX() + childAt.getMeasuredWidth()));
                }
                if (i2 == Integer.MAX_VALUE || i == Integer.MIN_VALUE) {
                    return;
                }
                this.rect.set(i2 - AndroidUtilities.m102dp(6), AndroidUtilities.m102dp(6), i + AndroidUtilities.m102dp(6), AndroidUtilities.m102dp(103));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8), this.paint);
            }
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$CounterView */
    /* loaded from: classes5.dex */
    public static class CounterView extends View {
        private int currentCount;
        private int height;
        private Paint paint;
        private RectF rect;
        private float rotation;
        private StaticLayout staticLayout;
        private TextPaint textPaint;
        private int width;

        public CounterView(Context context) {
            super(context);
            this.currentCount = 0;
            TextPaint textPaint = new TextPaint(1);
            this.textPaint = textPaint;
            textPaint.setTextSize(AndroidUtilities.m102dp(15));
            this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textPaint.setColor(-1);
            Paint paint = new Paint(1);
            this.paint = paint;
            paint.setColor(-1);
            this.paint.setStrokeWidth(AndroidUtilities.m102dp(2));
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeJoin(Paint.Join.ROUND);
            this.rect = new RectF();
            setCount(0);
        }

        @Override // android.view.View
        @Keep
        public void setScaleX(float f) {
            super.setScaleX(f);
            invalidate();
        }

        @Override // android.view.View
        @Keep
        public void setRotationX(float f) {
            this.rotation = f;
            invalidate();
        }

        @Override // android.view.View
        public float getRotationX() {
            return this.rotation;
        }

        public void setCount(int i) {
            StaticLayout staticLayout = new StaticLayout("" + Math.max(1, i), this.textPaint, AndroidUtilities.m102dp(100), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.staticLayout = staticLayout;
            this.width = (int) Math.ceil((double) staticLayout.getLineWidth(0));
            this.height = this.staticLayout.getLineBottom(0);
            AnimatorSet animatorSet = new AnimatorSet();
            if (i == 0) {
                Property property = View.SCALE_X;
                float[] fArr = {BitmapDescriptorFactory.HUE_RED};
                Property property2 = View.SCALE_Y;
                float[] fArr2 = {BitmapDescriptorFactory.HUE_RED};
                Paint paint = this.paint;
                Property<Paint, Integer> property3 = AnimationProperties.PAINT_ALPHA;
                animatorSet.playTogether(ObjectAnimator.ofFloat(this, property, fArr), ObjectAnimator.ofFloat(this, property2, fArr2), ObjectAnimator.ofInt(paint, property3, 0), ObjectAnimator.ofInt(this.textPaint, (Property<TextPaint, Integer>) property3, 0));
                animatorSet.setInterpolator(new DecelerateInterpolator());
            } else {
                int i2 = this.currentCount;
                if (i2 == 0) {
                    Paint paint2 = this.paint;
                    Property<Paint, Integer> property4 = AnimationProperties.PAINT_ALPHA;
                    animatorSet.playTogether(ObjectAnimator.ofFloat(this, View.SCALE_X, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(this, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofInt(paint2, property4, 0, 255), ObjectAnimator.ofInt(this.textPaint, (Property<TextPaint, Integer>) property4, 0, 255));
                    animatorSet.setInterpolator(new DecelerateInterpolator());
                } else if (i < i2) {
                    animatorSet.playTogether(ObjectAnimator.ofFloat(this, View.SCALE_X, 1.1f, 1.0f), ObjectAnimator.ofFloat(this, View.SCALE_Y, 1.1f, 1.0f));
                    animatorSet.setInterpolator(new OvershootInterpolator());
                } else {
                    animatorSet.playTogether(ObjectAnimator.ofFloat(this, View.SCALE_X, 0.9f, 1.0f), ObjectAnimator.ofFloat(this, View.SCALE_Y, 0.9f, 1.0f));
                    animatorSet.setInterpolator(new OvershootInterpolator());
                }
            }
            animatorSet.setDuration(180L);
            animatorSet.start();
            requestLayout();
            this.currentCount = i;
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.max(this.width + AndroidUtilities.m102dp(20), AndroidUtilities.m102dp(30)), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(40), 1073741824));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int measuredHeight = getMeasuredHeight() / 2;
            this.paint.setAlpha(255);
            this.rect.set(AndroidUtilities.m102dp(1), measuredHeight - AndroidUtilities.m102dp(14), getMeasuredWidth() - AndroidUtilities.m102dp(1), measuredHeight + AndroidUtilities.m102dp(14));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m102dp(15), AndroidUtilities.m102dp(15), this.paint);
            if (this.staticLayout != null) {
                this.textPaint.setAlpha((int) ((1.0f - this.rotation) * 255.0f));
                canvas.save();
                canvas.translate((getMeasuredWidth() - this.width) / 2, ((getMeasuredHeight() - this.height) / 2) + AndroidUtilities.dpf2(0.2f) + (this.rotation * AndroidUtilities.m102dp(5)));
                this.staticLayout.draw(canvas);
                canvas.restore();
                this.paint.setAlpha((int) (this.rotation * 255.0f));
                int centerX = (int) this.rect.centerX();
                int centerY = (int) (((int) this.rect.centerY()) - (AndroidUtilities.m102dp(5) * (1.0f - this.rotation)));
                canvas.drawLine(AndroidUtilities.m102dp(5) + centerX, centerY - AndroidUtilities.m102dp(5), centerX - AndroidUtilities.m102dp(5), AndroidUtilities.m102dp(5) + centerY, this.paint);
                canvas.drawLine(centerX - AndroidUtilities.m102dp(5), centerY - AndroidUtilities.m102dp(5), centerX + AndroidUtilities.m102dp(5), centerY + AndroidUtilities.m102dp(5), this.paint);
            }
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$PhotoProgressView */
    /* loaded from: classes5.dex */
    public class PhotoProgressView {
        private View parent;
        private final CombinedDrawable playDrawable;
        private final PlayPauseDrawable playPauseDrawable;
        private boolean visible;
        private long lastUpdateTime = 0;
        private float radOffset = BitmapDescriptorFactory.HUE_RED;
        private float currentProgress = BitmapDescriptorFactory.HUE_RED;
        private float animationProgressStart = BitmapDescriptorFactory.HUE_RED;
        private long currentProgressTime = 0;
        private float animatedProgressValue = BitmapDescriptorFactory.HUE_RED;
        private RectF progressRect = new RectF();
        private int backgroundState = -1;
        private int size = AndroidUtilities.m102dp(64);
        private int previousBackgroundState = -2;
        private float animatedAlphaValue = 1.0f;
        private float[] animAlphas = new float[3];
        private float[] alphas = new float[3];
        private float scale = 1.0f;

        protected void onBackgroundStateUpdated(int i) {
            throw null;
        }

        protected void onVisibilityChanged(boolean z) {
            throw null;
        }

        public PhotoProgressView(View view) {
            PhotoViewer.this = r5;
            if (PhotoViewer.decelerateInterpolator == null) {
                DecelerateInterpolator unused = PhotoViewer.decelerateInterpolator = new DecelerateInterpolator(1.5f);
                Paint unused2 = PhotoViewer.progressPaint = new Paint(1);
                PhotoViewer.progressPaint.setStyle(Paint.Style.STROKE);
                PhotoViewer.progressPaint.setStrokeCap(Paint.Cap.ROUND);
                PhotoViewer.progressPaint.setStrokeWidth(AndroidUtilities.m102dp(3));
                PhotoViewer.progressPaint.setColor(-1);
            }
            this.parent = view;
            resetAlphas();
            PlayPauseDrawable playPauseDrawable = new PlayPauseDrawable(28);
            this.playPauseDrawable = playPauseDrawable;
            playPauseDrawable.setDuration(200);
            this.playDrawable = new CombinedDrawable(ContextCompat.getDrawable(r5.parentActivity, C3630R.C3632drawable.circle_big).mutate(), playPauseDrawable);
        }

        private void updateAnimation(boolean z) {
            boolean z2;
            long currentTimeMillis = System.currentTimeMillis();
            long j = currentTimeMillis - this.lastUpdateTime;
            if (j > 18) {
                j = 18;
            }
            this.lastUpdateTime = currentTimeMillis;
            int i = 0;
            if (z) {
                if (this.animatedProgressValue == 1.0f && this.currentProgress == 1.0f) {
                    z2 = false;
                } else {
                    this.radOffset += ((float) (360 * j)) / 3000.0f;
                    float f = this.currentProgress - this.animationProgressStart;
                    if (Math.abs(f) > BitmapDescriptorFactory.HUE_RED) {
                        long j2 = this.currentProgressTime + j;
                        this.currentProgressTime = j2;
                        if (j2 < 300) {
                            this.animatedProgressValue = this.animationProgressStart + (f * PhotoViewer.decelerateInterpolator.getInterpolation(((float) this.currentProgressTime) / 300.0f));
                        } else {
                            float f2 = this.currentProgress;
                            this.animatedProgressValue = f2;
                            this.animationProgressStart = f2;
                            this.currentProgressTime = 0L;
                        }
                    }
                    z2 = true;
                }
                float f3 = this.animatedAlphaValue;
                if (f3 > BitmapDescriptorFactory.HUE_RED && this.previousBackgroundState != -2) {
                    float f4 = f3 - (((float) j) / 200.0f);
                    this.animatedAlphaValue = f4;
                    if (f4 <= BitmapDescriptorFactory.HUE_RED) {
                        this.animatedAlphaValue = BitmapDescriptorFactory.HUE_RED;
                        this.previousBackgroundState = -2;
                    }
                    z2 = true;
                }
            } else {
                z2 = false;
            }
            while (true) {
                float[] fArr = this.alphas;
                if (i >= fArr.length) {
                    break;
                }
                float f5 = fArr[i];
                float[] fArr2 = this.animAlphas;
                if (f5 > fArr2[i]) {
                    fArr2[i] = Math.min(1.0f, fArr2[i] + (((float) j) / 200.0f));
                } else if (fArr[i] < fArr2[i]) {
                    fArr2[i] = Math.max((float) BitmapDescriptorFactory.HUE_RED, fArr2[i] - (((float) j) / 200.0f));
                } else {
                    i++;
                }
                z2 = true;
                i++;
            }
            if (z2) {
                this.parent.postInvalidateOnAnimation();
            }
        }

        public void setProgress(float f, boolean z) {
            if (!z) {
                this.animatedProgressValue = f;
                this.animationProgressStart = f;
            } else {
                this.animationProgressStart = this.animatedProgressValue;
            }
            this.currentProgress = f;
            this.currentProgressTime = 0L;
            this.parent.invalidate();
        }

        public void setBackgroundState(int i, boolean z, boolean z2) {
            int i2;
            int i3 = this.backgroundState;
            if (i3 == i) {
                return;
            }
            PlayPauseDrawable playPauseDrawable = this.playPauseDrawable;
            if (playPauseDrawable != null) {
                boolean z3 = z2 && (i3 == 3 || i3 == 4);
                if (i == 3) {
                    playPauseDrawable.setPause(false, z3);
                } else if (i == 4) {
                    playPauseDrawable.setPause(true, z3);
                }
                this.playPauseDrawable.setParent(this.parent);
                this.playPauseDrawable.invalidateSelf();
            }
            this.lastUpdateTime = System.currentTimeMillis();
            if (z && (i2 = this.backgroundState) != i) {
                this.previousBackgroundState = i2;
                this.animatedAlphaValue = 1.0f;
            } else {
                this.previousBackgroundState = -2;
            }
            this.backgroundState = i;
            onBackgroundStateUpdated(i);
            this.parent.invalidate();
        }

        public void setAlpha(float f) {
            setIndexedAlpha(0, f, false);
        }

        public void setScale(float f) {
            this.scale = f;
        }

        public void setIndexedAlpha(int i, float f, boolean z) {
            float[] fArr = this.alphas;
            if (fArr[i] != f) {
                fArr[i] = f;
                if (!z) {
                    this.animAlphas[i] = f;
                }
                checkVisibility();
                this.parent.invalidate();
            }
        }

        public void resetAlphas() {
            int i = 0;
            while (true) {
                float[] fArr = this.alphas;
                if (i < fArr.length) {
                    this.animAlphas[i] = 1.0f;
                    fArr[i] = 1.0f;
                    i++;
                } else {
                    checkVisibility();
                    return;
                }
            }
        }

        private float calculateAlpha() {
            float f;
            float f2 = 1.0f;
            int i = 0;
            while (true) {
                float[] fArr = this.animAlphas;
                if (i >= fArr.length) {
                    return f2;
                }
                if (i == 2) {
                    f = AndroidUtilities.accelerateInterpolator.getInterpolation(fArr[i]);
                } else {
                    f = fArr[i];
                }
                f2 *= f;
                i++;
            }
        }

        private void checkVisibility() {
            boolean z = false;
            int i = 0;
            while (true) {
                float[] fArr = this.alphas;
                if (i >= fArr.length) {
                    z = true;
                    break;
                } else if (fArr[i] != 1.0f) {
                    break;
                } else {
                    i++;
                }
            }
            if (z != this.visible) {
                this.visible = z;
                onVisibilityChanged(z);
            }
        }

        public boolean isVisible() {
            return this.visible;
        }

        public int getX() {
            return (PhotoViewer.this.containerView.getWidth() - ((int) (this.size * this.scale))) / 2;
        }

        public int getY() {
            int i = (int) ((((AndroidUtilities.displaySize.y + (PhotoViewer.this.isStatusBarVisible() ? AndroidUtilities.statusBarHeight : 0)) - ((int) (this.size * this.scale))) / 2) + PhotoViewer.this.currentPanTranslationY);
            return PhotoViewer.this.sendPhotoType == 1 ? i - AndroidUtilities.m102dp(38) : i;
        }

        public void onDraw(Canvas canvas) {
            int i;
            Drawable drawable;
            Drawable drawable2;
            int i2 = (int) (this.size * this.scale);
            int x = getX();
            int y = getY();
            float calculateAlpha = calculateAlpha();
            int i3 = this.previousBackgroundState;
            if (i3 >= 0 && i3 < PhotoViewer.progressDrawables.length + 2) {
                if (this.previousBackgroundState < PhotoViewer.progressDrawables.length) {
                    drawable2 = PhotoViewer.progressDrawables[this.previousBackgroundState];
                } else {
                    drawable2 = this.playDrawable;
                }
                if (drawable2 != null) {
                    drawable2.setAlpha((int) (this.animatedAlphaValue * 255.0f * calculateAlpha));
                    drawable2.setBounds(x, y, x + i2, y + i2);
                    drawable2.draw(canvas);
                }
            }
            int i4 = this.backgroundState;
            if (i4 >= 0 && i4 < PhotoViewer.progressDrawables.length + 2) {
                if (this.backgroundState < PhotoViewer.progressDrawables.length) {
                    drawable = PhotoViewer.progressDrawables[this.backgroundState];
                } else {
                    drawable = this.playDrawable;
                }
                if (drawable != null) {
                    if (this.previousBackgroundState != -2) {
                        drawable.setAlpha((int) ((1.0f - this.animatedAlphaValue) * 255.0f * calculateAlpha));
                    } else {
                        drawable.setAlpha((int) (calculateAlpha * 255.0f));
                    }
                    drawable.setBounds(x, y, x + i2, y + i2);
                    drawable.draw(canvas);
                }
            }
            int i5 = this.backgroundState;
            if (i5 == 0 || i5 == 1 || (i = this.previousBackgroundState) == 0 || i == 1) {
                int m102dp = AndroidUtilities.m102dp(4);
                if (this.previousBackgroundState != -2) {
                    PhotoViewer.progressPaint.setAlpha((int) (this.animatedAlphaValue * 255.0f * calculateAlpha));
                } else {
                    PhotoViewer.progressPaint.setAlpha((int) (calculateAlpha * 255.0f));
                }
                this.progressRect.set(x + m102dp, y + m102dp, (x + i2) - m102dp, (y + i2) - m102dp);
                canvas.drawArc(this.progressRect, this.radOffset - 90.0f, Math.max(4.0f, this.animatedProgressValue * 360.0f), false, PhotoViewer.progressPaint);
                updateAnimation(true);
                return;
            }
            updateAnimation(false);
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$FrameLayoutDrawer */
    /* loaded from: classes5.dex */
    public class FrameLayoutDrawer extends SizeNotifierFrameLayoutPhoto {
        private boolean captionAbove;
        private ArrayList<Rect> exclusionRects;
        private boolean ignoreLayout;
        private Paint paint;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FrameLayoutDrawer(Context context, Activity activity) {
            super(context, activity, false);
            PhotoViewer.this = r1;
            this.paint = new Paint();
            setWillNotDraw(false);
            this.paint.setColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
        }

        /* JADX WARN: Removed duplicated region for block: B:211:0x0287  */
        /* JADX WARN: Removed duplicated region for block: B:212:0x028a  */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onMeasure(int r18, int r19) {
            /*
                Method dump skipped, instructions count: 704
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.FrameLayoutDrawer.onMeasure(int, int):void");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:106:0x0076  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x0085  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x00a9  */
        @Override // org.telegram.p042ui.Components.SizeNotifierFrameLayoutPhoto, org.telegram.p042ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onLayout(boolean r16, int r17, int r18, int r19, int r20) {
            /*
                Method dump skipped, instructions count: 439
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.FrameLayoutDrawer.onLayout(boolean, int, int, int, int):void");
        }

        public void updateExclusionRects() {
            if (Build.VERSION.SDK_INT >= 29) {
                if (this.exclusionRects == null) {
                    this.exclusionRects = new ArrayList<>();
                }
                this.exclusionRects.clear();
                if (PhotoViewer.this.currentEditMode == 1 || PhotoViewer.this.switchingToMode == 1) {
                    int measuredHeight = getMeasuredHeight();
                    int measuredWidth = getMeasuredWidth();
                    this.exclusionRects.add(new Rect(0, (measuredHeight - AndroidUtilities.m102dp(200)) / 2, AndroidUtilities.m102dp(100), (AndroidUtilities.m102dp(200) + measuredHeight) / 2));
                    this.exclusionRects.add(new Rect(measuredWidth - AndroidUtilities.m102dp(100), (measuredHeight - AndroidUtilities.m102dp(200)) / 2, measuredWidth, (measuredHeight + AndroidUtilities.m102dp(200)) / 2));
                }
                setSystemGestureExclusionRects(this.exclusionRects);
                invalidate();
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            PhotoViewer.this.onDraw(canvas);
            if (!PhotoViewer.this.isStatusBarVisible() || AndroidUtilities.statusBarHeight == 0 || PhotoViewer.this.actionBar == null) {
                return;
            }
            if (Build.VERSION.SDK_INT < 21) {
                this.paint.setAlpha((int) (PhotoViewer.this.actionBar.getAlpha() * 255.0f * 0.2f));
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, PhotoViewer.this.currentPanTranslationY, getMeasuredWidth(), PhotoViewer.this.currentPanTranslationY + AndroidUtilities.statusBarHeight, this.paint);
            }
            this.paint.setAlpha((int) (PhotoViewer.this.actionBar.getAlpha() * 255.0f * 0.498f));
            if (getPaddingRight() > 0) {
                canvas.drawRect(getMeasuredWidth() - getPaddingRight(), BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), this.paint);
            }
            if (getPaddingLeft() > 0) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getPaddingLeft(), getMeasuredHeight(), this.paint);
            }
            if (getPaddingBottom() > 0) {
                float dpf2 = AndroidUtilities.dpf2(24.0f) * (1.0f - PhotoViewer.this.actionBar.getAlpha());
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, (getMeasuredHeight() - getPaddingBottom()) + dpf2, getMeasuredWidth(), getMeasuredHeight() + dpf2, this.paint);
            }
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            super.draw(canvas);
            if (PhotoViewer.this.photoViewerWebView == null || !PhotoViewer.this.photoViewerWebView.isControllable() || PhotoViewer.this.videoForwardDrawable == null || !PhotoViewer.this.videoForwardDrawable.isAnimating()) {
                return;
            }
            int measuredHeight = ((int) (PhotoViewer.this.photoViewerWebView.getWebView().getMeasuredHeight() * (PhotoViewer.this.scale - 1.0f))) / 2;
            PhotoViewer.this.videoForwardDrawable.setBounds(PhotoViewer.this.photoViewerWebView.getLeft(), (PhotoViewer.this.photoViewerWebView.getWebView().getTop() - measuredHeight) + ((int) (PhotoViewer.this.translationY / PhotoViewer.this.scale)), PhotoViewer.this.photoViewerWebView.getRight(), PhotoViewer.this.photoViewerWebView.getWebView().getBottom() + measuredHeight + ((int) (PhotoViewer.this.translationY / PhotoViewer.this.scale)));
            PhotoViewer.this.videoForwardDrawable.draw(canvas);
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (view == PhotoViewer.this.leftPaintingOverlay || view == PhotoViewer.this.rightPaintingOverlay) {
                return false;
            }
            if (view != PhotoViewer.this.navigationBar && (PhotoViewer.this.captionEdit == null || !PhotoViewer.this.captionEdit.editText.isPopupView(view))) {
                canvas.save();
            }
            boolean drawChildInternal = drawChildInternal(canvas, view, j);
            if (view != PhotoViewer.this.navigationBar && (PhotoViewer.this.captionEdit == null || !PhotoViewer.this.captionEdit.editText.isPopupView(view))) {
                canvas.restore();
            }
            return drawChildInternal;
        }

        protected boolean drawChildInternal(Canvas canvas, View view, long j) {
            if (view == PhotoViewer.this.miniProgressView) {
                return false;
            }
            if (view != PhotoViewer.this.videoTimelineViewContainer || PhotoViewer.this.videoTimelineViewContainer.getTranslationY() <= BitmapDescriptorFactory.HUE_RED || PhotoViewer.this.pickerView.getTranslationY() != BitmapDescriptorFactory.HUE_RED) {
                try {
                    if (view == PhotoViewer.this.aspectRatioFrameLayout || view == PhotoViewer.this.paintingOverlay) {
                        return false;
                    }
                    return super.drawChild(canvas, view, j);
                } catch (Throwable unused) {
                    return true;
                }
            }
            canvas.save();
            canvas.clipRect(PhotoViewer.this.videoTimelineViewContainer.getX(), PhotoViewer.this.videoTimelineViewContainer.getY(), PhotoViewer.this.videoTimelineViewContainer.getX() + PhotoViewer.this.videoTimelineViewContainer.getMeasuredWidth(), PhotoViewer.this.videoTimelineViewContainer.getBottom());
            boolean drawChild = super.drawChild(canvas, view, j);
            canvas.restore();
            return drawChild;
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p042ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.PhotoViewer.FrameLayoutDrawer.1
                @Override // org.telegram.p042ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean allowLayoutChanges() {
                    return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                }

                @Override // org.telegram.p042ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean clipWithGradient(int i) {
                    return Bulletin.Delegate.CC.$default$clipWithGradient(this, i);
                }

                @Override // org.telegram.p042ui.Components.Bulletin.Delegate
                public /* synthetic */ int getTopOffset(int i) {
                    return Bulletin.Delegate.CC.$default$getTopOffset(this, i);
                }

                @Override // org.telegram.p042ui.Components.Bulletin.Delegate
                public /* synthetic */ void onBottomOffsetChange(float f) {
                    Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
                }

                @Override // org.telegram.p042ui.Components.Bulletin.Delegate
                public /* synthetic */ void onHide(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onHide(this, bulletin);
                }

                @Override // org.telegram.p042ui.Components.Bulletin.Delegate
                public /* synthetic */ void onShow(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onShow(this, bulletin);
                }

                {
                    FrameLayoutDrawer.this = this;
                }

                @Override // org.telegram.p042ui.Components.Bulletin.Delegate
                public int getBottomOffset(int i) {
                    int height;
                    int i2 = 0;
                    if (PhotoViewer.this.editing) {
                        if (PhotoViewer.this.captionEdit != null && PhotoViewer.this.captionEdit.getVisibility() == 0) {
                            i2 = 0 + PhotoViewer.this.captionEdit.getEditTextHeight() + AndroidUtilities.m102dp(12);
                        }
                        if (PhotoViewer.this.pickerView == null || PhotoViewer.this.pickerView.getVisibility() != 0) {
                            return i2;
                        }
                        height = PhotoViewer.this.pickerView.getHeight();
                    } else {
                        if (PhotoViewer.this.bottomLayout != null && PhotoViewer.this.bottomLayout.getVisibility() == 0) {
                            i2 = 0 + PhotoViewer.this.bottomLayout.getHeight();
                        }
                        if (PhotoViewer.this.groupedPhotosListView == null || !PhotoViewer.this.groupedPhotosListView.hasPhotos()) {
                            return i2;
                        }
                        if (!AndroidUtilities.isTablet() && PhotoViewer.this.containerView.getMeasuredHeight() <= PhotoViewer.this.containerView.getMeasuredWidth()) {
                            return i2;
                        }
                        height = PhotoViewer.this.groupedPhotosListView.getHeight();
                    }
                    return i2 + height;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p042ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            Bulletin.removeDelegate(this);
        }

        @Override // org.telegram.p042ui.Components.SizeNotifierFrameLayoutPhoto, org.telegram.p042ui.Components.SizeNotifierFrameLayout
        public void notifyHeightChanged() {
            super.notifyHeightChanged();
            if (PhotoViewer.this.isCurrentVideo) {
                PhotoViewer.this.photoProgressViews[0].setIndexedAlpha(2, getKeyboardHeight() <= AndroidUtilities.m102dp(20) ? 1.0f : BitmapDescriptorFactory.HUE_RED, true);
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 24) {
            VPC_PROGRESS = new FloatProperty<VideoPlayerControlFrameLayout>("progress") { // from class: org.telegram.ui.PhotoViewer.11
                @Override // android.util.FloatProperty
                public void setValue(VideoPlayerControlFrameLayout videoPlayerControlFrameLayout, float f) {
                    videoPlayerControlFrameLayout.setProgress(f);
                }

                @Override // android.util.Property
                public Float get(VideoPlayerControlFrameLayout videoPlayerControlFrameLayout) {
                    return Float.valueOf(videoPlayerControlFrameLayout.getProgress());
                }
            };
        } else {
            VPC_PROGRESS = new Property<VideoPlayerControlFrameLayout, Float>(Float.class, "progress") { // from class: org.telegram.ui.PhotoViewer.12
                @Override // android.util.Property
                public void set(VideoPlayerControlFrameLayout videoPlayerControlFrameLayout, Float f) {
                    videoPlayerControlFrameLayout.setProgress(f.floatValue());
                }

                @Override // android.util.Property
                public Float get(VideoPlayerControlFrameLayout videoPlayerControlFrameLayout) {
                    return Float.valueOf(videoPlayerControlFrameLayout.getProgress());
                }
            };
        }
        Instance = null;
        PipInstance = null;
    }

    /* renamed from: org.telegram.ui.PhotoViewer$VideoPlayerControlFrameLayout */
    /* loaded from: classes5.dex */
    public class VideoPlayerControlFrameLayout extends FrameLayout {
        private boolean ignoreLayout;
        private int lastTimeWidth;
        private int parentHeight;
        private int parentWidth;
        private float progress;
        private boolean seekBarTransitionEnabled;
        private SpringAnimation timeSpring;
        private FloatValueHolder timeValue;
        private boolean translationYAnimationEnabled;

        public /* synthetic */ void lambda$new$0(DynamicAnimation dynamicAnimation, float f, float f2) {
            PhotoViewer.this.videoPlayerSeekbar.setSize((int) (((getMeasuredWidth() - AndroidUtilities.m102dp(16)) - f) - (this.parentWidth > this.parentHeight ? AndroidUtilities.m102dp(48) : 0)), getMeasuredHeight());
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VideoPlayerControlFrameLayout(Context context) {
            super(context);
            PhotoViewer.this = r3;
            this.progress = 1.0f;
            this.translationYAnimationEnabled = true;
            this.timeValue = new FloatValueHolder(BitmapDescriptorFactory.HUE_RED);
            this.timeSpring = new SpringAnimation(this.timeValue).setSpring(new SpringForce(BitmapDescriptorFactory.HUE_RED).setStiffness(750.0f).setDampingRatio(1.0f)).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.PhotoViewer$VideoPlayerControlFrameLayout$$ExternalSyntheticLambda0
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    PhotoViewer.VideoPlayerControlFrameLayout.this.lambda$new$0(dynamicAnimation, f, f2);
                }
            });
            setWillNotDraw(false);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (this.progress < 1.0f) {
                return false;
            }
            if (PhotoViewer.this.videoPlayerSeekbar.onTouch(motionEvent.getAction(), motionEvent.getX() - AndroidUtilities.m102dp(2), motionEvent.getY())) {
                getParent().requestDisallowInterceptTouchEvent(true);
                PhotoViewer.this.videoPlayerSeekbarView.invalidate();
            }
            return true;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.timeValue.setValue(BitmapDescriptorFactory.HUE_RED);
            this.lastTimeWidth = 0;
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            String format;
            this.ignoreLayout = true;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) PhotoViewer.this.videoPlayerTime.getLayoutParams();
            if (this.parentWidth > this.parentHeight) {
                if (PhotoViewer.this.exitFullscreenButton.getVisibility() != 0) {
                    PhotoViewer.this.exitFullscreenButton.setVisibility(0);
                }
                i3 = AndroidUtilities.m102dp(48);
                layoutParams.rightMargin = AndroidUtilities.m102dp(47);
            } else {
                if (PhotoViewer.this.exitFullscreenButton.getVisibility() != 4) {
                    PhotoViewer.this.exitFullscreenButton.setVisibility(4);
                }
                layoutParams.rightMargin = AndroidUtilities.m102dp(12);
                i3 = 0;
            }
            this.ignoreLayout = false;
            super.onMeasure(i, i2);
            long j = 0;
            if (PhotoViewer.this.videoPlayer != null) {
                long duration = PhotoViewer.this.videoPlayer.getDuration();
                if (duration != C0479C.TIME_UNSET) {
                    j = duration;
                }
            } else if (PhotoViewer.this.photoViewerWebView != null && PhotoViewer.this.photoViewerWebView.isControllable()) {
                j = PhotoViewer.this.photoViewerWebView.getVideoDuration();
            }
            long j2 = j / 1000;
            long j3 = j2 / 60;
            if (j3 > 60) {
                format = String.format(Locale.ROOT, "%02d:%02d:%02d", Long.valueOf(j3 / 60), Long.valueOf(j3 % 60), Long.valueOf(j2 % 60));
            } else {
                format = String.format(Locale.ROOT, "%02d:%02d", Long.valueOf(j3), Long.valueOf(j2 % 60));
            }
            int ceil = (int) Math.ceil(PhotoViewer.this.videoPlayerTime.getPaint().measureText(String.format(Locale.ROOT, "%1$s / %1$s", format)));
            this.timeSpring.cancel();
            if (this.lastTimeWidth != 0) {
                float f = ceil;
                if (this.timeValue.getValue() != f) {
                    this.timeSpring.getSpring().setFinalPosition(f);
                    this.timeSpring.start();
                    this.lastTimeWidth = ceil;
                }
            }
            PhotoViewer.this.videoPlayerSeekbar.setSize(((getMeasuredWidth() - AndroidUtilities.m102dp(16)) - ceil) - i3, getMeasuredHeight());
            this.timeValue.setValue(ceil);
            this.lastTimeWidth = ceil;
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            float currentPosition = PhotoViewer.this.videoPlayer != null ? ((float) PhotoViewer.this.videoPlayer.getCurrentPosition()) / ((float) PhotoViewer.this.videoPlayer.getDuration()) : BitmapDescriptorFactory.HUE_RED;
            if (PhotoViewer.this.playerWasReady) {
                PhotoViewer.this.videoPlayerSeekbar.setProgress(currentPosition);
            }
            PhotoViewer.this.videoTimelineView.setProgress(currentPosition);
        }

        public float getProgress() {
            return this.progress;
        }

        public void setProgress(float f) {
            if (this.progress != f) {
                this.progress = f;
                onProgressChanged(f);
            }
        }

        private void onProgressChanged(float f) {
            PhotoViewer.this.videoPlayerTime.setAlpha(f);
            PhotoViewer.this.exitFullscreenButton.setAlpha(f);
            if (this.seekBarTransitionEnabled) {
                PhotoViewer.this.videoPlayerTime.setPivotX(PhotoViewer.this.videoPlayerTime.getWidth());
                PhotoViewer.this.videoPlayerTime.setPivotY(PhotoViewer.this.videoPlayerTime.getHeight());
                float f2 = 1.0f - f;
                float f3 = 1.0f - (0.1f * f2);
                PhotoViewer.this.videoPlayerTime.setScaleX(f3);
                PhotoViewer.this.videoPlayerTime.setScaleY(f3);
                PhotoViewer.this.videoPlayerSeekbar.setTransitionProgress(f2);
                return;
            }
            if (this.translationYAnimationEnabled) {
                setTranslationY(AndroidUtilities.dpf2(24.0f) * (1.0f - f));
            }
            PhotoViewer.this.videoPlayerSeekbarView.setAlpha(f);
        }

        public void setSeekBarTransitionEnabled(boolean z) {
            if (this.seekBarTransitionEnabled != z) {
                this.seekBarTransitionEnabled = z;
                if (!z) {
                    PhotoViewer.this.videoPlayerTime.setScaleX(1.0f);
                    PhotoViewer.this.videoPlayerTime.setScaleY(1.0f);
                    PhotoViewer.this.videoPlayerSeekbar.setTransitionProgress(BitmapDescriptorFactory.HUE_RED);
                } else {
                    setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    PhotoViewer.this.videoPlayerSeekbarView.setAlpha(1.0f);
                }
                onProgressChanged(this.progress);
            }
        }

        public void setTranslationYAnimationEnabled(boolean z) {
            if (this.translationYAnimationEnabled != z) {
                this.translationYAnimationEnabled = z;
                if (!z) {
                    setTranslationY(BitmapDescriptorFactory.HUE_RED);
                }
                onProgressChanged(this.progress);
            }
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$CaptionTextViewSwitcher */
    /* loaded from: classes5.dex */
    public static class CaptionTextViewSwitcher extends TextViewSwitcher {
        private float alpha;
        private FrameLayout container;
        private boolean inScrollView;
        private NestedScrollView scrollView;

        public CaptionTextViewSwitcher(Context context) {
            super(context);
            this.inScrollView = false;
            this.alpha = 1.0f;
        }

        public void setScrollView(NestedScrollView nestedScrollView) {
            this.scrollView = nestedScrollView;
        }

        public void setContainer(FrameLayout frameLayout) {
            this.container = frameLayout;
        }

        @Override // android.view.View
        public void setVisibility(int i) {
            setVisibility(i, true);
        }

        public void setVisibility(int i, boolean z) {
            super.setVisibility(i);
            if (this.inScrollView && z) {
                this.scrollView.setVisibility(i);
            }
        }

        @Override // android.view.View
        public void setAlpha(float f) {
            this.alpha = f;
            if (this.inScrollView) {
                this.scrollView.setAlpha(f);
            } else {
                super.setAlpha(f);
            }
        }

        @Override // android.view.View
        public float getAlpha() {
            if (this.inScrollView) {
                return this.alpha;
            }
            return super.getAlpha();
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            if (this.inScrollView) {
                this.scrollView.invalidate();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.container == null || getParent() != this.container) {
                return;
            }
            this.inScrollView = true;
            this.scrollView.setVisibility(getVisibility());
            this.scrollView.setAlpha(this.alpha);
            super.setAlpha(1.0f);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.inScrollView) {
                this.inScrollView = false;
                this.scrollView.setVisibility(8);
                super.setAlpha(this.alpha);
            }
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$CaptionScrollView */
    /* loaded from: classes5.dex */
    public static class CaptionScrollView extends NestedScrollView {
        private Method abortAnimatedScrollMethod;
        public float backgroundAlpha;
        private final FrameLayout captionContainer;
        private final CaptionTextViewSwitcher captionTextViewSwitcher;
        public boolean dontChangeTopMargin;
        private boolean isLandscape;
        private boolean nestedScrollStarted;
        private float overScrollY;
        private final Paint paint;
        private int pendingTopMargin;
        private int prevHeight;
        private OverScroller scroller;
        private final SpringAnimation springAnimation;
        private int textHash;
        private float velocitySign;
        private float velocityY;

        @Override // androidx.core.widget.NestedScrollView, android.view.View
        protected float getBottomFadingEdgeStrength() {
            return 1.0f;
        }

        @Override // androidx.core.widget.NestedScrollView, android.view.View
        protected float getTopFadingEdgeStrength() {
            return 1.0f;
        }

        protected boolean isStatusBarVisible() {
            return true;
        }

        protected void onScrollEnd() {
        }

        protected void onScrollStart() {
        }

        protected void onScrollUpdate() {
        }

        public CaptionScrollView(Context context, CaptionTextViewSwitcher captionTextViewSwitcher, FrameLayout frameLayout) {
            super(context);
            Paint paint = new Paint(1);
            this.paint = paint;
            this.backgroundAlpha = 1.0f;
            this.pendingTopMargin = -1;
            this.captionTextViewSwitcher = captionTextViewSwitcher;
            this.captionContainer = frameLayout;
            setClipChildren(false);
            setOverScrollMode(2);
            paint.setColor(-16777216);
            setFadingEdgeLength(AndroidUtilities.m102dp(12));
            setVerticalFadingEdgeEnabled(true);
            setWillNotDraw(false);
            SpringAnimation springAnimation = new SpringAnimation(captionTextViewSwitcher, DynamicAnimation.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED);
            this.springAnimation = springAnimation;
            springAnimation.getSpring().setStiffness(100.0f);
            springAnimation.setMinimumVisibleChange(1.0f);
            springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.PhotoViewer$CaptionScrollView$$ExternalSyntheticLambda1
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    PhotoViewer.CaptionScrollView.this.lambda$new$0(dynamicAnimation, f, f2);
                }
            });
            springAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.PhotoViewer$CaptionScrollView$$ExternalSyntheticLambda0
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                    PhotoViewer.CaptionScrollView.this.lambda$new$1(dynamicAnimation, z, f, f2);
                }
            });
            springAnimation.getSpring().setDampingRatio(1.0f);
            try {
                Method declaredMethod = NestedScrollView.class.getDeclaredMethod("abortAnimatedScroll", new Class[0]);
                this.abortAnimatedScrollMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
                this.abortAnimatedScrollMethod = null;
                FileLog.m97e(e);
            }
            try {
                Field declaredField = NestedScrollView.class.getDeclaredField("mScroller");
                declaredField.setAccessible(true);
                this.scroller = (OverScroller) declaredField.get(this);
            } catch (Exception e2) {
                this.scroller = null;
                FileLog.m97e(e2);
            }
        }

        public /* synthetic */ void lambda$new$0(DynamicAnimation dynamicAnimation, float f, float f2) {
            this.overScrollY = f;
            this.velocityY = f2;
            onScrollUpdate();
        }

        public /* synthetic */ void lambda$new$1(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
            onScrollEnd();
        }

        @Override // androidx.core.widget.NestedScrollView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || motionEvent.getY() >= (this.captionContainer.getTop() - getScrollY()) + this.captionTextViewSwitcher.getTranslationY()) {
                return super.onTouchEvent(motionEvent);
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.core.widget.NestedScrollView, android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            updateTopMargin(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
            super.onMeasure(i, i2);
        }

        public void applyPendingTopMargin() {
            this.dontChangeTopMargin = false;
            if (this.pendingTopMargin >= 0) {
                ((ViewGroup.MarginLayoutParams) this.captionContainer.getLayoutParams()).topMargin = this.pendingTopMargin;
                this.pendingTopMargin = -1;
                requestLayout();
            }
        }

        public int getPendingMarginTopDiff() {
            int i = this.pendingTopMargin;
            if (i >= 0) {
                return i - ((ViewGroup.MarginLayoutParams) this.captionContainer.getLayoutParams()).topMargin;
            }
            return 0;
        }

        public void updateTopMargin() {
            updateTopMargin(getWidth(), getHeight());
        }

        private void updateTopMargin(int i, int i2) {
            int calculateNewContainerMarginTop = calculateNewContainerMarginTop(i, i2);
            if (calculateNewContainerMarginTop >= 0) {
                if (this.dontChangeTopMargin) {
                    this.pendingTopMargin = calculateNewContainerMarginTop;
                    return;
                }
                ((ViewGroup.MarginLayoutParams) this.captionContainer.getLayoutParams()).topMargin = calculateNewContainerMarginTop;
                this.pendingTopMargin = -1;
            }
        }

        public int calculateNewContainerMarginTop(int i, int i2) {
            int m102dp;
            if (i == 0 || i2 == 0) {
                return -1;
            }
            TextView currentView = this.captionTextViewSwitcher.getCurrentView();
            CharSequence text = currentView.getText();
            int hashCode = text.hashCode();
            Point point = AndroidUtilities.displaySize;
            boolean z = point.x > point.y;
            if (this.textHash == hashCode && this.isLandscape == z && this.prevHeight == i2) {
                return -1;
            }
            this.textHash = hashCode;
            this.isLandscape = z;
            this.prevHeight = i2;
            currentView.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE));
            Layout layout = currentView.getLayout();
            int lineCount = layout.getLineCount();
            if ((z && lineCount <= 2) || (!z && lineCount <= 5)) {
                m102dp = currentView.getMeasuredHeight();
            } else {
                int min = Math.min(z ? 2 : 5, lineCount);
                loop0: while (min > 1) {
                    int i3 = min - 1;
                    for (int lineStart = layout.getLineStart(i3); lineStart < layout.getLineEnd(i3); lineStart++) {
                        if (!Character.isWhitespace(text.charAt(lineStart))) {
                            break loop0;
                        }
                    }
                    min--;
                }
                i2 -= currentView.getPaint().getFontMetricsInt(null) * min;
                m102dp = AndroidUtilities.m102dp(8);
            }
            return i2 - m102dp;
        }

        public void reset() {
            scrollTo(0, 0);
        }

        public void stopScrolling() {
            Method method = this.abortAnimatedScrollMethod;
            if (method != null) {
                try {
                    method.invoke(this, new Object[0]);
                } catch (Exception e) {
                    FileLog.m97e(e);
                }
            }
        }

        @Override // androidx.core.widget.NestedScrollView
        public void fling(int i) {
            super.fling(i);
            this.velocitySign = Math.signum(i);
            this.velocityY = BitmapDescriptorFactory.HUE_RED;
        }

        @Override // androidx.core.widget.NestedScrollView
        public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3) {
            iArr[1] = 0;
            if (this.nestedScrollStarted) {
                float f = this.overScrollY;
                if ((f > BitmapDescriptorFactory.HUE_RED && i2 > 0) || (f < BitmapDescriptorFactory.HUE_RED && i2 < 0)) {
                    float f2 = i2;
                    float f3 = f - f2;
                    if (f > BitmapDescriptorFactory.HUE_RED) {
                        if (f3 < BitmapDescriptorFactory.HUE_RED) {
                            this.overScrollY = BitmapDescriptorFactory.HUE_RED;
                            iArr[1] = (int) (iArr[1] + f2 + f3);
                        } else {
                            this.overScrollY = f3;
                            iArr[1] = iArr[1] + i2;
                        }
                    } else if (f3 > BitmapDescriptorFactory.HUE_RED) {
                        this.overScrollY = BitmapDescriptorFactory.HUE_RED;
                        iArr[1] = (int) (iArr[1] + f2 + f3);
                    } else {
                        this.overScrollY = f3;
                        iArr[1] = iArr[1] + i2;
                    }
                    onScrollUpdate();
                    this.captionTextViewSwitcher.setTranslationY(this.overScrollY);
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.core.widget.NestedScrollView
        public void dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
            float f;
            if (i4 != 0) {
                int round = Math.round(i4 * (1.0f - Math.abs((-this.overScrollY) / (this.captionContainer.getTop() - ((isStatusBarVisible() ? AndroidUtilities.statusBarHeight : 0) + C3702ActionBar.getCurrentActionBarHeight())))));
                if (round != 0) {
                    if (!this.nestedScrollStarted) {
                        if (!this.springAnimation.isRunning()) {
                            OverScroller overScroller = this.scroller;
                            float currVelocity = overScroller != null ? overScroller.getCurrVelocity() : Float.NaN;
                            if (Float.isNaN(currVelocity)) {
                                f = BitmapDescriptorFactory.HUE_RED;
                            } else {
                                Point point = AndroidUtilities.displaySize;
                                float min = Math.min(point.x > point.y ? 3000.0f : 5000.0f, currVelocity);
                                round = (int) ((round * min) / currVelocity);
                                f = min * (-this.velocitySign);
                            }
                            if (round != 0) {
                                float f2 = this.overScrollY - round;
                                this.overScrollY = f2;
                                this.captionTextViewSwitcher.setTranslationY(f2);
                            }
                            startSpringAnimationIfNotRunning(f);
                        }
                    } else {
                        float f3 = this.overScrollY - round;
                        this.overScrollY = f3;
                        this.captionTextViewSwitcher.setTranslationY(f3);
                    }
                }
                onScrollUpdate();
            }
        }

        private void startSpringAnimationIfNotRunning(float f) {
            if (this.springAnimation.isRunning()) {
                return;
            }
            this.springAnimation.setStartVelocity(f);
            this.springAnimation.start();
        }

        @Override // androidx.core.widget.NestedScrollView
        public boolean startNestedScroll(int i, int i2) {
            if (i2 == 0) {
                this.springAnimation.cancel();
                this.nestedScrollStarted = true;
                this.overScrollY = this.captionTextViewSwitcher.getTranslationY();
                onScrollStart();
            }
            return true;
        }

        @Override // androidx.core.widget.NestedScrollView, android.view.View
        public void computeScroll() {
            OverScroller overScroller;
            super.computeScroll();
            if (!this.nestedScrollStarted && this.overScrollY != BitmapDescriptorFactory.HUE_RED && (overScroller = this.scroller) != null && overScroller.isFinished()) {
                startSpringAnimationIfNotRunning(BitmapDescriptorFactory.HUE_RED);
            }
            onScrollUpdate();
        }

        @Override // androidx.core.widget.NestedScrollView
        public void stopNestedScroll(int i) {
            OverScroller overScroller;
            if (this.nestedScrollStarted && i == 0) {
                this.nestedScrollStarted = false;
                if (this.overScrollY != BitmapDescriptorFactory.HUE_RED && (overScroller = this.scroller) != null && overScroller.isFinished()) {
                    startSpringAnimationIfNotRunning(this.velocityY);
                }
                onScrollEnd();
            }
        }

        @Override // androidx.core.widget.NestedScrollView, android.view.View
        public void draw(Canvas canvas) {
            int width = getWidth();
            int height = getHeight();
            int scrollY = getScrollY();
            int save = canvas.save();
            int i = height + scrollY;
            canvas.clipRect(0, scrollY, width, i);
            this.paint.setAlpha((int) (this.backgroundAlpha * 127.0f));
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, this.captionContainer.getTop() + this.captionTextViewSwitcher.getTranslationY(), width, i, this.paint);
            super.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    public static PhotoViewer getPipInstance() {
        return PipInstance;
    }

    public static PhotoViewer getInstance() {
        PhotoViewer photoViewer = Instance;
        if (photoViewer == null) {
            synchronized (PhotoViewer.class) {
                photoViewer = Instance;
                if (photoViewer == null) {
                    photoViewer = new PhotoViewer();
                    Instance = photoViewer;
                }
            }
        }
        return photoViewer;
    }

    public boolean isOpenedFullScreenVideo() {
        return this.openedFullScreenVideo;
    }

    public static boolean hasInstance() {
        return Instance != null;
    }

    public PhotoViewer() {
        this.ALLOW_USE_SURFACE = Build.VERSION.SDK_INT >= 30;
        this.maxSelectedPhotos = -1;
        this.allowOrder = true;
        this.miniProgressShowRunnable = new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                PhotoViewer.this.lambda$new$2();
            }
        };
        this.isActionBarVisible = true;
        this.closePhotoAfterSelect = true;
        this.backgroundDrawable = new BackgroundDrawable(-16777216);
        this.blackPaint = new Paint();
        this.photoProgressViews = new PhotoProgressView[3];
        this.onUserLeaveHintListener = new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda67
            @Override // java.lang.Runnable
            public final void run() {
                PhotoViewer.this.onUserLeaveHint();
            }
        };
        this.pressedDrawable = new GradientDrawable[2];
        this.drawPressedDrawable = new boolean[2];
        this.pressedDrawableAlpha = new float[2];
        this.cropTransform = new CropTransform();
        this.leftCropTransform = new CropTransform();
        this.rightCropTransform = new CropTransform();
        this.shiftDp = -8.0f;
        this.bitmapPaint = new Paint(2);
        this.insets = new Rect();
        this.setLoadingRunnable = new Runnable() { // from class: org.telegram.ui.PhotoViewer.2
            {
                PhotoViewer.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (PhotoViewer.this.currentMessageObject == null) {
                    return;
                }
                FileLoader.getInstance(PhotoViewer.this.currentMessageObject.currentAccount).setLoadingVideo(PhotoViewer.this.currentMessageObject.getDocument(), true, false);
            }
        };
        this.hideActionBarRunnable = new Runnable() { // from class: org.telegram.ui.PhotoViewer.3
            {
                PhotoViewer.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (PhotoViewer.this.videoPlayerControlVisible && PhotoViewer.this.isPlaying && !ApplicationLoader.mainInterfacePaused) {
                    if (PhotoViewer.this.menuItem == null || !PhotoViewer.this.menuItem.isSubMenuShowing()) {
                        if (PhotoViewer.this.captionScrollView == null || PhotoViewer.this.captionScrollView.getScrollY() == 0) {
                            if (PhotoViewer.this.miniProgressView == null || PhotoViewer.this.miniProgressView.getVisibility() != 0) {
                                PhotoViewer photoViewer = PhotoViewer.PipInstance;
                                PhotoViewer photoViewer2 = PhotoViewer.this;
                                if (photoViewer == photoViewer2) {
                                    return;
                                }
                                photoViewer2.toggleActionBar(false, true);
                            }
                        }
                    }
                }
            }
        };
        this.savedVideoPositions = new ArrayMap<>();
        this.videoPlayerControlVisible = true;
        this.videoPlayerCurrentTime = new int[2];
        this.videoPlayerTotalTime = new int[2];
        this.fullscreenButton = new ImageView[3];
        this.pipPosition = new int[2];
        this.pipVideoOverlayAnimateFlag = true;
        this.lastImageId = -1;
        this.prevOrientation = -10;
        this.videoPlayerRewinder = new VideoPlayerRewinder() { // from class: org.telegram.ui.PhotoViewer.4
            {
                PhotoViewer.this = this;
            }

            @Override // org.telegram.messenger.video.VideoPlayerRewinder
            protected void onRewindCanceled() {
                PhotoViewer.this.onTouchEvent(MotionEvent.obtain(0L, 0L, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
                PhotoViewer.this.videoForwardDrawable.setShowing(false);
                PipVideoOverlay.onRewindCanceled();
            }

            @Override // org.telegram.messenger.video.VideoPlayerRewinder
            protected void updateRewindProgressUi(long j, float f, boolean z) {
                PhotoViewer.this.videoForwardDrawable.setTime(Math.abs(j));
                if (z) {
                    PhotoViewer.this.videoPlayerSeekbar.setProgress(f);
                    PhotoViewer.this.videoPlayerSeekbarView.invalidate();
                }
                PipVideoOverlay.onUpdateRewindProgressUi(j, f, z);
            }

            @Override // org.telegram.messenger.video.VideoPlayerRewinder
            protected void onRewindStart(boolean z) {
                PhotoViewer.this.videoForwardDrawable.setOneShootAnimation(false);
                PhotoViewer.this.videoForwardDrawable.setLeftSide(!z);
                PhotoViewer.this.videoForwardDrawable.setShowing(true);
                PhotoViewer.this.containerView.invalidate();
                PipVideoOverlay.onRewindStart(z);
            }
        };
        this.FLASH_VIEW_VALUE = new AnimationProperties.FloatProperty<View>("flashViewAlpha") { // from class: org.telegram.ui.PhotoViewer.5
            {
                PhotoViewer.this = this;
            }

            @Override // org.telegram.p042ui.Components.AnimationProperties.FloatProperty
            public void setValue(View view, float f) {
                view.setAlpha(f);
                if (PhotoViewer.this.photoCropView != null) {
                    PhotoViewer.this.photoCropView.setVideoThumbFlashAlpha(f);
                }
            }

            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(view.getAlpha());
            }
        };
        this.updateProgressRunnable = new RunnableC66586();
        this.switchToInlineRunnable = new Runnable() { // from class: org.telegram.ui.PhotoViewer.7
            {
                PhotoViewer.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!PipVideoOverlay.isVisible()) {
                    PhotoViewer.this.switchingInlineMode = false;
                    if (PhotoViewer.this.currentBitmap != null) {
                        PhotoViewer.this.currentBitmap.recycle();
                        PhotoViewer.this.currentBitmap = null;
                    }
                    PhotoViewer.this.changingTextureView = true;
                    TextureViewContainer textureViewContainer = new TextureViewContainer(PhotoViewer.this.parentActivity);
                    try {
                        if (PhotoViewer.this.usedSurfaceView) {
                            Drawable drawable = PhotoViewer.this.textureImageView.getDrawable();
                            if (drawable instanceof BitmapDrawable) {
                                PhotoViewer.this.currentBitmap = ((BitmapDrawable) drawable).getBitmap();
                            } else {
                                PhotoViewer photoViewer = PhotoViewer.this;
                                photoViewer.currentBitmap = Bitmaps.createBitmap(photoViewer.videoSurfaceView.getWidth(), PhotoViewer.this.videoSurfaceView.getHeight(), Bitmap.Config.ARGB_8888);
                                AndroidUtilities.getBitmapFromSurface(PhotoViewer.this.videoSurfaceView, PhotoViewer.this.currentBitmap);
                            }
                        } else {
                            PhotoViewer photoViewer2 = PhotoViewer.this;
                            photoViewer2.currentBitmap = Bitmaps.createBitmap(photoViewer2.videoTextureView.getWidth(), PhotoViewer.this.videoTextureView.getHeight(), Bitmap.Config.ARGB_8888);
                            PhotoViewer.this.videoTextureView.getBitmap(PhotoViewer.this.currentBitmap);
                        }
                    } catch (Throwable th) {
                        if (PhotoViewer.this.currentBitmap != null) {
                            PhotoViewer.this.currentBitmap.recycle();
                            PhotoViewer.this.currentBitmap = null;
                        }
                        FileLog.m97e(th);
                    }
                    if (PhotoViewer.this.currentBitmap != null) {
                        if (PhotoViewer.this.textureImageView != null) {
                            PhotoViewer.this.textureImageView.setVisibility(0);
                            PhotoViewer.this.textureImageView.setImageBitmap(PhotoViewer.this.currentBitmap);
                        }
                        textureViewContainer.imageReceiver.setImageBitmap(PhotoViewer.this.currentBitmap);
                    }
                    PhotoViewer.this.isInline = true;
                    PhotoViewer.this.changedTextureView = textureViewContainer.textureView;
                    if (PipVideoOverlay.show(false, PhotoViewer.this.parentActivity, textureViewContainer, PhotoViewer.this.videoWidth, PhotoViewer.this.videoHeight, PhotoViewer.this.pipVideoOverlayAnimateFlag)) {
                        PipVideoOverlay.setPhotoViewer(PhotoViewer.this);
                    }
                    PhotoViewer.this.pipVideoOverlayAnimateFlag = true;
                    if (PhotoViewer.this.usedSurfaceView) {
                        if (PhotoViewer.this.aspectRatioFrameLayout != null) {
                            PhotoViewer.this.aspectRatioFrameLayout.removeView(PhotoViewer.this.videoTextureView);
                            PhotoViewer.this.aspectRatioFrameLayout.removeView(PhotoViewer.this.videoSurfaceView);
                        }
                        PhotoViewer.this.videoPlayer.setSurfaceView(null);
                        PhotoViewer.this.videoPlayer.setTextureView(null);
                        PhotoViewer.this.videoPlayer.play();
                        PhotoViewer.this.videoPlayer.setTextureView(PhotoViewer.this.changedTextureView);
                        PhotoViewer.this.checkChangedTextureView(true);
                        PhotoViewer.this.changedTextureView.setVisibility(0);
                        return;
                    }
                    PhotoViewer.this.changedTextureView.setVisibility(4);
                    if (PhotoViewer.this.aspectRatioFrameLayout != null) {
                        PhotoViewer.this.aspectRatioFrameLayout.removeView(PhotoViewer.this.videoTextureView);
                        PhotoViewer.this.aspectRatioFrameLayout.removeView(PhotoViewer.this.videoSurfaceView);
                        return;
                    }
                    return;
                }
                PipVideoOverlay.dismiss();
                AndroidUtilities.runOnUIThread(this, 250L);
            }
        };
        this.surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: org.telegram.ui.PhotoViewer.8
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            }

            {
                PhotoViewer.this = this;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                if (PhotoViewer.this.videoTextureView != null && PhotoViewer.this.changingTextureView) {
                    if (PhotoViewer.this.switchingInlineMode) {
                        PhotoViewer.this.waitingForFirstTextureUpload = 2;
                    }
                    PhotoViewer.this.videoTextureView.setSurfaceTexture(surfaceTexture);
                    PhotoViewer.this.videoTextureView.setVisibility(0);
                    PhotoViewer.this.changingTextureView = false;
                    PhotoViewer.this.containerView.invalidate();
                    return false;
                }
                return true;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                if (PhotoViewer.this.waitingForFirstTextureUpload == 1) {
                    PhotoViewer.this.checkChangedTextureView(true);
                }
            }
        };
        this.animationValues = (float[][]) Array.newInstance(float.class, 2, 13);
        this.updateContainerFlagsRunnable = new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda65
            @Override // java.lang.Runnable
            public final void run() {
                PhotoViewer.this.lambda$new$7();
            }
        };
        this.leftImage = new ImageReceiver();
        this.centerImage = new ImageReceiver();
        this.rightImage = new ImageReceiver();
        this.leftBlur = new BlurringShader.ThumbBlurer(1, new PhotoViewer$$ExternalSyntheticLambda68(this));
        this.centerBlur = new BlurringShader.ThumbBlurer(1, new PhotoViewer$$ExternalSyntheticLambda68(this));
        this.rightBlur = new BlurringShader.ThumbBlurer(1, new PhotoViewer$$ExternalSyntheticLambda68(this));
        this.videoFrameBitmapPaint = new Paint();
        this.videoFrameBitmap = null;
        this.editState = new EditState();
        this.currentFileNames = new String[3];
        this.endReached = new boolean[]{false, true};
        this.scale = 1.0f;
        this.rotate = BitmapDescriptorFactory.HUE_RED;
        this.mirror = BitmapDescriptorFactory.HUE_RED;
        this.switchingToMode = -1;
        this.interpolator = new DecelerateInterpolator(1.5f);
        this.pinchStartScale = 1.0f;
        this.canZoom = true;
        this.canDragDown = true;
        this.shownControlsByEnd = false;
        this.actionBarWasShownBeforeByEnd = false;
        this.imagesArrTemp = new ArrayList<>();
        this.imagesByIdsTemp = new SparseArray[]{new SparseArray<>(), new SparseArray<>()};
        this.imagesArr = new ArrayList<>();
        this.imagesByIds = new SparseArray[]{new SparseArray<>(), new SparseArray<>()};
        this.imagesArrLocations = new ArrayList<>();
        this.imagesArrLocationsVideo = new ArrayList<>();
        this.imagesArrLocationsSizes = new ArrayList<>();
        this.imagesArrMessages = new ArrayList<>();
        this.secureDocuments = new ArrayList<>();
        this.avatarsArr = new ArrayList<>();
        this.imagesArrLocals = new ArrayList<>();
        this.currentAvatarLocation = null;
        this.savedState = null;
        this.hitRect = new Rect();
        this.transitionNotificationLocker = new AnimationNotificationsLocker(new int[]{NotificationCenter.dialogsNeedReload, NotificationCenter.closeChats, NotificationCenter.mediaCountDidLoad, NotificationCenter.mediaDidLoad, NotificationCenter.dialogPhotosLoaded});
        this.longPressRunnable = new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                PhotoViewer.this.onLongPress();
            }
        };
        this.tempInt = new int[2];
        this.captureFrameAtTime = -1L;
        this.captureFrameReadyAtTime = -1L;
        this.needCaptureFrameReadyAtTime = -1L;
        this.compressionsCount = -1;
        this.blurAlpha = new AnimatedFloat(new PhotoViewer$$ExternalSyntheticLambda68(this), 180L, CubicBezierInterpolator.EASE_OUT);
        this.blackPaint.setColor(-16777216);
        this.videoFrameBitmapPaint.setColor(-1);
        this.centerImage.setFileLoadingPriority(3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:822:0x05db, code lost:
        if (r1.get(r1.size() - 1).getDialogId() != r30.mergeDialogId) goto L355;
     */
    /* JADX WARN: Code restructure failed: missing block: B:836:0x061e, code lost:
        if (r30.imagesArrTemp.get(0).getDialogId() != r30.mergeDialogId) goto L355;
     */
    /* JADX WARN: Code restructure failed: missing block: B:837:0x0620, code lost:
        r1 = 1;
        r6 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void didReceivedNotification(int r31, int r32, java.lang.Object... r33) {
        /*
            Method dump skipped, instructions count: 2151
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.didReceivedNotification(int, int, java.lang.Object[]):void");
    }

    public void showDownloadAlert() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.parentActivity, this.resourcesProvider);
        builder.setTitle(LocaleController.getString("AppName", C3630R.string.AppName));
        builder.setPositiveButton(LocaleController.getString("OK", C3630R.string.OK), null);
        MessageObject messageObject = this.currentMessageObject;
        boolean z = false;
        if (messageObject != null && messageObject.isVideo() && FileLoader.getInstance(this.currentMessageObject.currentAccount).isLoadingFile(this.currentFileNames[0])) {
            z = true;
        }
        if (z) {
            builder.setMessage(LocaleController.getString("PleaseStreamDownload", C3630R.string.PleaseStreamDownload));
        } else {
            builder.setMessage(LocaleController.getString("PleaseDownload", C3630R.string.PleaseDownload));
        }
        showAlertDialog(builder);
    }

    public void onSharePressed(String str) {
        boolean z;
        if (this.parentActivity == null || !this.allowShare) {
            return;
        }
        try {
            MessageObject messageObject = this.currentMessageObject;
            boolean z2 = false;
            File file = null;
            if (messageObject != null) {
                z2 = messageObject.isVideo();
                if (!TextUtils.isEmpty(this.currentMessageObject.messageOwner.attachPath)) {
                    File file2 = new File(this.currentMessageObject.messageOwner.attachPath);
                    if (file2.exists()) {
                        file = file2;
                    }
                }
                if (file == null) {
                    file = FileLoader.getInstance(this.currentAccount).getPathToMessage(this.currentMessageObject.messageOwner);
                }
            } else if (this.currentFileLocationVideo != null) {
                FileLoader fileLoader = FileLoader.getInstance(this.currentAccount);
                TLRPC$FileLocation fileLocation = getFileLocation(this.currentFileLocationVideo);
                String fileLocationExt = getFileLocationExt(this.currentFileLocationVideo);
                if (this.avatarsDialogId == 0 && !this.isEvent) {
                    z = false;
                    file = fileLoader.getPathToAttach(fileLocation, fileLocationExt, z);
                }
                z = true;
                file = fileLoader.getPathToAttach(fileLocation, fileLocationExt, z);
            } else {
                PageBlocksAdapter pageBlocksAdapter = this.pageBlocksAdapter;
                if (pageBlocksAdapter != null) {
                    file = pageBlocksAdapter.getFile(this.currentIndex);
                }
            }
            if (file != null && !file.exists()) {
                file = new File(FileLoader.getDirectory(4), file.getName());
            }
            if (file != null && file.exists()) {
                Intent intent = new Intent("android.intent.action.SEND");
                if (z2) {
                    intent.setType(MimeTypes.VIDEO_MP4);
                } else {
                    MessageObject messageObject2 = this.currentMessageObject;
                    if (messageObject2 != null) {
                        intent.setType(messageObject2.getMimeType());
                    } else {
                        intent.setType(MimeTypes.IMAGE_JPEG);
                    }
                }
                if (Build.VERSION.SDK_INT >= 24) {
                    try {
                        intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(this.parentActivity, ApplicationLoader.getApplicationId() + ".provider", file));
                        intent.setFlags(1);
                    } catch (Exception unused) {
                        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
                    }
                } else {
                    intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
                }
                if (str != null) {
                    intent.setPackage(str);
                    this.parentActivity.startActivity(intent);
                    return;
                }
                this.parentActivity.startActivityForResult(Intent.createChooser(intent, LocaleController.getString("ShareFile", C3630R.string.ShareFile)), 500);
                return;
            }
            showDownloadAlert();
        } catch (Exception e) {
            FileLog.m97e(e);
        }
    }

    public void setScaleToFill() {
        float bitmapWidth = this.centerImage.getBitmapWidth();
        float bitmapHeight = this.centerImage.getBitmapHeight();
        if (bitmapWidth == BitmapDescriptorFactory.HUE_RED || bitmapHeight == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        float containerViewWidth = getContainerViewWidth();
        float containerViewHeight = getContainerViewHeight();
        float min = Math.min(containerViewHeight / bitmapHeight, containerViewWidth / bitmapWidth);
        float max = Math.max(containerViewWidth / ((int) (bitmapWidth * min)), containerViewHeight / ((int) (bitmapHeight * min)));
        this.scale = max;
        updateMinMax(max);
    }

    public void setParentAlert(ChatAttachAlert chatAttachAlert) {
        this.parentAlert = chatAttachAlert;
    }

    public void setParentActivity(Activity activity) {
        setParentActivity(activity, null, null);
    }

    public void setParentActivity(Activity activity, Theme.ResourcesProvider resourcesProvider) {
        setParentActivity(activity, null, resourcesProvider);
    }

    public void setParentActivity(BaseFragment baseFragment) {
        setParentActivity(baseFragment, (Theme.ResourcesProvider) null);
    }

    public void setParentActivity(BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
        setParentActivity(null, baseFragment, resourcesProvider);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v158 */
    /* JADX WARN: Type inference failed for: r1v167 */
    public void setParentActivity(Activity activity, BaseFragment baseFragment, final Theme.ResourcesProvider resourcesProvider) {
        int i;
        final Activity parentActivity = activity != null ? activity : baseFragment.getParentActivity();
        Theme.createChatResources(parentActivity, false);
        this.resourcesProvider = resourcesProvider;
        this.parentFragment = baseFragment;
        int i2 = UserConfig.selectedAccount;
        this.currentAccount = i2;
        this.centerImage.setCurrentAccount(i2);
        this.leftImage.setCurrentAccount(this.currentAccount);
        this.rightImage.setCurrentAccount(this.currentAccount);
        CaptionPhotoViewer captionPhotoViewer = this.captionEdit;
        if (captionPhotoViewer != null) {
            captionPhotoViewer.setAccount(this.currentAccount);
        }
        if (this.parentActivity == parentActivity || parentActivity == null) {
            updateColors();
            return;
        }
        this.inBubbleMode = parentActivity instanceof BubbleActivity;
        this.parentActivity = parentActivity;
        this.activityContext = new ContextThemeWrapper(this.parentActivity, C3630R.style.Theme_TMessages);
        this.touchSlop = ViewConfiguration.get(this.parentActivity).getScaledTouchSlop();
        if (progressDrawables == null) {
            progressDrawables = new Drawable[]{ContextCompat.getDrawable(this.parentActivity, C3630R.C3632drawable.circle_big), ContextCompat.getDrawable(this.parentActivity, C3630R.C3632drawable.cancel_big), ContextCompat.getDrawable(this.parentActivity, C3630R.C3632drawable.load_big)};
        }
        this.scroller = new Scroller(parentActivity);
        C660113 c660113 = new C660113(parentActivity);
        this.windowView = c660113;
        c660113.setBackgroundDrawable(this.backgroundDrawable);
        this.windowView.setFocusable(false);
        ClippingImageView clippingImageView = new ClippingImageView(parentActivity);
        this.animatingImageView = clippingImageView;
        clippingImageView.setAnimationValues(this.animationValues);
        this.windowView.addView(this.animatingImageView, LayoutHelper.createFrame(40, 40));
        FrameLayoutDrawer frameLayoutDrawer = new FrameLayoutDrawer(parentActivity, parentActivity) { // from class: org.telegram.ui.PhotoViewer.14
            private Bulletin.Delegate delegate = new Bulletin.Delegate() { // from class: org.telegram.ui.PhotoViewer.14.1
                @Override // org.telegram.p042ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean allowLayoutChanges() {
                    return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                }

                @Override // org.telegram.p042ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean clipWithGradient(int i3) {
                    return Bulletin.Delegate.CC.$default$clipWithGradient(this, i3);
                }

                @Override // org.telegram.p042ui.Components.Bulletin.Delegate
                public /* synthetic */ int getTopOffset(int i3) {
                    return Bulletin.Delegate.CC.$default$getTopOffset(this, i3);
                }

                @Override // org.telegram.p042ui.Components.Bulletin.Delegate
                public /* synthetic */ void onBottomOffsetChange(float f) {
                    Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
                }

                @Override // org.telegram.p042ui.Components.Bulletin.Delegate
                public /* synthetic */ void onHide(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onHide(this, bulletin);
                }

                @Override // org.telegram.p042ui.Components.Bulletin.Delegate
                public /* synthetic */ void onShow(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onShow(this, bulletin);
                }

                {
                    C660214.this = this;
                }

                @Override // org.telegram.p042ui.Components.Bulletin.Delegate
                public int getBottomOffset(int i3) {
                    if (PhotoViewer.this.captionEdit.editText.getVisibility() == 8) {
                        return 0;
                    }
                    return getHeight() - PhotoViewer.this.captionEdit.editText.getTop();
                }
            };

            {
                PhotoViewer.this = this;
            }

            @Override // org.telegram.p042ui.Components.SizeNotifierFrameLayout
            public int getBottomPadding() {
                return PhotoViewer.this.pickerView.getHeight();
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                PhotoViewer.this.textSelectionHelper.getOverlayView(getContext()).checkCancelAction(motionEvent);
                if (PhotoViewer.this.textSelectionHelper.isInSelectionMode()) {
                    PhotoViewer.this.textSelectionHelper.getOverlayView(getContext()).onTouchEvent(motionEvent);
                    return true;
                }
                return super.dispatchTouchEvent(motionEvent);
            }

            @Override // org.telegram.p042ui.PhotoViewer.FrameLayoutDrawer, org.telegram.p042ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                Bulletin.addDelegate(this, this.delegate);
            }

            @Override // org.telegram.p042ui.PhotoViewer.FrameLayoutDrawer, org.telegram.p042ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                Bulletin.removeDelegate(this);
            }

            @Override // org.telegram.p042ui.PhotoViewer.FrameLayoutDrawer, android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                if (view == PhotoViewer.this.textSelectionHelper.getOverlayView(PhotoViewer.this.windowView.getContext())) {
                    return false;
                }
                return super.drawChild(canvas, view, j);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p042ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                PhotoViewer.this.textSelectionHelper.getOverlayView(PhotoViewer.this.windowView.getContext()).draw(canvas);
            }
        };
        this.containerView = frameLayoutDrawer;
        frameLayoutDrawer.setFocusable(false);
        this.containerView.setClipChildren(true);
        this.containerView.setClipToPadding(true);
        this.windowView.setClipChildren(false);
        this.windowView.setClipToPadding(false);
        BlurringShader.BlurManager blurManager = new BlurringShader.BlurManager(this.containerView);
        this.blurManager = blurManager;
        blurManager.padding = 1;
        this.shadowBlurer = new BlurringShader.StoryBlurDrawer(blurManager, this.containerView, 6);
        this.windowView.addView(this.containerView, LayoutHelper.createFrame(-1, -1, 51));
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            this.containerView.setFitsSystemWindows(true);
            this.containerView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda26
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    WindowInsets lambda$setParentActivity$8;
                    lambda$setParentActivity$8 = PhotoViewer.this.lambda$setParentActivity$8(view, windowInsets);
                    return lambda$setParentActivity$8;
                }
            });
            this.containerView.setSystemUiVisibility(1792);
        }
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.windowLayoutParams = layoutParams;
        layoutParams.height = -1;
        layoutParams.format = -3;
        layoutParams.width = -1;
        layoutParams.gravity = 51;
        layoutParams.type = 99;
        if (i3 >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        if (i3 >= 21) {
            layoutParams.flags = -2147417856;
        }
        PaintingOverlay paintingOverlay = new PaintingOverlay(this.parentActivity);
        this.paintingOverlay = paintingOverlay;
        this.containerView.addView(paintingOverlay, LayoutHelper.createFrame(-2, -2));
        PaintingOverlay paintingOverlay2 = new PaintingOverlay(this.parentActivity);
        this.leftPaintingOverlay = paintingOverlay2;
        this.containerView.addView(paintingOverlay2, LayoutHelper.createFrame(-2, -2));
        PaintingOverlay paintingOverlay3 = new PaintingOverlay(this.parentActivity);
        this.rightPaintingOverlay = paintingOverlay3;
        this.containerView.addView(paintingOverlay3, LayoutHelper.createFrame(-2, -2));
        C3702ActionBar c3702ActionBar = new C3702ActionBar(parentActivity) { // from class: org.telegram.ui.PhotoViewer.15
            {
                PhotoViewer.this = this;
            }

            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                PhotoViewer.this.containerView.invalidate();
            }
        };
        this.actionBar = c3702ActionBar;
        c3702ActionBar.setOverlayTitleAnimation(true);
        this.actionBar.setTitleColor(-1);
        this.actionBar.setSubtitleColor(-1);
        this.actionBar.setBackgroundColor(2130706432);
        this.actionBar.setOccupyStatusBar(isStatusBarVisible());
        this.actionBar.setItemsBackgroundColor(1090519039, false);
        this.actionBar.setBackButtonImage(C3630R.C3632drawable.ic_ab_back);
        PhotoViewerActionBarContainer photoViewerActionBarContainer = new PhotoViewerActionBarContainer(parentActivity);
        this.actionBarContainer = photoViewerActionBarContainer;
        this.actionBar.addView(photoViewerActionBarContainer, LayoutHelper.createFrame(-1, -1, 119));
        this.containerView.addView(this.actionBar, LayoutHelper.createFrame(-1, -2));
        PhotoCountView photoCountView = new PhotoCountView(parentActivity);
        this.countView = photoCountView;
        this.containerView.addView(photoCountView, LayoutHelper.createFrame(-1, -2, 55));
        this.actionBar.setActionBarMenuOnItemClick(new C660516(resourcesProvider));
        ActionBarMenu createMenu = this.actionBar.createMenu();
        this.menu = createMenu;
        createMenu.setOnLayoutListener(new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda71
            @Override // java.lang.Runnable
            public final void run() {
                PhotoViewer.this.updateActionBarTitlePadding();
            }
        });
        ActionBarMenuItem addItem = this.menu.addItem(13, C3630R.C3632drawable.msg_mask);
        this.masksItem = addItem;
        addItem.setContentDescription(LocaleController.getString("Masks", C3630R.string.Masks));
        ActionBarMenuItem addItem2 = this.menu.addItem(5, C3630R.C3632drawable.ic_goinline);
        this.pipItem = addItem2;
        addItem2.setContentDescription(LocaleController.getString("AccDescrPipMode", C3630R.string.AccDescrPipMode));
        ActionBarMenuItem addItem3 = this.menu.addItem(20, C3630R.C3632drawable.msg_header_draw);
        this.editItem = addItem3;
        addItem3.setContentDescription(LocaleController.getString("AccDescrPhotoEditor", C3630R.string.AccDescrPhotoEditor));
        ActionBarMenuItem addItem4 = this.menu.addItem(IdFabric$Menu.MESSAGE_SAVE_CLOUD, C3630R.C3632drawable.fork_forward_cloud);
        this.forwardCloudItem = addItem4;
        addItem4.setContentDescription(LocaleController.getInternalString(C3630R.string.chat_message_popup_option_forward_cloud));
        ActionBarMenuItem addItem5 = this.menu.addItem(3, C3630R.C3632drawable.msg_header_share);
        this.sendItem = addItem5;
        addItem5.setContentDescription(LocaleController.getString("Forward", C3630R.string.Forward));
        ActionBarMenu actionBarMenu = this.menu;
        OptionsSpeedIconDrawable optionsSpeedIconDrawable = new OptionsSpeedIconDrawable();
        this.menuItemIcon = optionsSpeedIconDrawable;
        ActionBarMenuItem addItem6 = actionBarMenu.addItem(0, optionsSpeedIconDrawable);
        this.menuItem = addItem6;
        addItem6.setOnMenuDismiss(new Utilities.Callback() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda89
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PhotoViewer.this.lambda$setParentActivity$9((Boolean) obj);
            }
        });
        this.menuItem.getPopupLayout().swipeBackGravityRight = true;
        this.chooseSpeedLayout = new ChooseSpeedLayout(this.activityContext, this.menuItem.getPopupLayout().getSwipeBack(), new ChooseSpeedLayout.Callback() { // from class: org.telegram.ui.PhotoViewer.17
            {
                PhotoViewer.this = this;
            }

            @Override // org.telegram.p042ui.ChooseSpeedLayout.Callback
            public void onSpeedSelected(float f, boolean z, boolean z2) {
                if (f != PhotoViewer.this.currentVideoSpeed) {
                    PhotoViewer.this.currentVideoSpeed = f;
                    if (PhotoViewer.this.currentMessageObject != null) {
                        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("playback_speed", 0);
                        if (Math.abs(PhotoViewer.this.currentVideoSpeed - 1.0f) < 0.001f) {
                            SharedPreferences.Editor edit = sharedPreferences.edit();
                            edit.remove("speed" + PhotoViewer.this.currentMessageObject.getDialogId() + "_" + PhotoViewer.this.currentMessageObject.getId()).commit();
                        } else {
                            SharedPreferences.Editor edit2 = sharedPreferences.edit();
                            edit2.putFloat("speed" + PhotoViewer.this.currentMessageObject.getDialogId() + "_" + PhotoViewer.this.currentMessageObject.getId(), PhotoViewer.this.currentVideoSpeed).commit();
                        }
                    }
                    if (PhotoViewer.this.videoPlayer != null) {
                        PhotoViewer.this.videoPlayer.setPlaybackSpeed(PhotoViewer.this.currentVideoSpeed);
                    }
                    if (PhotoViewer.this.photoViewerWebView != null) {
                        PhotoViewer.this.photoViewerWebView.setPlaybackSpeed(PhotoViewer.this.currentVideoSpeed);
                    }
                }
                PhotoViewer.this.setMenuItemIcon(true, z);
                if (z2) {
                    PhotoViewer.this.menuItem.toggleSubMenu();
                }
            }
        });
        this.speedItem = this.menuItem.addSwipeBackItem(C3630R.C3632drawable.msg_speed, null, LocaleController.getString(RtspHeaders.SPEED, C3630R.string.Speed), this.chooseSpeedLayout.speedSwipeBackLayout);
        this.menuItem.getPopupLayout().setSwipeBackForegroundColor(-14540254);
        this.speedItem.setSubtext(LocaleController.getString("SpeedNormal", C3630R.string.SpeedNormal));
        this.speedItem.setColors(-328966, -328966);
        ActionBarPopupWindow.GapView addColoredGap = this.menuItem.addColoredGap();
        this.speedGap = addColoredGap;
        addColoredGap.setColor(-15198184);
        this.menuItem.getPopupLayout().setFitItems(true);
        this.menuItem.addSubItem(11, C3630R.C3632drawable.msg_openin, LocaleController.getString("OpenInExternalApp", C3630R.string.OpenInExternalApp)).setColors(-328966, -328966);
        this.menuItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3630R.string.AccDescrMoreOptions));
        ActionBarMenuSubItem addSubItem = this.menuItem.addSubItem(2, C3630R.C3632drawable.msg_media, LocaleController.getString("ShowAllMedia", C3630R.string.ShowAllMedia));
        this.allMediaItem = addSubItem;
        addSubItem.setColors(-328966, -328966);
        this.menuItem.addSubItem(14, C3630R.C3632drawable.msg_gif, LocaleController.getString("SaveToGIFs", C3630R.string.SaveToGIFs)).setColors(-328966, -328966);
        this.menuItem.addSubItem(4, C3630R.C3632drawable.msg_message, LocaleController.getString("ShowInChat", C3630R.string.ShowInChat)).setColors(-328966, -328966);
        this.menuItem.addSubItem(15, C3630R.C3632drawable.msg_sticker, LocaleController.getString("ShowStickers", C3630R.string.ShowStickers)).setColors(-328966, -328966);
        this.menuItem.addSubItem(10, C3630R.C3632drawable.msg_shareout, LocaleController.getString("ShareFile", C3630R.string.ShareFile)).setColors(-328966, -328966);
        this.menuItem.addSubItem(1, C3630R.C3632drawable.msg_gallery, LocaleController.getString("SaveToGallery", C3630R.string.SaveToGallery)).setColors(-328966, -328966);
        this.menuItem.addSubItem(16, C3630R.C3632drawable.msg_openprofile, LocaleController.getString("SetAsMain", C3630R.string.SetAsMain)).setColors(-328966, -328966);
        ActionBarMenuItem actionBarMenuItem = this.menuItem;
        int i4 = C3630R.C3632drawable.msg_translate;
        actionBarMenuItem.addSubItem(21, i4, LocaleController.getString(C3630R.string.TranslateMessage)).setColors(-328966, -328966);
        this.menuItem.addSubItem(22, i4, LocaleController.getString(C3630R.string.HideTranslation)).setColors(-328966, -328966);
        int textColor = this.speedItem.getTextColor();
        this.menuItem.addSubItem(IdFabric$Menu.PHOTO_COPY, C3630R.C3632drawable.msg_copy, LocaleController.getInternalString(C3630R.string.photo_viewer_image_copy)).setColors(textColor, textColor);
        this.menuItem.addSubItem(IdFabric$Menu.PHOTO_TEXT, C3630R.C3632drawable.fork_photo_text, LocaleController.getInternalString(C3630R.string.photo_viewer_open_recognize_text)).setColors(textColor, textColor);
        this.menuItem.addSubItem(IdFabric$Menu.PHOTO_OBJECTS, C3630R.C3632drawable.fork_photo_objects, LocaleController.getInternalString(C3630R.string.photo_viewer_open_recognize_photo)).setColors(textColor, textColor);
        ActionBarMenuItem actionBarMenuItem2 = this.menuItem;
        int i5 = IdFabric$Menu.MESSAGE_FORWARD_WHATSAPP;
        int i6 = C3630R.C3632drawable.msg_forward;
        actionBarMenuItem2.addSubItem(i5, i6, LocaleController.getInternalString(C3630R.string.chat_message_popup_option_forward_whatsapp)).setColors(textColor, textColor);
        this.menuItem.addSubItem(IdFabric$Menu.MESSAGE_FORWARD_WHATSAPP_BUSINESS, i6, LocaleController.getInternalString(C3630R.string.chat_message_popup_option_forward_whatsapp_business)).setColors(textColor, textColor);
        this.menuItem.addSubItem(IdFabric$Menu.MESSAGE_FORWARD_VIBER, i6, LocaleController.getInternalString(C3630R.string.chat_message_popup_option_forward_viber)).setColors(textColor, textColor);
        this.menuItem.addSubItem(IdFabric$Menu.TRANSLATE, i4, LocaleController.getInternalString(C3630R.string.chat_long_action_translate)).setColors(textColor, textColor);
        this.menuItem.addSubItem(IdFabric$Menu.MESSAGE_DELETE_FROM_CACHE, C3630R.C3632drawable.msg_clear, LocaleController.getString("ClearHistoryCache", C3630R.string.ClearHistoryCache)).setColors(textColor, textColor);
        this.menuItem.addSubItem(6, C3630R.C3632drawable.msg_delete, LocaleController.getString("Delete", C3630R.string.Delete)).setColors(-328966, -328966);
        this.menuItem.addSubItem(7, C3630R.C3632drawable.msg_cancel, LocaleController.getString("StopDownload", C3630R.string.StopDownload)).setColors(-328966, -328966);
        this.menuItem.redrawPopup(-115203550);
        this.menuItem.hideSubItem(21);
        this.menuItem.hideSubItem(22);
        setMenuItemIcon(false, true);
        this.menuItem.setPopupItemsSelectorColor(268435455);
        this.menuItem.setSubMenuDelegate(new ActionBarMenuItem.ActionBarSubMenuItemDelegate() { // from class: org.telegram.ui.PhotoViewer.18
            {
                PhotoViewer.this = this;
            }

            @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarSubMenuItemDelegate
            public void onShowSubMenu() {
                if (PhotoViewer.this.videoPlayerControlVisible && PhotoViewer.this.isPlaying) {
                    AndroidUtilities.cancelRunOnUIThread(PhotoViewer.this.hideActionBarRunnable);
                }
            }

            @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarSubMenuItemDelegate
            public void onHideSubMenu() {
                if (PhotoViewer.this.videoPlayerControlVisible && PhotoViewer.this.isPlaying) {
                    PhotoViewer.this.scheduleActionBarHide();
                }
            }
        });
        FrameLayout frameLayout = new FrameLayout(this, this.activityContext) { // from class: org.telegram.ui.PhotoViewer.19
            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
            }
        };
        this.bottomLayout = frameLayout;
        frameLayout.setBackgroundColor(2130706432);
        this.containerView.addView(this.bottomLayout, LayoutHelper.createFrame(-1, 48, 83));
        View view = new View(this.activityContext);
        this.navigationBar = view;
        view.setBackgroundColor(2130706432);
        this.windowView.addView(this.navigationBar, LayoutHelper.createFrame(-1.0f, this.navigationBarHeight / AndroidUtilities.density, 87));
        this.pressedDrawable[0] = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{838860800, 0});
        this.pressedDrawable[0].setShape(0);
        this.pressedDrawable[1] = new GradientDrawable(GradientDrawable.Orientation.RIGHT_LEFT, new int[]{838860800, 0});
        this.pressedDrawable[1].setShape(0);
        GroupedPhotosListView groupedPhotosListView = new GroupedPhotosListView(this.activityContext, AndroidUtilities.m102dp(10));
        this.groupedPhotosListView = groupedPhotosListView;
        this.containerView.addView(groupedPhotosListView, LayoutHelper.createFrame(-1, 68, 83));
        this.groupedPhotosListView.setDelegate(new GroupedPhotosListView.GroupedPhotosListViewDelegate() { // from class: org.telegram.ui.PhotoViewer.20
            {
                PhotoViewer.this = this;
            }

            @Override // org.telegram.p042ui.Components.GroupedPhotosListView.GroupedPhotosListViewDelegate
            public int getCurrentIndex() {
                return PhotoViewer.this.currentIndex;
            }

            @Override // org.telegram.p042ui.Components.GroupedPhotosListView.GroupedPhotosListViewDelegate
            public int getCurrentAccount() {
                return PhotoViewer.this.currentAccount;
            }

            @Override // org.telegram.p042ui.Components.GroupedPhotosListView.GroupedPhotosListViewDelegate
            public long getAvatarsDialogId() {
                return PhotoViewer.this.avatarsDialogId;
            }

            @Override // org.telegram.p042ui.Components.GroupedPhotosListView.GroupedPhotosListViewDelegate
            public int getSlideshowMessageId() {
                return PhotoViewer.this.slideshowMessageId;
            }

            @Override // org.telegram.p042ui.Components.GroupedPhotosListView.GroupedPhotosListViewDelegate
            public ArrayList<ImageLocation> getImagesArrLocations() {
                return PhotoViewer.this.imagesArrLocations;
            }

            @Override // org.telegram.p042ui.Components.GroupedPhotosListView.GroupedPhotosListViewDelegate
            public ArrayList<MessageObject> getImagesArr() {
                return PhotoViewer.this.imagesArr;
            }

            @Override // org.telegram.p042ui.Components.GroupedPhotosListView.GroupedPhotosListViewDelegate
            public List<TLRPC$PageBlock> getPageBlockArr() {
                if (PhotoViewer.this.pageBlocksAdapter != null) {
                    return PhotoViewer.this.pageBlocksAdapter.getAll();
                }
                return null;
            }

            @Override // org.telegram.p042ui.Components.GroupedPhotosListView.GroupedPhotosListViewDelegate
            public Object getParentObject() {
                if (PhotoViewer.this.pageBlocksAdapter != null) {
                    return PhotoViewer.this.pageBlocksAdapter.getParentObject();
                }
                return null;
            }

            @Override // org.telegram.p042ui.Components.GroupedPhotosListView.GroupedPhotosListViewDelegate
            public void setCurrentIndex(int i7) {
                PhotoViewer.this.currentIndex = -1;
                if (PhotoViewer.this.currentThumb != null) {
                    PhotoViewer.this.currentThumb.release();
                    PhotoViewer.this.currentThumb = null;
                }
                PhotoViewer.this.dontAutoPlay = true;
                PhotoViewer.this.setImageIndex(i7);
                PhotoViewer.this.dontAutoPlay = false;
            }

            @Override // org.telegram.p042ui.Components.GroupedPhotosListView.GroupedPhotosListViewDelegate
            public void onShowAnimationStart() {
                PhotoViewer.this.containerView.requestLayout();
            }

            @Override // org.telegram.p042ui.Components.GroupedPhotosListView.GroupedPhotosListViewDelegate
            public void onStopScrolling() {
                PhotoViewer photoViewer = PhotoViewer.this;
                if (photoViewer.shouldMessageObjectAutoPlayed(photoViewer.currentMessageObject)) {
                    PhotoViewer.this.playerAutoStarted = true;
                    PhotoViewer.this.onActionClick(true);
                    PhotoViewer.this.checkProgress(0, false, true);
                }
            }
        });
        for (int i7 = 0; i7 < 3; i7++) {
            this.fullscreenButton[i7] = new ImageView(this.parentActivity);
            this.fullscreenButton[i7].setImageResource(C3630R.C3632drawable.msg_maxvideo);
            this.fullscreenButton[i7].setContentDescription(LocaleController.getString("AccSwitchToFullscreen", C3630R.string.AccSwitchToFullscreen));
            this.fullscreenButton[i7].setScaleType(ImageView.ScaleType.CENTER);
            this.fullscreenButton[i7].setBackground(Theme.createSelectorDrawable(1090519039));
            this.fullscreenButton[i7].setVisibility(4);
            this.fullscreenButton[i7].setAlpha(1.0f);
            this.containerView.addView(this.fullscreenButton[i7], LayoutHelper.createFrame(48, 48));
            this.fullscreenButton[i7].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda42
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PhotoViewer.this.lambda$setParentActivity$10(view2);
                }
            });
        }
        this.textSelectionHelper = new TextSelectionHelper.SimpleTextSelectionHelper(this, null, new DarkThemeResourceProvider()) { // from class: org.telegram.ui.PhotoViewer.21
            @Override // org.telegram.p042ui.Cells.TextSelectionHelper
            public int getParentBottomPadding() {
                return 0;
            }
        };
        CaptionTextViewSwitcher captionTextViewSwitcher = new CaptionTextViewSwitcher(this.containerView.getContext());
        this.captionTextViewSwitcher = captionTextViewSwitcher;
        captionTextViewSwitcher.setFactory(new ViewSwitcher.ViewFactory() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda52
            @Override // android.widget.ViewSwitcher.ViewFactory
            public final View makeView() {
                View lambda$setParentActivity$11;
                lambda$setParentActivity$11 = PhotoViewer.this.lambda$setParentActivity$11();
                return lambda$setParentActivity$11;
            }
        });
        this.captionTextViewSwitcher.setVisibility(4);
        setCaptionHwLayerEnabled(true);
        int i8 = 0;
        for (int i9 = 3; i8 < i9; i9 = 3) {
            this.photoProgressViews[i8] = new PhotoProgressView(this.containerView) { // from class: org.telegram.ui.PhotoViewer.22
                {
                    PhotoViewer.this = this;
                }

                @Override // org.telegram.p042ui.PhotoViewer.PhotoProgressView
                protected void onBackgroundStateUpdated(int i10) {
                    if (this == PhotoViewer.this.photoProgressViews[0]) {
                        PhotoViewer.this.updateAccessibilityOverlayVisibility();
                    }
                }

                @Override // org.telegram.p042ui.PhotoViewer.PhotoProgressView
                protected void onVisibilityChanged(boolean z) {
                    if (this == PhotoViewer.this.photoProgressViews[0]) {
                        PhotoViewer.this.updateAccessibilityOverlayVisibility();
                    }
                }
            };
            this.photoProgressViews[i8].setBackgroundState(0, false, true);
            i8++;
        }
        RadialProgressView radialProgressView = new RadialProgressView(this.activityContext, resourcesProvider) { // from class: org.telegram.ui.PhotoViewer.23
            {
                PhotoViewer.this = this;
            }

            @Override // org.telegram.p042ui.Components.RadialProgressView, android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                if (PhotoViewer.this.containerView != null) {
                    PhotoViewer.this.containerView.invalidate();
                }
            }

            @Override // android.view.View
            public void invalidate() {
                super.invalidate();
                if (PhotoViewer.this.containerView != null) {
                    PhotoViewer.this.containerView.invalidate();
                }
            }
        };
        this.miniProgressView = radialProgressView;
        radialProgressView.setUseSelfAlpha(true);
        this.miniProgressView.setProgressColor(-1);
        this.miniProgressView.setSize(AndroidUtilities.m102dp(54));
        RadialProgressView radialProgressView2 = this.miniProgressView;
        int i10 = C3630R.C3632drawable.circle_big;
        radialProgressView2.setBackgroundResource(i10);
        this.miniProgressView.setVisibility(4);
        this.miniProgressView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.containerView.addView(this.miniProgressView, LayoutHelper.createFrame(64, 64, 17));
        createVideoControlsInterface();
        RadialProgressView radialProgressView3 = new RadialProgressView(this.parentActivity, resourcesProvider);
        this.progressView = radialProgressView3;
        radialProgressView3.setProgressColor(-1);
        this.progressView.setBackgroundResource(i10);
        this.progressView.setVisibility(4);
        this.containerView.addView(this.progressView, LayoutHelper.createFrame(54, 54, 17));
        PickerBottomLayoutViewer pickerBottomLayoutViewer = new PickerBottomLayoutViewer(this.parentActivity);
        this.qualityPicker = pickerBottomLayoutViewer;
        pickerBottomLayoutViewer.setBackgroundColor(2130706432);
        this.qualityPicker.updateSelectedCount(0, false);
        this.qualityPicker.setTranslationY(AndroidUtilities.m102dp(120));
        this.qualityPicker.doneButton.setText(LocaleController.getString("Done", C3630R.string.Done).toUpperCase());
        TextView textView = this.qualityPicker.doneButton;
        int i11 = Theme.key_dialogFloatingButton;
        textView.setTextColor(getThemedColor(i11));
        this.containerView.addView(this.qualityPicker, LayoutHelper.createFrame(-1, 48, 83));
        this.qualityPicker.cancelButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda38
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$12(view2);
            }
        });
        this.qualityPicker.doneButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda41
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$13(view2);
            }
        });
        VideoForwardDrawable videoForwardDrawable = new VideoForwardDrawable(false);
        this.videoForwardDrawable = videoForwardDrawable;
        videoForwardDrawable.setDelegate(new VideoForwardDrawable.VideoForwardDrawableDelegate() { // from class: org.telegram.ui.PhotoViewer.24
            @Override // org.telegram.p042ui.Components.VideoForwardDrawable.VideoForwardDrawableDelegate
            public void onAnimationEnd() {
            }

            {
                PhotoViewer.this = this;
            }

            @Override // org.telegram.p042ui.Components.VideoForwardDrawable.VideoForwardDrawableDelegate
            public void invalidate() {
                PhotoViewer.this.containerView.invalidate();
            }
        });
        QualityChooseView qualityChooseView = new QualityChooseView(this.parentActivity);
        this.qualityChooseView = qualityChooseView;
        qualityChooseView.setTranslationY(AndroidUtilities.m102dp(120));
        this.qualityChooseView.setVisibility(4);
        this.qualityChooseView.setBackgroundColor(2130706432);
        this.containerView.addView(this.qualityChooseView, LayoutHelper.createFrame(-1, 70, 83, 0, 0, 0, 48));
        new Paint().setColor(2130706432);
        FrameLayout frameLayout2 = new FrameLayout(this.activityContext) { // from class: org.telegram.ui.PhotoViewer.25
            private final Paint bgPaint = new Paint(3);
            private final LinearGradient bgGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 16.0f, new int[]{0, 2130706432}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
            private final Matrix bgMatrix = new Matrix();

            {
                PhotoViewer.this = this;
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                if (!PhotoViewer.this.fancyShadows) {
                    int measuredHeight = PhotoViewer.this.doneButtonFullWidth.getVisibility() == 0 ? getMeasuredHeight() - AndroidUtilities.m102dp(48) : 0;
                    if (PhotoViewer.this.sendPhotoType == 0 || PhotoViewer.this.sendPhotoType == 2 || PhotoViewer.this.sendPhotoType == -1) {
                        this.bgMatrix.reset();
                        this.bgMatrix.postTranslate(BitmapDescriptorFactory.HUE_RED, measuredHeight);
                        this.bgMatrix.postScale(1.0f, Math.min(AndroidUtilities.m102dp(40), getMeasuredHeight() - measuredHeight) / 16.0f);
                        this.bgGradient.setLocalMatrix(this.bgMatrix);
                        this.bgPaint.setShader(this.bgGradient);
                    } else {
                        this.bgPaint.setShader(null);
                        this.bgPaint.setColor(2130706432);
                    }
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, measuredHeight, getMeasuredWidth(), getMeasuredHeight(), this.bgPaint);
                }
                super.dispatchDraw(canvas);
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i12, int i13) {
                ((FrameLayout.LayoutParams) PhotoViewer.this.itemsLayout.getLayoutParams()).rightMargin = PhotoViewer.this.pickerViewSendButton.getVisibility() == 0 ? AndroidUtilities.m102dp(70) : 0;
                super.onMeasure(i12, i13);
            }

            @Override // android.view.View
            public void setTranslationY(float f) {
                super.setTranslationY(f);
                if (PhotoViewer.this.videoTimelineViewContainer != null && PhotoViewer.this.videoTimelineViewContainer.getVisibility() != 8) {
                    PhotoViewer.this.videoTimelineViewContainer.setTranslationY(f - Math.max(0, PhotoViewer.this.captionEdit.getEditTextHeight() - AndroidUtilities.m102dp(46)));
                }
                if (PhotoViewer.this.captionEditContainer != null) {
                    PhotoViewer.this.captionEditContainer.setTranslationY(f);
                }
                if (PhotoViewer.this.videoAvatarTooltip == null || PhotoViewer.this.videoAvatarTooltip.getVisibility() == 8) {
                    return;
                }
                PhotoViewer.this.videoAvatarTooltip.setTranslationY(f);
            }

            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                if (PhotoViewer.this.videoTimelineViewContainer != null && PhotoViewer.this.videoTimelineViewContainer.getVisibility() != 8) {
                    PhotoViewer.this.videoTimelineViewContainer.setAlpha(f);
                }
                if (PhotoViewer.this.captionEdit == null || PhotoViewer.this.captionEdit.getVisibility() == 8) {
                    return;
                }
                PhotoViewer.this.captionEdit.setAlpha(f);
            }

            @Override // android.view.View
            public void setVisibility(int i12) {
                super.setVisibility(i12);
                if (PhotoViewer.this.videoTimelineViewContainer == null || PhotoViewer.this.videoTimelineViewContainer.getVisibility() == 8) {
                    return;
                }
                PhotoViewer.this.videoTimelineViewContainer.setVisibility(i12 == 0 ? 0 : 4);
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i12, int i13, int i14, int i15) {
                super.onLayout(z, i12, i13, i14, i15);
                if (PhotoViewer.this.itemsLayout.getVisibility() != 8) {
                    int m102dp = (((i14 - i12) - (PhotoViewer.this.pickerViewSendButton.getVisibility() == 0 ? AndroidUtilities.m102dp(70) : 0)) - PhotoViewer.this.itemsLayout.getMeasuredWidth()) / 2;
                    PhotoViewer.this.itemsLayout.layout(m102dp, PhotoViewer.this.itemsLayout.getTop(), PhotoViewer.this.itemsLayout.getMeasuredWidth() + m102dp, PhotoViewer.this.itemsLayout.getTop() + PhotoViewer.this.itemsLayout.getMeasuredHeight());
                }
            }
        };
        this.pickerView = frameLayout2;
        this.containerView.addView(frameLayout2, LayoutHelper.createFrame(-1, -2, 83));
        TextView textView2 = new TextView(this.containerView.getContext());
        this.docNameTextView = textView2;
        textView2.setTextSize(1, 15.0f);
        this.docNameTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.docNameTextView.setSingleLine(true);
        this.docNameTextView.setMaxLines(1);
        this.docNameTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.docNameTextView.setTextColor(-1);
        this.docNameTextView.setGravity(3);
        this.pickerView.addView(this.docNameTextView, LayoutHelper.createFrame(-1, -2, 51, 20, 23, 84, 0));
        TextView textView3 = new TextView(this.containerView.getContext());
        this.docInfoTextView = textView3;
        textView3.setTextSize(1, 14.0f);
        this.docInfoTextView.setSingleLine(true);
        this.docInfoTextView.setMaxLines(1);
        this.docInfoTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.docInfoTextView.setTextColor(-1);
        this.docInfoTextView.setGravity(3);
        this.pickerView.addView(this.docInfoTextView, LayoutHelper.createFrame(-1, -2, 51, 20, 46, 84, 0));
        TextView textView4 = new TextView(this.containerView.getContext());
        this.doneButtonFullWidth = textView4;
        int i12 = Theme.key_featuredStickers_addButton;
        textView4.setBackground(Theme.AdaptiveRipple.filledRect(getThemedColor(i12), 6.0f));
        TextView textView5 = this.doneButtonFullWidth;
        int i13 = Theme.key_featuredStickers_buttonText;
        textView5.setTextColor(getThemedColor(i13));
        this.doneButtonFullWidth.setEllipsize(TextUtils.TruncateAt.END);
        this.doneButtonFullWidth.setGravity(17);
        this.doneButtonFullWidth.setLines(1);
        this.doneButtonFullWidth.setSingleLine(true);
        this.doneButtonFullWidth.setText(LocaleController.getString("SetAsMyPhoto", C3630R.string.SetAsMyPhoto));
        this.doneButtonFullWidth.setTextSize(1, 15.0f);
        this.doneButtonFullWidth.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.doneButtonFullWidth.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda37
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$14(view2);
            }
        });
        this.doneButtonFullWidth.setVisibility(8);
        this.pickerView.addView(this.doneButtonFullWidth, LayoutHelper.createFrame(-1, 48, 51, 20, 0, 20, 64));
        VideoTimelinePlayView videoTimelinePlayView = new VideoTimelinePlayView(this.parentActivity) { // from class: org.telegram.ui.PhotoViewer.26
            private final BlurringShader.StoryBlurDrawer blur;

            @Override // org.telegram.p042ui.Components.VideoTimelinePlayView
            protected boolean customBlur() {
                return true;
            }

            {
                PhotoViewer.this = this;
                new Path();
                this.blur = new BlurringShader.StoryBlurDrawer(this.blurManager, this, 0);
            }

            @Override // android.view.View
            public void setTranslationY(float f) {
                if (getTranslationY() != f) {
                    super.setTranslationY(f);
                    PhotoViewer.this.containerView.invalidate();
                }
            }

            @Override // org.telegram.p042ui.Components.VideoTimelinePlayView
            protected void drawBlur(Canvas canvas, RectF rectF) {
                canvas.save();
                canvas.clipRect(rectF);
                canvas.translate((-getX()) - PhotoViewer.this.videoTimelineViewContainer.getX(), (-getY()) - PhotoViewer.this.videoTimelineViewContainer.getY());
                PhotoViewer.this.drawCaptionBlur(canvas, this.blur, -14803426, AndroidUtilities.DARK_STATUS_BAR_OVERLAY, false, true, false);
                canvas.restore();
            }

            @Override // android.view.View
            public void invalidate() {
                if (SharedConfig.photoViewerBlur && (PhotoViewer.this.animationInProgress == 1 || PhotoViewer.this.animationInProgress == 2 || PhotoViewer.this.animationInProgress == 3)) {
                    return;
                }
                super.invalidate();
            }
        };
        this.videoTimelineView = videoTimelinePlayView;
        videoTimelinePlayView.setDelegate(new C661827());
        FrameLayout frameLayout3 = new FrameLayout(this.parentActivity);
        this.videoTimelineViewContainer = frameLayout3;
        frameLayout3.setClipChildren(false);
        this.videoTimelineViewContainer.addView(this.videoTimelineView, LayoutHelper.createFrame(-1, 54, 83));
        showVideoTimeline(false, false);
        this.containerView.addView(this.videoTimelineViewContainer, LayoutHelper.createFrame(-1, 54, 83, 0, 8, 0, 0));
        Context context = this.containerView.getContext();
        FrameLayout frameLayout4 = this.windowView;
        FrameLayoutDrawer frameLayoutDrawer2 = this.containerView;
        CaptionPhotoViewer captionPhotoViewer2 = new CaptionPhotoViewer(context, frameLayout4, frameLayoutDrawer2, frameLayoutDrawer2, resourcesProvider, this.blurManager, new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda64
            @Override // java.lang.Runnable
            public final void run() {
                PhotoViewer.this.applyCaption();
            }
        }) { // from class: org.telegram.ui.PhotoViewer.28
            private final Path path = new Path();

            @Override // org.telegram.p042ui.Stories.recorder.CaptionContainerView
            protected boolean customBlur() {
                return true;
            }

            {
                PhotoViewer.this = this;
            }

            @Override // org.telegram.p042ui.Stories.recorder.CaptionContainerView
            protected boolean ignoreTouches() {
                return (this.keyboardShown || PhotoViewer.this.currentEditMode == 0) ? false : true;
            }

            @Override // org.telegram.p042ui.Stories.recorder.CaptionContainerView
            protected void drawBlur(BlurringShader.StoryBlurDrawer storyBlurDrawer, Canvas canvas, RectF rectF, float f, boolean z, float f2, float f3, boolean z2) {
                int i14;
                int i15;
                canvas.save();
                this.path.rewind();
                this.path.addRoundRect(rectF, f, f, Path.Direction.CW);
                canvas.clipPath(this.path);
                if (z2) {
                    canvas.translate(((-getX()) - PhotoViewer.this.captionEditContainer.getX()) + f2, ((-getY()) - PhotoViewer.this.captionEditContainer.getY()) + f3);
                } else {
                    canvas.translate(f2, f3);
                }
                PhotoViewer photoViewer = PhotoViewer.this;
                int i16 = z ? -8882056 : -14277082;
                boolean z3 = false;
                if (!z2) {
                    i14 = 1140850688;
                } else if (z) {
                    i15 = 0;
                    boolean z4 = !z;
                    if (!z && z2) {
                        z3 = true;
                    }
                    photoViewer.drawCaptionBlur(canvas, storyBlurDrawer, i16, i15, false, z4, z3);
                    canvas.restore();
                } else {
                    i14 = AndroidUtilities.DARK_STATUS_BAR_OVERLAY;
                }
                i15 = i14;
                boolean z42 = !z;
                if (!z) {
                    z3 = true;
                }
                photoViewer.drawCaptionBlur(canvas, storyBlurDrawer, i16, i15, false, z42, z3);
                canvas.restore();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p042ui.Stories.recorder.CaptionContainerView
            public boolean captionLimitToast() {
                if (PhotoViewer.this.limitBulletin == null || Bulletin.getVisibleBulletin() != PhotoViewer.this.limitBulletin) {
                    PhotoViewer photoViewer = PhotoViewer.this;
                    return photoViewer.showCaptionLimitBulletin(photoViewer.containerView);
                }
                return false;
            }

            @Override // org.telegram.p042ui.Components.CaptionPhotoViewer, org.telegram.p042ui.Stories.recorder.CaptionContainerView
            protected void setupMentionContainer() {
                this.mentionContainer.getAdapter().setAllowStickers(false);
                this.mentionContainer.getAdapter().setAllowBots(false);
                this.mentionContainer.getAdapter().setAllowChats(false);
                this.mentionContainer.getAdapter().setSearchInDailogs(true);
                if (PhotoViewer.this.parentChatActivity != null) {
                    this.mentionContainer.getAdapter().setChatInfo(PhotoViewer.this.parentChatActivity.chatInfo);
                    this.mentionContainer.getAdapter().setNeedUsernames(PhotoViewer.this.parentChatActivity.currentChat != null);
                } else {
                    this.mentionContainer.getAdapter().setChatInfo(null);
                    this.mentionContainer.getAdapter().setNeedUsernames(false);
                }
                this.mentionContainer.getAdapter().setNeedBotContext(false);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p042ui.Components.CaptionPhotoViewer, org.telegram.p042ui.Stories.recorder.CaptionContainerView
            public void onUpdateShowKeyboard(float f) {
                super.onUpdateShowKeyboard(f);
                float f2 = 1.0f - f;
                PhotoViewer.this.muteItem.setAlpha((PhotoViewer.this.muteItem.getTag() != null ? 1 : 0) * f2);
                PhotoViewer.this.videoTimelineViewContainer.setAlpha(f2 * (PhotoViewer.this.videoTimelineViewContainer.getTag() == null ? 0 : 1));
            }

            @Override // android.view.View
            public void invalidate() {
                if (SharedConfig.photoViewerBlur && (PhotoViewer.this.animationInProgress == 1 || PhotoViewer.this.animationInProgress == 2 || PhotoViewer.this.animationInProgress == 3)) {
                    return;
                }
                super.invalidate();
            }
        };
        this.captionEdit = captionPhotoViewer2;
        captionPhotoViewer2.setOnTimerChange(new Utilities.Callback() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda91
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PhotoViewer.this.lambda$setParentActivity$15((Integer) obj);
            }
        });
        this.captionEdit.setAccount(this.currentAccount);
        this.captionEdit.setOnHeightUpdate(new Utilities.Callback() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda90
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PhotoViewer.this.lambda$setParentActivity$16((Integer) obj);
            }
        });
        this.captionEdit.setOnAddPhotoClick(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda34
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$17(view2);
            }
        });
        showEditCaption(false, false);
        FrameLayout frameLayout5 = new FrameLayout(this.parentActivity) { // from class: org.telegram.ui.PhotoViewer.29
            {
                PhotoViewer.this = this;
            }

            @Override // android.view.View
            public void setTranslationY(float f) {
                super.setTranslationY(f);
                PhotoViewer.this.invalidateBlur();
            }
        };
        this.captionEditContainer = frameLayout5;
        frameLayout5.addView(this.captionEdit, LayoutHelper.createFrame(-1, -1, 83));
        this.containerView.addView(this.captionEditContainer, LayoutHelper.createFrame(-1, -1, 83, 0, 8, 0, 0));
        TextView textView6 = new TextView(this.parentActivity);
        this.videoAvatarTooltip = textView6;
        textView6.setSingleLine(true);
        this.videoAvatarTooltip.setVisibility(8);
        this.videoAvatarTooltip.setText(LocaleController.getString("ChooseCover", C3630R.string.ChooseCover));
        this.videoAvatarTooltip.setGravity(1);
        this.videoAvatarTooltip.setTextSize(1, 14.0f);
        this.videoAvatarTooltip.setTextColor(-7566196);
        this.containerView.addView(this.videoAvatarTooltip, LayoutHelper.createFrame(-1, -2, 83, 0, 8, 0, 0));
        ImageView imageView = new ImageView(this.parentActivity);
        this.pickerViewSendButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        Drawable createSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m102dp(48), getThemedColor(i11), getThemedColor(Build.VERSION.SDK_INT >= 21 ? Theme.key_dialogFloatingButtonPressed : i11));
        this.pickerViewSendDrawable = createSimpleSelectorCircleDrawable;
        this.pickerViewSendButton.setBackgroundDrawable(createSimpleSelectorCircleDrawable);
        this.pickerViewSendButton.setImageResource(C3630R.C3632drawable.msg_input_send_mini);
        this.pickerViewSendButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_dialogFloatingIcon), PorterDuff.Mode.MULTIPLY));
        this.containerView.addView(this.pickerViewSendButton, LayoutHelper.createFrame(48, 48.0f, 85, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 14.0f, 2.33f));
        this.pickerViewSendButton.setContentDescription(LocaleController.getString("Send", C3630R.string.Send));
        ScaleStateListAnimator.apply(this.pickerViewSendButton);
        this.pickerViewSendButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda30
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$18(view2);
            }
        });
        this.pickerViewSendButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda50
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                boolean lambda$setParentActivity$24;
                lambda$setParentActivity$24 = PhotoViewer.this.lambda$setParentActivity$24(resourcesProvider, view2);
                return lambda$setParentActivity$24;
            }
        });
        LinearLayout linearLayout = new LinearLayout(this.parentActivity) { // from class: org.telegram.ui.PhotoViewer.30
            {
                PhotoViewer.this = this;
            }

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i14, int i15) {
                int childCount = getChildCount();
                int i16 = 0;
                for (int i17 = 0; i17 < childCount; i17++) {
                    if (getChildAt(i17).getVisibility() == 0) {
                        i16++;
                    }
                }
                int size = View.MeasureSpec.getSize(i14);
                int size2 = View.MeasureSpec.getSize(i15);
                if (i16 != 0) {
                    int min = Math.min(AndroidUtilities.m102dp(70), size / i16);
                    if (PhotoViewer.this.compressItem.getVisibility() == 0) {
                        int max = Math.max(0, (min - AndroidUtilities.m102dp(PhotoViewer.this.selectedCompression < 2 ? 48 : 64)) / 2);
                        PhotoViewer.this.compressItem.setPadding(max, 0, max, 0);
                    }
                    for (int i18 = 0; i18 < childCount; i18++) {
                        View childAt = getChildAt(i18);
                        if (childAt.getVisibility() != 8) {
                            childAt.measure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
                        }
                    }
                    setMeasuredDimension(min * i16, size2);
                    return;
                }
                setMeasuredDimension(size, size2);
            }
        };
        this.itemsLayout = linearLayout;
        linearLayout.setOrientation(0);
        this.pickerView.addView(this.itemsLayout, LayoutHelper.createFrame(-2, 48, 81, 0, 0, 70, 0));
        ImageView imageView2 = new ImageView(this.parentActivity);
        this.cropItem = imageView2;
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        this.cropItem.setImageResource(C3630R.C3632drawable.media_crop);
        this.cropItem.setBackgroundDrawable(Theme.createSelectorDrawable(1090519039));
        this.itemsLayout.addView(this.cropItem, LayoutHelper.createLinear(48, 48));
        this.cropItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda32
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$25(view2);
            }
        });
        this.cropItem.setContentDescription(LocaleController.getString("CropImage", C3630R.string.CropImage));
        ImageView imageView3 = new ImageView(this.parentActivity);
        this.rotateItem = imageView3;
        imageView3.setScaleType(ImageView.ScaleType.CENTER);
        this.rotateItem.setImageResource(C3630R.C3632drawable.msg_photo_rotate);
        this.rotateItem.setBackgroundDrawable(Theme.createSelectorDrawable(1090519039));
        this.itemsLayout.addView(this.rotateItem, LayoutHelper.createLinear(48, 48));
        this.rotateItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda44
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$26(view2);
            }
        });
        this.rotateItem.setContentDescription(LocaleController.getString("AccDescrRotate", C3630R.string.AccDescrRotate));
        ImageView imageView4 = new ImageView(this.parentActivity);
        this.mirrorItem = imageView4;
        imageView4.setScaleType(ImageView.ScaleType.CENTER);
        this.mirrorItem.setImageResource(C3630R.C3632drawable.media_flip);
        this.mirrorItem.setBackgroundDrawable(Theme.createSelectorDrawable(1090519039));
        this.itemsLayout.addView(this.mirrorItem, LayoutHelper.createLinear(48, 48));
        this.mirrorItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda40
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$27(view2);
            }
        });
        this.mirrorItem.setContentDescription(LocaleController.getString("AccDescrMirror", C3630R.string.AccDescrMirror));
        ImageView imageView5 = new ImageView(this.parentActivity);
        this.paintItem = imageView5;
        imageView5.setScaleType(ImageView.ScaleType.CENTER);
        this.paintItem.setImageResource(C3630R.C3632drawable.media_draw);
        this.paintItem.setBackgroundDrawable(Theme.createSelectorDrawable(1090519039));
        this.itemsLayout.addView(this.paintItem, LayoutHelper.createLinear(48, 48));
        this.paintItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda45
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$28(view2);
            }
        });
        this.paintItem.setContentDescription(LocaleController.getString("AccDescrPhotoEditor", C3630R.string.AccDescrPhotoEditor));
        ImageView imageView6 = new ImageView(this.parentActivity);
        this.muteItem = imageView6;
        imageView6.setScaleType(ImageView.ScaleType.CENTER);
        this.muteItem.setBackgroundDrawable(Theme.createSelectorDrawable(1090519039));
        this.containerView.addView(this.muteItem, LayoutHelper.createFrame(48, 48, 83, 16, 0, 0, 0));
        this.muteItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda36
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$29(view2);
            }
        });
        VideoCompressButton videoCompressButton = new VideoCompressButton(this.parentActivity);
        this.compressItem = videoCompressButton;
        videoCompressButton.setTag(1);
        this.compressItem.setBackgroundDrawable(Theme.createSelectorDrawable(1090519039));
        this.selectedCompression = selectCompression();
        this.compressItem.setState(this.videoConvertSupported && this.compressionsCount > 1, this.muteVideo, Math.min(this.resultWidth, this.resultHeight));
        this.compressItem.setContentDescription(LocaleController.getString("AccDescrVideoQuality", C3630R.string.AccDescrVideoQuality));
        this.itemsLayout.addView(this.compressItem, LayoutHelper.createLinear(48, 48));
        this.compressItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda49
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$30(parentActivity, view2);
            }
        });
        ImageView imageView7 = new ImageView(this.parentActivity);
        this.tuneItem = imageView7;
        imageView7.setScaleType(ImageView.ScaleType.CENTER);
        this.tuneItem.setImageResource(C3630R.C3632drawable.media_settings);
        this.tuneItem.setBackgroundDrawable(Theme.createSelectorDrawable(1090519039));
        this.itemsLayout.addView(this.tuneItem, LayoutHelper.createLinear(48, 48));
        this.tuneItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$31(view2);
            }
        });
        this.tuneItem.setContentDescription(LocaleController.getString("AccDescrPhotoAdjust", C3630R.string.AccDescrPhotoAdjust));
        PickerBottomLayoutViewer pickerBottomLayoutViewer2 = new PickerBottomLayoutViewer(this.activityContext);
        this.editorDoneLayout = pickerBottomLayoutViewer2;
        pickerBottomLayoutViewer2.setBackgroundColor(-872415232);
        this.editorDoneLayout.updateSelectedCount(0, false);
        this.editorDoneLayout.setVisibility(8);
        this.containerView.addView(this.editorDoneLayout, LayoutHelper.createFrame(-1, 48, 83));
        this.editorDoneLayout.cancelButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda33
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$33(view2);
            }
        });
        this.editorDoneLayout.doneButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda27
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$34(view2);
            }
        });
        TextView textView7 = new TextView(this.activityContext);
        this.resetButton = textView7;
        textView7.setClickable(false);
        this.resetButton.setVisibility(8);
        this.resetButton.setTextSize(1, 14.0f);
        this.resetButton.setTextColor(-1);
        this.resetButton.setGravity(17);
        this.resetButton.setBackgroundDrawable(Theme.createSelectorDrawable(-12763843, 0));
        this.resetButton.setPadding(AndroidUtilities.m102dp(20), 0, AndroidUtilities.m102dp(20), 0);
        this.resetButton.setText(LocaleController.getString("Reset", C3630R.string.CropReset).toUpperCase());
        this.resetButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.editorDoneLayout.addView(this.resetButton, LayoutHelper.createFrame(-2, -1, 49));
        this.resetButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda46
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$36(view2);
            }
        });
        GestureDetector2 gestureDetector2 = new GestureDetector2(this.containerView.getContext(), this);
        this.gestureDetector = gestureDetector2;
        gestureDetector2.setIsLongpressEnabled(false);
        setDoubleTapEnabled(true);
        ImageReceiver.ImageReceiverDelegate imageReceiverDelegate = new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda86
            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public final void didSetImage(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
                PhotoViewer.this.lambda$setParentActivity$37(imageReceiver, z, z2, z3);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver);
            }
        };
        this.centerImage.setParentView(this.containerView);
        this.centerImage.setCrossfadeAlpha((byte) 2);
        this.centerImage.setInvalidateAll(true);
        this.centerImage.setDelegate(imageReceiverDelegate);
        this.leftImage.setParentView(this.containerView);
        this.leftImage.setCrossfadeAlpha((byte) 2);
        this.leftImage.setInvalidateAll(true);
        this.leftImage.setDelegate(imageReceiverDelegate);
        this.rightImage.setParentView(this.containerView);
        this.rightImage.setCrossfadeAlpha((byte) 2);
        this.rightImage.setInvalidateAll(true);
        this.rightImage.setDelegate(imageReceiverDelegate);
        int rotation = ((WindowManager) ApplicationLoader.applicationContext.getSystemService("window")).getDefaultDisplay().getRotation();
        CheckBox checkBox = new CheckBox(this.containerView.getContext(), C3630R.C3632drawable.selectphoto_large);
        this.checkImageView = checkBox;
        checkBox.setDrawBackground(true);
        this.checkImageView.setHasBorder(true);
        this.checkImageView.setSize(34);
        this.checkImageView.setCheckOffset(AndroidUtilities.m102dp(1));
        this.checkImageView.setColor(getThemedColor(i11), -1);
        this.checkImageView.setVisibility(8);
        this.containerView.addView(this.checkImageView, LayoutHelper.createFrame(34, 34, 53, 0, (rotation == 3 || rotation == 1) ? 61 : 71, 11, 0));
        if (isStatusBarVisible()) {
            ((FrameLayout.LayoutParams) this.checkImageView.getLayoutParams()).topMargin += AndroidUtilities.statusBarHeight;
        }
        this.checkImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda35
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$38(view2);
            }
        });
        CounterView counterView = new CounterView(this.parentActivity);
        this.photosCounterView = counterView;
        this.containerView.addView(counterView, LayoutHelper.createFrame(40, 40, 53, 0, (rotation == 3 || rotation == 1) ? 58 : 68, 64, 0));
        if (isStatusBarVisible()) {
            ((FrameLayout.LayoutParams) this.photosCounterView.getLayoutParams()).topMargin += AndroidUtilities.statusBarHeight;
        }
        this.photosCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda39
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$setParentActivity$39(view2);
            }
        });
        SelectedPhotosListView selectedPhotosListView = new SelectedPhotosListView(this.parentActivity);
        this.selectedPhotosListView = selectedPhotosListView;
        selectedPhotosListView.setVisibility(8);
        this.selectedPhotosListView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.selectedPhotosListView.setLayoutManager(new LinearLayoutManager(this, this.parentActivity, 0, true) { // from class: org.telegram.ui.PhotoViewer.31
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i14) {
                LinearSmoothScrollerEnd linearSmoothScrollerEnd = new LinearSmoothScrollerEnd(this, recyclerView.getContext()) { // from class: org.telegram.ui.PhotoViewer.31.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // androidx.recyclerview.widget.LinearSmoothScrollerEnd
                    public int calculateTimeForDeceleration(int i15) {
                        return Math.max(180, super.calculateTimeForDeceleration(i15));
                    }
                };
                linearSmoothScrollerEnd.setTargetPosition(i14);
                startSmoothScroll(linearSmoothScrollerEnd);
            }
        });
        SelectedPhotosListView selectedPhotosListView2 = this.selectedPhotosListView;
        ListAdapter listAdapter = new ListAdapter(this.parentActivity);
        this.selectedPhotosAdapter = listAdapter;
        selectedPhotosListView2.setAdapter(listAdapter);
        this.containerView.addView(this.selectedPhotosListView, LayoutHelper.createFrame(-1, 103, 51));
        this.selectedPhotosListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda96
            @Override // org.telegram.p042ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i14) {
                PhotoViewer.this.lambda$setParentActivity$40(view2, i14);
            }
        });
        UndoView undoView = new UndoView(this.activityContext, null, false, resourcesProvider);
        this.hintView = undoView;
        undoView.setAdditionalTranslationY(AndroidUtilities.m102dp(112));
        this.hintView.setColors(-115203550, -1);
        this.containerView.addView(this.hintView, LayoutHelper.createFrame(-1, -2, 83, 8, 0, 8, 8));
        if (AndroidUtilities.isAccessibilityScreenReaderEnabled()) {
            View view2 = new View(this.activityContext);
            this.playButtonAccessibilityOverlay = view2;
            view2.setContentDescription(LocaleController.getString("AccActionPlay", C3630R.string.AccActionPlay));
            i = 1;
            this.playButtonAccessibilityOverlay.setFocusable(true);
            this.containerView.addView(this.playButtonAccessibilityOverlay, LayoutHelper.createFrame(64, 64, 17));
        } else {
            i = 1;
        }
        TextView textView8 = this.doneButtonFullWidth;
        int themedColor = getThemedColor(i12);
        float[] fArr = new float[i];
        fArr[0] = 6.0f;
        textView8.setBackground(Theme.AdaptiveRipple.filledRect(themedColor, fArr));
        this.doneButtonFullWidth.setTextColor(getThemedColor(i13));
        TextSelectionHelper.SimpleTextSelectionHelper simpleTextSelectionHelper = this.textSelectionHelper;
        simpleTextSelectionHelper.allowScrollPrentRelative = i;
        simpleTextSelectionHelper.useMovingOffset = false;
        TextSelectionHelper<Cell>.TextSelectionOverlay overlayView = simpleTextSelectionHelper.getOverlayView(this.windowView.getContext());
        if (overlayView != null) {
            AndroidUtilities.removeFromParent(overlayView);
            this.containerView.addView(overlayView);
        }
        this.textSelectionHelper.setParentView(this.containerView);
        this.textSelectionHelper.setInvalidateParent();
    }

    /* renamed from: org.telegram.ui.PhotoViewer$13 */
    /* loaded from: classes5.dex */
    public class C660113 extends FrameLayout {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C660113(Context context) {
            super(context);
            PhotoViewer.this = r1;
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return PhotoViewer.this.isVisible && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return PhotoViewer.this.isVisible && PhotoViewer.this.onTouchEvent(motionEvent);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            keyEvent.getKeyCode();
            if (!PhotoViewer.this.muteVideo && PhotoViewer.this.sendPhotoType != 1 && PhotoViewer.this.isCurrentVideo && PhotoViewer.this.videoPlayer != null && keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0 && (keyEvent.getKeyCode() == 24 || keyEvent.getKeyCode() == 25)) {
                PhotoViewer.this.videoPlayer.setVolume(1.0f);
            }
            return super.dispatchKeyEvent(keyEvent);
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x0020, code lost:
            if (r0 != 6) goto L17;
         */
        @Override // android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean dispatchTouchEvent(android.view.MotionEvent r3) {
            /*
                r2 = this;
                org.telegram.ui.PhotoViewer r0 = org.telegram.p042ui.PhotoViewer.this
                boolean r0 = org.telegram.p042ui.PhotoViewer.access$300(r0)
                if (r0 == 0) goto L32
                org.telegram.ui.PhotoViewer r0 = org.telegram.p042ui.PhotoViewer.this
                boolean r0 = org.telegram.p042ui.PhotoViewer.access$400(r0)
                if (r0 == 0) goto L32
                int r0 = r3.getActionMasked()
                if (r0 == 0) goto L29
                r1 = 1
                if (r0 == r1) goto L23
                r1 = 3
                if (r0 == r1) goto L23
                r1 = 5
                if (r0 == r1) goto L29
                r1 = 6
                if (r0 == r1) goto L23
                goto L32
            L23:
                org.telegram.ui.PhotoViewer r0 = org.telegram.p042ui.PhotoViewer.this
                org.telegram.p042ui.PhotoViewer.access$11000(r0)
                goto L32
            L29:
                org.telegram.ui.PhotoViewer r0 = org.telegram.p042ui.PhotoViewer.this
                java.lang.Runnable r0 = org.telegram.p042ui.PhotoViewer.access$10900(r0)
                org.telegram.messenger.AndroidUtilities.cancelRunOnUIThread(r0)
            L32:
                boolean r3 = super.dispatchTouchEvent(r3)
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.C660113.dispatchTouchEvent(android.view.MotionEvent):boolean");
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            try {
                return super.drawChild(canvas, view, j);
            } catch (Throwable unused) {
                return false;
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int i4;
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 21) {
                if (!PhotoViewer.this.inBubbleMode) {
                    if (!AndroidUtilities.incorrectDisplaySizeFix) {
                        if (PhotoViewer.this.insets.bottom >= 0 && (i3 = AndroidUtilities.statusBarHeight) >= 0 && (i4 = (size2 - i3) - PhotoViewer.this.insets.bottom) > 0 && i4 < 4096) {
                            AndroidUtilities.displaySize.y = i4;
                        }
                    } else {
                        int i6 = AndroidUtilities.displaySize.y;
                        if (size2 > i6) {
                            size2 = i6;
                        }
                        size2 += AndroidUtilities.statusBarHeight;
                    }
                }
                size2 -= PhotoViewer.this.insets.bottom;
            } else {
                if (i5 < 21) {
                    PhotoViewer.this.insets.top = AndroidUtilities.statusBarHeight;
                    PhotoViewer.this.insets.bottom = AndroidUtilities.navigationBarHeight;
                }
                int i7 = AndroidUtilities.displaySize.y;
                if (size2 > i7) {
                    size2 = i7;
                }
            }
            int paddingLeft = size - (getPaddingLeft() + getPaddingRight());
            int paddingBottom = size2 - getPaddingBottom();
            setMeasuredDimension(paddingLeft, paddingBottom);
            ViewGroup.LayoutParams layoutParams = PhotoViewer.this.animatingImageView.getLayoutParams();
            PhotoViewer.this.animatingImageView.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(layoutParams.height, Integer.MIN_VALUE));
            PhotoViewer.this.containerView.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824), View.MeasureSpec.makeMeasureSpec(paddingBottom, 1073741824));
            PhotoViewer.this.navigationBar.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824), View.MeasureSpec.makeMeasureSpec(PhotoViewer.this.navigationBarHeight, 1073741824));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            PhotoViewer.this.animatingImageView.layout(getPaddingLeft(), 0, getPaddingLeft() + PhotoViewer.this.animatingImageView.getMeasuredWidth(), PhotoViewer.this.animatingImageView.getMeasuredHeight());
            PhotoViewer.this.containerView.layout(getPaddingLeft(), 0, getPaddingLeft() + PhotoViewer.this.containerView.getMeasuredWidth(), PhotoViewer.this.containerView.getMeasuredHeight());
            PhotoViewer.this.navigationBar.layout(getPaddingLeft(), PhotoViewer.this.containerView.getMeasuredHeight(), PhotoViewer.this.navigationBar.getMeasuredWidth(), PhotoViewer.this.containerView.getMeasuredHeight() + PhotoViewer.this.navigationBar.getMeasuredHeight());
            PhotoViewer.this.wasLayout = true;
            if (z) {
                if (!PhotoViewer.this.dontResetZoomOnFirstLayout) {
                    PhotoViewer.this.scale = 1.0f;
                    PhotoViewer.this.translationX = BitmapDescriptorFactory.HUE_RED;
                    PhotoViewer.this.translationY = BitmapDescriptorFactory.HUE_RED;
                    PhotoViewer photoViewer = PhotoViewer.this;
                    photoViewer.updateMinMax(photoViewer.scale);
                }
                if (PhotoViewer.this.checkImageView != null) {
                    PhotoViewer.this.checkImageView.post(new Runnable() { // from class: org.telegram.ui.PhotoViewer$13$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            PhotoViewer.C660113.this.lambda$onLayout$0();
                        }
                    });
                }
            }
            if (PhotoViewer.this.dontResetZoomOnFirstLayout) {
                PhotoViewer.this.setScaleToFill();
                PhotoViewer.this.dontResetZoomOnFirstLayout = false;
            }
        }

        public /* synthetic */ void lambda$onLayout$0() {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) PhotoViewer.this.checkImageView.getLayoutParams();
            ((WindowManager) ApplicationLoader.applicationContext.getSystemService("window")).getDefaultDisplay().getRotation();
            int currentActionBarHeight = ((C3702ActionBar.getCurrentActionBarHeight() - AndroidUtilities.m102dp(34)) / 2) + (PhotoViewer.this.isStatusBarVisible() ? AndroidUtilities.statusBarHeight : 0);
            if (currentActionBarHeight != layoutParams.topMargin) {
                layoutParams.topMargin = currentActionBarHeight;
                PhotoViewer.this.checkImageView.setLayoutParams(layoutParams);
            }
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) PhotoViewer.this.photosCounterView.getLayoutParams();
            int currentActionBarHeight2 = ((C3702ActionBar.getCurrentActionBarHeight() - AndroidUtilities.m102dp(40)) / 2) + (PhotoViewer.this.isStatusBarVisible() ? AndroidUtilities.statusBarHeight : 0);
            if (layoutParams2.topMargin != currentActionBarHeight2) {
                layoutParams2.topMargin = currentActionBarHeight2;
                PhotoViewer.this.photosCounterView.setLayoutParams(layoutParams2);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            PhotoViewer.this.centerImage.onAttachedToWindow();
            PhotoViewer.this.leftImage.onAttachedToWindow();
            PhotoViewer.this.rightImage.onAttachedToWindow();
            PhotoViewer.this.attachedToWindow = true;
            PhotoViewer.this.onCreateMvpView();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            PhotoViewer.this.centerImage.onDetachedFromWindow();
            PhotoViewer.this.leftImage.onDetachedFromWindow();
            PhotoViewer.this.rightImage.onDetachedFromWindow();
            PhotoViewer.this.attachedToWindow = false;
            PhotoViewer.this.wasLayout = false;
            PhotoViewer.this.onDestroyMvpView();
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
            if (keyEvent != null && keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                if (PhotoViewer.this.textSelectionHelper.isInSelectionMode()) {
                    PhotoViewer.this.textSelectionHelper.clear();
                }
                if (PhotoViewer.this.isCaptionOpen()) {
                    PhotoViewer.this.closeCaptionEnter(true);
                    return false;
                }
                PhotoViewer.getInstance().closePhoto(true, false);
                return true;
            }
            return super.dispatchKeyEventPreIme(keyEvent);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (Build.VERSION.SDK_INT < 21 || !PhotoViewer.this.isVisible) {
                return;
            }
            PhotoViewer.this.blackPaint.setAlpha(PhotoViewer.this.backgroundDrawable.getAlpha());
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight(), getMeasuredWidth(), getMeasuredHeight() + PhotoViewer.this.insets.bottom, PhotoViewer.this.blackPaint);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            UndoView undoView;
            super.dispatchDraw(canvas);
            if (PhotoViewer.this.parentChatActivity == null || (undoView = PhotoViewer.this.parentChatActivity.getUndoView()) == null || undoView.getVisibility() != 0) {
                return;
            }
            canvas.save();
            View view = (View) undoView.getParent();
            canvas.clipRect(view.getX(), view.getY(), view.getX() + view.getWidth(), view.getY() + view.getHeight());
            canvas.translate(undoView.getX(), undoView.getY());
            undoView.draw(canvas);
            canvas.restore();
            invalidate();
        }
    }

    public /* synthetic */ WindowInsets lambda$setParentActivity$8(View view, WindowInsets windowInsets) {
        Rect rect = new Rect(this.insets);
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.displayCutout() | WindowInsetsCompat.Type.systemBars());
            this.insets.set(insets.left, insets.top, insets.right, insets.bottom);
        } else {
            this.insets.set(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        int i2 = this.insets.top;
        Activity activity = this.parentActivity;
        if ((activity instanceof LaunchActivity) && ((i2 != 0 || AndroidUtilities.isInMultiwindow) && !this.inBubbleMode && AndroidUtilities.statusBarHeight != i2)) {
            AndroidUtilities.statusBarHeight = i2;
            ((LaunchActivity) activity).drawerLayoutContainer.requestLayout();
        }
        if (!rect.equals(windowInsets)) {
            int i3 = this.animationInProgress;
            if (i3 == 1 || i3 == 3) {
                ClippingImageView clippingImageView = this.animatingImageView;
                clippingImageView.setTranslationX(clippingImageView.getTranslationX() - getLeftInset());
                this.animationValues[0][2] = this.animatingImageView.getTranslationX();
            }
            FrameLayout frameLayout = this.windowView;
            if (frameLayout != null) {
                frameLayout.requestLayout();
            }
        }
        View view2 = this.navigationBar;
        if (view2 != null) {
            this.navigationBarHeight = this.insets.bottom;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
            int i4 = this.navigationBarHeight;
            marginLayoutParams.height = i4;
            marginLayoutParams.bottomMargin = (-i4) / 2;
            this.navigationBar.setLayoutParams(marginLayoutParams);
        }
        this.containerView.setPadding(windowInsets.getSystemWindowInsetLeft(), 0, windowInsets.getSystemWindowInsetRight(), 0);
        if (this.actionBar != null) {
            AndroidUtilities.cancelRunOnUIThread(this.updateContainerFlagsRunnable);
            if (this.isVisible && this.animationInProgress == 0) {
                AndroidUtilities.runOnUIThread(this.updateContainerFlagsRunnable, 200L);
            }
        }
        if (i >= 30) {
            return WindowInsets.CONSUMED;
        }
        return windowInsets.consumeSystemWindowInsets();
    }

    /* renamed from: org.telegram.ui.PhotoViewer$16 */
    /* loaded from: classes5.dex */
    public class C660516 extends C3702ActionBar.ActionBarMenuOnItemClick {
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

        C660516(Theme.ResourcesProvider resourcesProvider) {
            PhotoViewer.this = r1;
            this.val$resourcesProvider = resourcesProvider;
        }

        /* JADX WARN: Removed duplicated region for block: B:1018:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:704:0x04e1  */
        /* JADX WARN: Removed duplicated region for block: B:706:0x04f7  */
        /* JADX WARN: Removed duplicated region for block: B:707:0x04fd  */
        /* JADX WARN: Removed duplicated region for block: B:714:0x051b  */
        /* JADX WARN: Removed duplicated region for block: B:741:0x060a  */
        /* JADX WARN: Removed duplicated region for block: B:763:0x06c8  */
        /* JADX WARN: Removed duplicated region for block: B:764:0x06d6  */
        /* JADX WARN: Removed duplicated region for block: B:797:0x07b9  */
        /* JADX WARN: Removed duplicated region for block: B:843:0x0933  */
        /* JADX WARN: Type inference failed for: r10v21 */
        /* JADX WARN: Type inference failed for: r10v22, types: [boolean, int] */
        /* JADX WARN: Type inference failed for: r10v23 */
        @Override // org.telegram.p042ui.ActionBar.C3702ActionBar.ActionBarMenuOnItemClick
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onItemClick(int r32) {
            /*
                Method dump skipped, instructions count: 3889
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.C660516.onItemClick(int):void");
        }

        public /* synthetic */ void lambda$onItemClick$0(MessageObject messageObject) {
            AndroidUtilities.copyImageToClipboard(PhotoViewer.this.parentFragment, messageObject);
        }

        public /* synthetic */ void lambda$onItemClick$1() {
            PhotoViewer photoViewer = PhotoViewer.this;
            photoViewer.recognitionPresenter.getPhotoText(photoViewer.centerImage.getBitmap(), false);
        }

        public /* synthetic */ void lambda$onItemClick$2() {
            PhotoViewer photoViewer = PhotoViewer.this;
            photoViewer.recognitionPresenter.getPhotoObjects(photoViewer.centerImage.getBitmap());
        }

        public /* synthetic */ void lambda$onItemClick$3() {
            PhotoViewer photoViewer = PhotoViewer.this;
            photoViewer.recognitionPresenter.getPhotoText(photoViewer.centerImage.getBitmap(), true);
        }

        public /* synthetic */ void lambda$onItemClick$4(boolean z, Uri uri) {
            BulletinFactory.createSaveToGalleryBulletin(PhotoViewer.this.containerView, z, -115203550, -1).show();
        }

        public /* synthetic */ void lambda$onItemClick$6(DialogInterface dialogInterface, int i) {
            File pathToMessage;
            if (PhotoViewer.this.currentMessageObject == null) {
                return;
            }
            if (!(MessageObject.getMedia(PhotoViewer.this.currentMessageObject.messageOwner) instanceof TLRPC$TL_messageMediaWebPage) || MessageObject.getMedia(PhotoViewer.this.currentMessageObject.messageOwner).webpage == null || MessageObject.getMedia(PhotoViewer.this.currentMessageObject.messageOwner).webpage.document != null) {
                pathToMessage = FileLoader.getInstance(PhotoViewer.this.currentAccount).getPathToMessage(PhotoViewer.this.currentMessageObject.messageOwner);
            } else {
                PhotoViewer photoViewer = PhotoViewer.this;
                pathToMessage = FileLoader.getInstance(PhotoViewer.this.currentAccount).getPathToAttach(photoViewer.getFileLocation(photoViewer.currentIndex, null), true);
            }
            final boolean isVideo = PhotoViewer.this.currentMessageObject.isVideo();
            if (pathToMessage == null || !pathToMessage.exists()) {
                PhotoViewer.this.showDownloadAlert();
                return;
            }
            MediaController.saveFile(pathToMessage.toString(), PhotoViewer.this.parentActivity, isVideo ? 1 : 0, null, null, new Utilities.Callback() { // from class: org.telegram.ui.PhotoViewer$16$$ExternalSyntheticLambda19
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    PhotoViewer.C660516.this.lambda$onItemClick$5(isVideo, (Uri) obj);
                }
            });
        }

        public /* synthetic */ void lambda$onItemClick$5(boolean z, Uri uri) {
            BulletinFactory.createSaveToGalleryBulletin(PhotoViewer.this.containerView, z, -115203550, -1).show();
        }

        public /* synthetic */ void lambda$onItemClick$9(final boolean z, ArrayList arrayList, DialogInterface dialogInterface, int i) {
            File pathToMessage;
            final int[] iArr = new int[1];
            final int[] iArr2 = new int[1];
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.PhotoViewer$16$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.C660516.this.lambda$onItemClick$7(iArr2, iArr, z);
                }
            };
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                MessageObject messageObject = (MessageObject) arrayList.get(i2);
                if (messageObject != null) {
                    if (!(MessageObject.getMedia(messageObject.messageOwner) instanceof TLRPC$TL_messageMediaWebPage) || MessageObject.getMedia(messageObject.messageOwner).webpage == null || MessageObject.getMedia(messageObject.messageOwner).webpage.document != null) {
                        pathToMessage = FileLoader.getInstance(PhotoViewer.this.currentAccount).getPathToMessage(messageObject.messageOwner);
                    } else {
                        FileLoader fileLoader = FileLoader.getInstance(PhotoViewer.this.currentAccount);
                        PhotoViewer photoViewer = PhotoViewer.this;
                        pathToMessage = fileLoader.getPathToAttach(photoViewer.getFileLocation(photoViewer.currentIndex, null), true);
                    }
                    boolean isVideo = messageObject.isVideo();
                    if (pathToMessage != null && pathToMessage.exists()) {
                        iArr[0] = iArr[0] + 1;
                        MediaController.saveFile(pathToMessage.toString(), PhotoViewer.this.parentActivity, isVideo ? 1 : 0, null, null, new Utilities.Callback() { // from class: org.telegram.ui.PhotoViewer$16$$ExternalSyntheticLambda18
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj) {
                                Uri uri = (Uri) obj;
                                AndroidUtilities.runOnUIThread(runnable);
                            }
                        });
                    }
                }
            }
        }

        public /* synthetic */ void lambda$onItemClick$7(int[] iArr, int[] iArr2, boolean z) {
            iArr[0] = iArr[0] + 1;
            if (iArr[0] == iArr2[0]) {
                BulletinFactory.createSaveToGalleryBulletin(PhotoViewer.this.containerView, iArr2[0], z, -115203550, -1).show();
            }
        }

        public /* synthetic */ void lambda$onItemClick$11(DialogInterface dialogInterface, int i) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(PhotoViewer.this.currentMessageObject);
            PhotoViewer.this.showShareAlert(arrayList);
        }

        public /* synthetic */ void lambda$onItemClick$12(ArrayList arrayList, DialogInterface dialogInterface, int i) {
            PhotoViewer.this.showShareAlert(arrayList);
        }

        public /* synthetic */ boolean lambda$onItemClick$14(ArrayList arrayList, ChatActivity chatActivity, DialogsActivity dialogsActivity, ArrayList arrayList2, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
            UndoView undoView;
            if (callbacks$Callback1 != null) {
                callbacks$Callback1.invoke(arrayList);
                return true;
            }
            if (arrayList2.size() > 1 || ((MessagesStorage.TopicKey) arrayList2.get(0)).dialogId == UserConfig.getInstance(PhotoViewer.this.currentAccount).getClientUserId() || charSequence != null || dialogsActivity.isInMultiSelect()) {
                dialogsActivity.filterSelectedForwardingMessages(arrayList);
                for (int i = 0; i < arrayList2.size(); i++) {
                    long j = ((MessagesStorage.TopicKey) arrayList2.get(i)).dialogId;
                    if (charSequence != null) {
                        SendMessagesHelper.getInstance(PhotoViewer.this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.m90of(charSequence.toString(), j, null, null, null, true, null, null, null, dialogsActivity.notify, dialogsActivity.scheduleDate, null, false, null));
                    }
                    SendMessagesHelper.getInstance(PhotoViewer.this.currentAccount).sendMessage(arrayList, j, false, false, dialogsActivity.notify, dialogsActivity.scheduleDate, null, dialogsActivity.getForwardingParams(), true);
                }
                dialogsActivity.finishFragment();
                if (chatActivity != null && (undoView = chatActivity.getUndoView()) != null) {
                    if (arrayList2.size() == 1) {
                        undoView.showWithAction(((MessagesStorage.TopicKey) arrayList2.get(0)).dialogId, 53, Integer.valueOf(arrayList.size()));
                    } else {
                        undoView.showWithAction(0L, 53, Integer.valueOf(arrayList.size()), Integer.valueOf(arrayList2.size()), (Runnable) null, (Runnable) null);
                    }
                }
            } else {
                MessagesStorage.TopicKey topicKey = (MessagesStorage.TopicKey) arrayList2.get(0);
                long j2 = topicKey.dialogId;
                Bundle bundle = new Bundle();
                bundle.putBoolean("scrollToTopOnResume", true);
                if (DialogObject.isEncryptedDialog(j2)) {
                    bundle.putInt("enc_id", DialogObject.getEncryptedChatId(j2));
                } else if (DialogObject.isUserDialog(j2)) {
                    bundle.putLong("user_id", j2);
                } else {
                    bundle.putLong("chat_id", -j2);
                }
                ChatActivity chatActivity2 = new ChatActivity(bundle);
                if (topicKey.topicId != 0) {
                    ForumUtilities.applyTopic(chatActivity2, topicKey);
                }
                if (((LaunchActivity) PhotoViewer.this.parentActivity).presentFragment(chatActivity2, true, false)) {
                    chatActivity2.showFieldPanelForForward(true, arrayList);
                } else {
                    dialogsActivity.finishFragment();
                }
            }
            return true;
        }

        public static /* synthetic */ void lambda$onItemClick$15(boolean[] zArr, View view) {
            zArr[0] = !zArr[0];
            ((CheckBoxCell) view).setChecked(zArr[0], true);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ void lambda$onItemClick$16(boolean[] zArr, DialogInterface dialogInterface, int i) {
            ArrayList arrayList;
            TLRPC$EncryptedChat tLRPC$EncryptedChat;
            if (PhotoViewer.this.placeProvider.onDeletePhoto(PhotoViewer.this.currentIndex)) {
                if (!PhotoViewer.this.imagesArr.isEmpty()) {
                    if (PhotoViewer.this.currentIndex < 0 || PhotoViewer.this.currentIndex >= PhotoViewer.this.imagesArr.size()) {
                        return;
                    }
                    MessageObject messageObject = (MessageObject) PhotoViewer.this.imagesArr.get(PhotoViewer.this.currentIndex);
                    if (messageObject.isSent()) {
                        PhotoViewer.this.closePhoto(false, false);
                        ArrayList arrayList2 = new ArrayList();
                        if (PhotoViewer.this.slideshowMessageId != 0) {
                            arrayList2.add(Integer.valueOf(PhotoViewer.this.slideshowMessageId));
                        } else {
                            arrayList2.add(Integer.valueOf(messageObject.getId()));
                        }
                        if (!DialogObject.isEncryptedDialog(messageObject.getDialogId()) || messageObject.messageOwner.random_id == 0) {
                            arrayList = null;
                            tLRPC$EncryptedChat = null;
                        } else {
                            ArrayList arrayList3 = new ArrayList();
                            arrayList3.add(Long.valueOf(messageObject.messageOwner.random_id));
                            arrayList = arrayList3;
                            tLRPC$EncryptedChat = MessagesController.getInstance(PhotoViewer.this.currentAccount).getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(messageObject.getDialogId())));
                        }
                        MessagesController.getInstance(PhotoViewer.this.currentAccount).deleteMessages(arrayList2, arrayList, tLRPC$EncryptedChat, messageObject.getDialogId(), zArr[0], messageObject.scheduled);
                        return;
                    }
                    return;
                } else if (!PhotoViewer.this.avatarsArr.isEmpty()) {
                    if (PhotoViewer.this.currentIndex < 0 || PhotoViewer.this.currentIndex >= PhotoViewer.this.avatarsArr.size()) {
                        return;
                    }
                    TLRPC$Message tLRPC$Message = (TLRPC$Message) PhotoViewer.this.imagesArrMessages.get(PhotoViewer.this.currentIndex);
                    if (tLRPC$Message != null) {
                        ArrayList<Integer> arrayList4 = new ArrayList<>();
                        arrayList4.add(Integer.valueOf(tLRPC$Message.f1624id));
                        MessagesController.getInstance(PhotoViewer.this.currentAccount).deleteMessages(arrayList4, null, null, MessageObject.getDialogId(tLRPC$Message), true, false);
                        NotificationCenter.getInstance(PhotoViewer.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadDialogPhotos, new Object[0]);
                    }
                    if (PhotoViewer.this.isCurrentAvatarSet()) {
                        if (PhotoViewer.this.avatarsDialogId > 0) {
                            MessagesController.getInstance(PhotoViewer.this.currentAccount).deleteUserPhoto(null);
                        } else {
                            MessagesController.getInstance(PhotoViewer.this.currentAccount).changeChatAvatar(-PhotoViewer.this.avatarsDialogId, null, null, null, null, 0.0d, null, null, null, null);
                        }
                        PhotoViewer.this.closePhoto(false, false);
                        return;
                    }
                    TLRPC$Photo tLRPC$Photo = (TLRPC$Photo) PhotoViewer.this.avatarsArr.get(PhotoViewer.this.currentIndex);
                    if (tLRPC$Photo == null) {
                        return;
                    }
                    TLRPC$TL_inputPhoto tLRPC$TL_inputPhoto = new TLRPC$TL_inputPhoto();
                    tLRPC$TL_inputPhoto.f1622id = tLRPC$Photo.f1630id;
                    tLRPC$TL_inputPhoto.access_hash = tLRPC$Photo.access_hash;
                    byte[] bArr = tLRPC$Photo.file_reference;
                    tLRPC$TL_inputPhoto.file_reference = bArr;
                    if (bArr == null) {
                        tLRPC$TL_inputPhoto.file_reference = new byte[0];
                    }
                    if (PhotoViewer.this.avatarsDialogId > 0) {
                        MessagesController.getInstance(PhotoViewer.this.currentAccount).deleteUserPhoto(tLRPC$TL_inputPhoto);
                    }
                    MessagesStorage.getInstance(PhotoViewer.this.currentAccount).clearUserPhoto(PhotoViewer.this.avatarsDialogId, tLRPC$Photo.f1630id);
                    PhotoViewer.this.imagesArrLocations.remove(PhotoViewer.this.currentIndex);
                    PhotoViewer.this.imagesArrLocationsSizes.remove(PhotoViewer.this.currentIndex);
                    PhotoViewer.this.imagesArrLocationsVideo.remove(PhotoViewer.this.currentIndex);
                    PhotoViewer.this.imagesArrMessages.remove(PhotoViewer.this.currentIndex);
                    PhotoViewer.this.avatarsArr.remove(PhotoViewer.this.currentIndex);
                    if (!PhotoViewer.this.imagesArrLocations.isEmpty()) {
                        int i2 = PhotoViewer.this.currentIndex;
                        if (i2 >= PhotoViewer.this.avatarsArr.size()) {
                            i2 = PhotoViewer.this.avatarsArr.size() - 1;
                        }
                        PhotoViewer.this.currentIndex = -1;
                        PhotoViewer.this.setImageIndex(i2);
                    } else {
                        PhotoViewer.this.closePhoto(false, false);
                    }
                    if (tLRPC$Message == null) {
                        NotificationCenter.getInstance(PhotoViewer.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadDialogPhotos, new Object[0]);
                        return;
                    }
                    return;
                } else if (PhotoViewer.this.secureDocuments.isEmpty() || PhotoViewer.this.placeProvider == null) {
                    return;
                } else {
                    PhotoViewer.this.secureDocuments.remove(PhotoViewer.this.currentIndex);
                    PhotoViewer.this.placeProvider.deleteImageAtIndex(PhotoViewer.this.currentIndex);
                    if (!PhotoViewer.this.secureDocuments.isEmpty()) {
                        int i3 = PhotoViewer.this.currentIndex;
                        if (i3 >= PhotoViewer.this.secureDocuments.size()) {
                            i3 = PhotoViewer.this.secureDocuments.size() - 1;
                        }
                        PhotoViewer.this.currentIndex = -1;
                        PhotoViewer.this.setImageIndex(i3);
                        return;
                    }
                    PhotoViewer.this.closePhoto(false, false);
                    return;
                }
            }
            PhotoViewer.this.closePhoto(false, false);
        }

        public /* synthetic */ void lambda$onItemClick$18(final UserConfig userConfig, final TLRPC$Photo tLRPC$Photo, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$16$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.C660516.this.lambda$onItemClick$17(tLObject, userConfig, tLRPC$Photo);
                }
            });
        }

        public /* synthetic */ void lambda$onItemClick$17(TLObject tLObject, UserConfig userConfig, TLRPC$Photo tLRPC$Photo) {
            if (tLObject instanceof TLRPC$TL_photos_photo) {
                TLRPC$TL_photos_photo tLRPC$TL_photos_photo = (TLRPC$TL_photos_photo) tLObject;
                MessagesController.getInstance(PhotoViewer.this.currentAccount).putUsers(tLRPC$TL_photos_photo.users, false);
                TLRPC$User user = MessagesController.getInstance(PhotoViewer.this.currentAccount).getUser(Long.valueOf(userConfig.clientUserId));
                if (tLRPC$TL_photos_photo.photo instanceof TLRPC$TL_photo) {
                    int indexOf = PhotoViewer.this.avatarsArr.indexOf(tLRPC$Photo);
                    if (indexOf >= 0) {
                        PhotoViewer.this.avatarsArr.set(indexOf, tLRPC$TL_photos_photo.photo);
                    }
                    if (user != null) {
                        user.photo.photo_id = tLRPC$TL_photos_photo.photo.f1630id;
                        userConfig.setCurrentUser(user);
                        userConfig.saveConfig(true);
                    }
                }
            }
        }

        public /* synthetic */ void lambda$onItemClick$19() {
            if (PhotoViewer.this.menuItem == null) {
                return;
            }
            PhotoViewer.this.menuItem.hideSubItem(16);
        }

        public /* synthetic */ void lambda$onItemClick$20() {
            PhotoViewer.this.menuItem.hideSubItem(21);
            PhotoViewer.this.menuItem.showSubItem(22);
        }

        public /* synthetic */ void lambda$onItemClick$22() {
            PhotoViewer.this.menuItem.showSubItem(21);
            PhotoViewer.this.menuItem.hideSubItem(22);
        }

        @Override // org.telegram.p042ui.ActionBar.C3702ActionBar.ActionBarMenuOnItemClick
        public boolean canOpenMenu() {
            if (PhotoViewer.this.currentMessageObject == null && PhotoViewer.this.currentSecureDocument == null) {
                if (PhotoViewer.this.currentFileLocationVideo == null) {
                    return PhotoViewer.this.pageBlocksAdapter != null;
                }
                File pathToAttach = FileLoader.getInstance(PhotoViewer.this.currentAccount).getPathToAttach(PhotoViewer.getFileLocation(PhotoViewer.this.currentFileLocationVideo), PhotoViewer.getFileLocationExt(PhotoViewer.this.currentFileLocationVideo), PhotoViewer.this.avatarsDialogId != 0 || PhotoViewer.this.isEvent);
                return pathToAttach.exists() || new File(FileLoader.getDirectory(4), pathToAttach.getName()).exists();
            }
            return true;
        }
    }

    public /* synthetic */ void lambda$setParentActivity$9(Boolean bool) {
        checkProgress(0, false, false);
    }

    public /* synthetic */ void lambda$setParentActivity$10(View view) {
        Activity activity = this.parentActivity;
        if (activity == null) {
            return;
        }
        this.wasRotated = false;
        this.fullscreenedByButton = 1;
        if (this.prevOrientation == -10) {
            this.prevOrientation = activity.getRequestedOrientation();
        }
        if (((WindowManager) this.parentActivity.getSystemService("window")).getDefaultDisplay().getRotation() == 3) {
            this.parentActivity.setRequestedOrientation(8);
        } else {
            this.parentActivity.setRequestedOrientation(0);
        }
        toggleActionBar(false, false);
    }

    public /* synthetic */ View lambda$setParentActivity$11() {
        return new CaptionTextView(this.activityContext, this.captionScrollView, this.textSelectionHelper, new Utilities.Callback2() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda87
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                PhotoViewer.this.onLinkClick((ClickableSpan) obj, (TextView) obj2);
            }
        }, new Utilities.Callback3() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda88
            @Override // org.telegram.messenger.Utilities.Callback3
            public final void run(Object obj, Object obj2, Object obj3) {
                PhotoViewer.this.onLinkLongPress((URLSpan) obj, (TextView) obj2, (Runnable) obj3);
            }
        });
    }

    public /* synthetic */ void lambda$setParentActivity$12(View view) {
        this.selectedCompression = this.previousCompression;
        didChangedCompressionLevel(false);
        showQualityView(false);
        requestVideoPreview(2);
    }

    public /* synthetic */ void lambda$setParentActivity$13(View view) {
        Object obj = this.imagesArrLocals.get(this.currentIndex);
        if (obj instanceof MediaController.MediaEditState) {
            ((MediaController.MediaEditState) obj).editedInfo = getCurrentVideoEditedInfo();
        }
        showQualityView(false);
        requestVideoPreview(2);
    }

    public /* synthetic */ void lambda$setParentActivity$14(View view) {
        sendPressed(false, 0);
    }

    /* renamed from: org.telegram.ui.PhotoViewer$27 */
    /* loaded from: classes5.dex */
    public class C661827 implements VideoTimelinePlayView.VideoTimelineViewDelegate {
        private int seekTo;
        private Runnable seekToRunnable;
        private boolean wasPlaying;

        C661827() {
            PhotoViewer.this = r1;
        }

        @Override // org.telegram.p042ui.Components.VideoTimelinePlayView.VideoTimelineViewDelegate
        public void onLeftProgressChanged(float f) {
            if (PhotoViewer.this.videoPlayer == null) {
                return;
            }
            if (PhotoViewer.this.videoPlayer.isPlaying()) {
                PhotoViewer.this.manuallyPaused = false;
                PhotoViewer.this.videoPlayer.pause();
                PhotoViewer.this.containerView.invalidate();
            }
            updateAvatarStartTime(1);
            seekTo(f);
            PhotoViewer.this.videoPlayerSeekbar.setProgress(BitmapDescriptorFactory.HUE_RED);
            PhotoViewer.this.videoTimelineView.setProgress(f);
            PhotoViewer.this.updateVideoInfo();
        }

        @Override // org.telegram.p042ui.Components.VideoTimelinePlayView.VideoTimelineViewDelegate
        public void onRightProgressChanged(float f) {
            if (PhotoViewer.this.videoPlayer == null) {
                return;
            }
            if (PhotoViewer.this.videoPlayer.isPlaying()) {
                PhotoViewer.this.manuallyPaused = false;
                PhotoViewer.this.videoPlayer.pause();
                PhotoViewer.this.containerView.invalidate();
            }
            updateAvatarStartTime(2);
            seekTo(f);
            PhotoViewer.this.videoPlayerSeekbar.setProgress(1.0f);
            PhotoViewer.this.videoTimelineView.setProgress(f);
            PhotoViewer.this.updateVideoInfo();
        }

        @Override // org.telegram.p042ui.Components.VideoTimelinePlayView.VideoTimelineViewDelegate
        public void onPlayProgressChanged(float f) {
            if (PhotoViewer.this.videoPlayer == null) {
                return;
            }
            if (PhotoViewer.this.sendPhotoType == 1) {
                updateAvatarStartTime(0);
            }
            seekTo(f);
        }

        private void seekTo(float f) {
            this.seekTo = (int) (PhotoViewer.this.videoDuration * f);
            if (SharedConfig.getDevicePerformanceClass() == 2) {
                PhotoViewer.this.seekVideoOrWebTo(this.seekTo);
                if (PhotoViewer.this.sendPhotoType == 1) {
                    PhotoViewer.this.needCaptureFrameReadyAtTime = this.seekTo;
                    if (PhotoViewer.this.captureFrameReadyAtTime != PhotoViewer.this.needCaptureFrameReadyAtTime) {
                        PhotoViewer.this.captureFrameReadyAtTime = -1L;
                    }
                }
                this.seekToRunnable = null;
            } else if (this.seekToRunnable == null) {
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.PhotoViewer$27$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhotoViewer.C661827.this.lambda$seekTo$0();
                    }
                };
                this.seekToRunnable = runnable;
                AndroidUtilities.runOnUIThread(runnable, 100L);
            }
        }

        public /* synthetic */ void lambda$seekTo$0() {
            PhotoViewer.this.seekVideoOrWebTo(this.seekTo);
            if (PhotoViewer.this.sendPhotoType == 1) {
                PhotoViewer.this.needCaptureFrameReadyAtTime = this.seekTo;
                if (PhotoViewer.this.captureFrameReadyAtTime != PhotoViewer.this.needCaptureFrameReadyAtTime) {
                    PhotoViewer.this.captureFrameReadyAtTime = -1L;
                }
            }
            this.seekToRunnable = null;
        }

        private void updateAvatarStartTime(int i) {
            if (PhotoViewer.this.sendPhotoType != 1) {
                return;
            }
            if (i != 0) {
                if (PhotoViewer.this.photoCropView != null) {
                    if (PhotoViewer.this.videoTimelineView.getLeftProgress() > PhotoViewer.this.avatarStartProgress || PhotoViewer.this.videoTimelineView.getRightProgress() < PhotoViewer.this.avatarStartProgress) {
                        PhotoViewer.this.photoCropView.setVideoThumbVisible(false);
                        if (i == 1) {
                            PhotoViewer photoViewer = PhotoViewer.this;
                            photoViewer.avatarStartTime = photoViewer.videoDuration * 1000.0f * PhotoViewer.this.videoTimelineView.getLeftProgress();
                        } else {
                            PhotoViewer photoViewer2 = PhotoViewer.this;
                            photoViewer2.avatarStartTime = photoViewer2.videoDuration * 1000.0f * PhotoViewer.this.videoTimelineView.getRightProgress();
                        }
                        PhotoViewer.this.captureFrameAtTime = -1L;
                        return;
                    }
                    return;
                }
                return;
            }
            PhotoViewer photoViewer3 = PhotoViewer.this;
            photoViewer3.avatarStartProgress = photoViewer3.videoTimelineView.getProgress();
            PhotoViewer photoViewer4 = PhotoViewer.this;
            photoViewer4.avatarStartTime = photoViewer4.videoDuration * 1000.0f * PhotoViewer.this.avatarStartProgress;
        }

        @Override // org.telegram.p042ui.Components.VideoTimelinePlayView.VideoTimelineViewDelegate
        public void didStartDragging(int i) {
            if (i == VideoTimelinePlayView.TYPE_PROGRESS) {
                PhotoViewer.this.cancelVideoPlayRunnable();
                if (PhotoViewer.this.sendPhotoType == 1) {
                    PhotoViewer.this.cancelFlashAnimations();
                    PhotoViewer.this.captureFrameAtTime = -1L;
                }
                boolean isVideoPlaying = PhotoViewer.this.isVideoPlaying();
                this.wasPlaying = isVideoPlaying;
                if (isVideoPlaying) {
                    PhotoViewer.this.manuallyPaused = false;
                    PhotoViewer.this.pauseVideoOrWeb();
                    PhotoViewer.this.containerView.invalidate();
                }
            }
        }

        @Override // org.telegram.p042ui.Components.VideoTimelinePlayView.VideoTimelineViewDelegate
        public void didStopDragging(int i) {
            Runnable runnable = this.seekToRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.seekToRunnable.run();
            }
            PhotoViewer.this.cancelVideoPlayRunnable();
            if (PhotoViewer.this.sendPhotoType != 1 || PhotoViewer.this.flashView == null || i != VideoTimelinePlayView.TYPE_PROGRESS) {
                if (PhotoViewer.this.sendPhotoType == 1 || this.wasPlaying) {
                    PhotoViewer.this.manuallyPaused = false;
                    PhotoViewer.this.playVideoOrWeb();
                    return;
                }
                return;
            }
            PhotoViewer.this.cancelFlashAnimations();
            PhotoViewer photoViewer = PhotoViewer.this;
            photoViewer.captureFrameAtTime = photoViewer.avatarStartTime;
            if (PhotoViewer.this.captureFrameReadyAtTime == this.seekTo) {
                PhotoViewer.this.captureCurrentFrame();
            }
        }
    }

    public /* synthetic */ void lambda$setParentActivity$15(Integer num) {
        Object obj = this.imagesArrLocals.get(this.currentIndex);
        if (obj instanceof MediaController.PhotoEntry) {
            ((MediaController.PhotoEntry) obj).ttl = num.intValue();
        } else if (obj instanceof MediaController.SearchImage) {
            ((MediaController.SearchImage) obj).ttl = num.intValue();
        }
        if (num.intValue() == 0 || this.placeProvider.isPhotoChecked(this.currentIndex)) {
            return;
        }
        setPhotoChecked();
    }

    public /* synthetic */ void lambda$setParentActivity$16(Integer num) {
        this.videoTimelineViewContainer.setTranslationY(this.pickerView.getTranslationY() - Math.max(0, num.intValue() - AndroidUtilities.m102dp(46)));
        this.muteItem.setTranslationY(-Math.max(0, num.intValue() - AndroidUtilities.m102dp(46)));
    }

    public /* synthetic */ void lambda$setParentActivity$17(View view) {
        if (this.placeProvider == null || isCaptionOpen()) {
            return;
        }
        this.placeProvider.needAddMorePhotos();
        closePhoto(true, false);
    }

    public /* synthetic */ void lambda$setParentActivity$18(View view) {
        ChatActivity chatActivity;
        if (this.captionEdit.isCaptionOverLimit()) {
            AnimatedTextView animatedTextView = this.captionEdit.limitTextView;
            float f = -this.shiftDp;
            this.shiftDp = f;
            AndroidUtilities.shakeViewSpring(animatedTextView, f);
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            if (MessagesController.getInstance(this.currentAccount).premiumLocked || MessagesController.getInstance(this.currentAccount).captionLengthLimitPremium <= this.captionEdit.getCodePointCount()) {
                return;
            }
            showCaptionLimitBulletin(this.containerView);
            return;
        }
        ChatActivity chatActivity2 = this.parentChatActivity;
        if ((chatActivity2 != null && chatActivity2.isInScheduleMode() && !this.parentChatActivity.isEditingMessageMedia()) || ((chatActivity = this.parentChatActivity) != null && chatActivity.isTemplatesChannel(true, true) && !this.parentChatActivity.isEditingMessageMedia())) {
            showScheduleDatePickerDialog();
        } else {
            sendPressed(true, 0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:233:0x014d, code lost:
        if (r6 != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x0156, code lost:
        if (org.telegram.messenger.UserObject.isUserSelf(r2) != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x015c, code lost:
        if (r13 == 3) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x015e, code lost:
        if (r5 == false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x0162, code lost:
        if (r13 != r9) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x0166, code lost:
        if (r16.isCurrentVideo == false) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x016e, code lost:
        if (r16.captionEdit.hasTimer() == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0172, code lost:
        r14 = r16.parentActivity;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x0176, code lost:
        if (r13 != 0) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x0178, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x017a, code lost:
        r15 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x017b, code lost:
        if (r13 != 3) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x017d, code lost:
        r3 = r17;
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0181, code lost:
        r9 = r3;
        r3 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x0184, code lost:
        r6 = new org.telegram.p042ui.ActionBar.ActionBarMenuSubItem(r14, r15, r9, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x0189, code lost:
        if (r13 != com.iMe.common.IdFabric$Menu.REACTIONS) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x018b, code lost:
        r6.setTextAndIcon(org.telegram.messenger.LocaleController.getInternalString(org.telegram.messenger.C3630R.string.sending_settings_send_add_reactions), org.telegram.messenger.C3630R.C3632drawable.fork_ic_reactions);
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x019b, code lost:
        if (r13 != com.iMe.common.IdFabric$Menu.TRANSLATE) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x019d, code lost:
        r6.setTextAndIcon(org.telegram.messenger.LocaleController.getInternalString(org.telegram.messenger.C3630R.string.chat_long_action_translate), org.telegram.messenger.C3630R.C3632drawable.msg_translate);
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x01a9, code lost:
        if (r13 != 0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x01af, code lost:
        if (org.telegram.messenger.UserObject.isUserSelf(r2) == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x01b1, code lost:
        r6.setTextAndIcon(org.telegram.messenger.LocaleController.getString("SetReminder", org.telegram.messenger.C3630R.string.SetReminder), org.telegram.messenger.C3630R.C3632drawable.msg_calendar2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x01bf, code lost:
        r6.setTextAndIcon(org.telegram.messenger.LocaleController.getString("ScheduleMessage", org.telegram.messenger.C3630R.string.ScheduleMessage), org.telegram.messenger.C3630R.C3632drawable.msg_calendar2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x01cd, code lost:
        if (r13 != 1) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x01df, code lost:
        if (com.iMe.fork.controller.ToolsController.getInstance(r16.currentAccount).isSilentSendingEnabledForDialog(r16.parentChatActivity.getDialogId()) == false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x01e1, code lost:
        r6.setTextAndIcon(org.telegram.messenger.LocaleController.getInternalString(org.telegram.messenger.C3630R.string.send_with_sound), org.telegram.messenger.C3630R.C3632drawable.input_notify_on);
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x01ed, code lost:
        r6.setTextAndIcon(org.telegram.messenger.LocaleController.getString("SendWithoutSound", org.telegram.messenger.C3630R.string.SendWithoutSound), org.telegram.messenger.C3630R.C3632drawable.input_notify_off);
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x01fb, code lost:
        if (r13 != 2) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x01fd, code lost:
        r6.setTextAndIcon(org.telegram.messenger.LocaleController.getString("ReplacePhoto", org.telegram.messenger.C3630R.string.ReplacePhoto), org.telegram.messenger.C3630R.C3632drawable.msg_replace);
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x020b, code lost:
        if (r13 != 3) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x020d, code lost:
        r6.setTextAndIcon(org.telegram.messenger.LocaleController.getString("SendAsNewPhoto", org.telegram.messenger.C3630R.string.SendAsNewPhoto), org.telegram.messenger.C3630R.C3632drawable.msg_send);
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x021d, code lost:
        if (r13 != 4) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x021f, code lost:
        r14 = r16.placeProvider;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0221, code lost:
        if (r14 == null) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0227, code lost:
        if (r14.getSelectedCount() <= 1) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x0229, code lost:
        r6.setTextAndIcon(org.telegram.messenger.LocaleController.getString(org.telegram.messenger.C3630R.string.SendAsFiles), org.telegram.messenger.C3630R.C3632drawable.msg_sendfile);
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x0235, code lost:
        r6.setTextAndIcon(org.telegram.messenger.LocaleController.getString(org.telegram.messenger.C3630R.string.SendAsFile), org.telegram.messenger.C3630R.C3632drawable.msg_sendfile);
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x0240, code lost:
        r6.setMinimumWidth(org.telegram.messenger.AndroidUtilities.m102dp(196));
        r6.setColors(-1, -1);
        r16.sendPopupLayout.addView((android.view.View) r6, org.telegram.p042ui.Components.LayoutHelper.createLinear(-1, 48));
        r6.setOnClickListener(new org.telegram.p042ui.PhotoViewer$$ExternalSyntheticLambda48());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ boolean lambda$setParentActivity$24(org.telegram.p042ui.ActionBar.Theme.ResourcesProvider r17, android.view.View r18) {
        /*
            Method dump skipped, instructions count: 768
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.lambda$setParentActivity$24(org.telegram.ui.ActionBar.Theme$ResourcesProvider, android.view.View):boolean");
    }

    public /* synthetic */ boolean lambda$setParentActivity$19(View view, MotionEvent motionEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (motionEvent.getActionMasked() == 0 && (actionBarPopupWindow = this.sendPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            view.getHitRect(this.hitRect);
            if (this.hitRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
            this.sendPopupWindow.dismiss();
            return false;
        }
        return false;
    }

    public /* synthetic */ void lambda$setParentActivity$20(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.sendPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
    }

    public /* synthetic */ void lambda$setParentActivity$23(int i, final String str, View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        if (i == IdFabric$Menu.REACTIONS) {
            sendPressed(true, 0, false, false, false, null, true);
        } else if (i == IdFabric$Menu.TRANSLATE) {
            WalletHelper.safeRunWithActivationCheck(this.parentChatActivity, new Callbacks$Callback() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda55
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    PhotoViewer.this.lambda$setParentActivity$22(str);
                }
            });
        } else if (i == 0) {
            showScheduleDatePickerDialog();
        } else if (i == 1) {
            sendPressed(false, 0);
        } else if (i == 2) {
            replacePressed();
        } else if (i == 3) {
            sendPressed(true, 0);
        } else if (i == 4) {
            sendPressed(true, 0, false, true, false);
        }
    }

    public /* synthetic */ void lambda$setParentActivity$22(String str) {
        showAlertDialog(this.parentChatActivity.createTranslateOutgoingDialog(str, new Callbacks$Callback1() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda53
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                PhotoViewer.this.lambda$setParentActivity$21((String) obj);
            }
        }));
    }

    public /* synthetic */ void lambda$setParentActivity$21(String str) {
        if (this.captionTextViewSwitcher == null || this.captionEdit == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.captionTextViewSwitcher.setText(str);
        this.captionEdit.setText(str);
        closeCaptionEnter(true);
    }

    public /* synthetic */ void lambda$setParentActivity$25(View view) {
        if (isCaptionOpen()) {
            return;
        }
        if (this.isCurrentVideo) {
            if (!this.videoConvertSupported) {
                return;
            }
            TextureView textureView = this.videoTextureView;
            if (!(textureView instanceof VideoEditTextureView)) {
                return;
            }
            VideoEditTextureView videoEditTextureView = (VideoEditTextureView) textureView;
            if (videoEditTextureView.getVideoWidth() <= 0 || videoEditTextureView.getVideoHeight() <= 0) {
                return;
            }
        }
        switchToEditMode(1);
    }

    public /* synthetic */ void lambda$setParentActivity$26(View view) {
        cropRotate(-90.0f);
    }

    public /* synthetic */ void lambda$setParentActivity$27(View view) {
        cropMirror();
    }

    public /* synthetic */ void lambda$setParentActivity$28(View view) {
        if (isCaptionOpen()) {
            return;
        }
        if (this.isCurrentVideo) {
            if (!this.videoConvertSupported) {
                return;
            }
            TextureView textureView = this.videoTextureView;
            if (!(textureView instanceof VideoEditTextureView)) {
                return;
            }
            VideoEditTextureView videoEditTextureView = (VideoEditTextureView) textureView;
            if (videoEditTextureView.getVideoWidth() <= 0 || videoEditTextureView.getVideoHeight() <= 0) {
                return;
            }
        }
        switchToEditMode(3);
    }

    public /* synthetic */ void lambda$setParentActivity$29(View view) {
        if (isCaptionOpen()) {
            return;
        }
        this.muteVideo = !this.muteVideo;
        updateMuteButton();
        updateVideoInfo();
        if (this.muteVideo && !this.checkImageView.isChecked()) {
            this.checkImageView.callOnClick();
            return;
        }
        Object obj = this.imagesArrLocals.get(this.currentIndex);
        if (obj instanceof MediaController.MediaEditState) {
            ((MediaController.MediaEditState) obj).editedInfo = getCurrentVideoEditedInfo();
        }
    }

    public /* synthetic */ void lambda$setParentActivity$30(Activity activity, View view) {
        if (isCaptionOpen() || this.muteVideo) {
            return;
        }
        if (this.compressItem.getTag() == null) {
            if (this.videoConvertSupported) {
                if (this.tooltip == null) {
                    this.tooltip = new Tooltip(activity, this.containerView, -871296751, -1);
                }
                this.tooltip.setText(LocaleController.getString("VideoQualityIsTooLow", C3630R.string.VideoQualityIsTooLow));
                this.tooltip.show(this.compressItem);
                return;
            }
            return;
        }
        showQualityView(true);
        requestVideoPreview(1);
    }

    public /* synthetic */ void lambda$setParentActivity$31(View view) {
        if (isCaptionOpen()) {
            return;
        }
        if (this.isCurrentVideo) {
            if (!this.videoConvertSupported) {
                return;
            }
            TextureView textureView = this.videoTextureView;
            if (!(textureView instanceof VideoEditTextureView)) {
                return;
            }
            VideoEditTextureView videoEditTextureView = (VideoEditTextureView) textureView;
            if (videoEditTextureView.getVideoWidth() <= 0 || videoEditTextureView.getVideoHeight() <= 0) {
                return;
            }
        }
        switchToEditMode(2);
    }

    public /* synthetic */ void lambda$setParentActivity$33(View view) {
        if (this.imageMoveAnimation != null) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda72
            @Override // java.lang.Runnable
            public final void run() {
                PhotoViewer.this.lambda$setParentActivity$32();
            }
        };
        if (!this.previousHasTransform) {
            float stateOrientation = this.previousCropOrientation - this.photoCropView.cropView.getStateOrientation();
            if (Math.abs(stateOrientation) > 180.0f) {
                stateOrientation = stateOrientation < BitmapDescriptorFactory.HUE_RED ? stateOrientation + 360.0f : -(360.0f - stateOrientation);
            }
            cropRotate(stateOrientation, this.photoCropView.cropView.getStateMirror(), runnable);
            return;
        }
        runnable.run();
    }

    public /* synthetic */ void lambda$setParentActivity$32() {
        this.cropTransform.setViewTransform(this.previousHasTransform, this.previousCropPx, this.previousCropPy, this.previousCropRotation, this.previousCropOrientation, this.previousCropScale, 1.0f, 1.0f, this.previousCropPw, this.previousCropPh, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.previousCropMirrored);
        switchToEditMode(0);
    }

    public /* synthetic */ void lambda$setParentActivity$34(View view) {
        if (this.currentEditMode != 1 || this.photoCropView.isReady()) {
            applyCurrentEditMode();
            switchToEditMode(0);
        }
    }

    public /* synthetic */ void lambda$setParentActivity$36(View view) {
        float f = -this.photoCropView.cropView.getStateOrientation();
        if (Math.abs(f) > 180.0f) {
            f = f < BitmapDescriptorFactory.HUE_RED ? f + 360.0f : -(360.0f - f);
        }
        cropRotate(f, this.photoCropView.cropView.getStateMirror(), new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                PhotoViewer.this.lambda$setParentActivity$35();
            }
        });
    }

    public /* synthetic */ void lambda$setParentActivity$35() {
        this.photoCropView.reset(true);
    }

    public /* synthetic */ void lambda$setParentActivity$37(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        PhotoViewerProvider photoViewerProvider;
        Bitmap bitmap;
        if (imageReceiver == this.centerImage && z && !z2) {
            if (!this.isCurrentVideo && ((this.currentEditMode == 1 || this.sendPhotoType == 1) && this.photoCropView != null && (bitmap = imageReceiver.getBitmap()) != null)) {
                this.photoCropView.setBitmap(bitmap, imageReceiver.getOrientation(), this.sendPhotoType != 1, true, this.paintingOverlay, this.cropTransform, null, null);
            }
            if (this.paintingOverlay.getVisibility() == 0) {
                this.containerView.requestLayout();
            }
            detectFaces();
        }
        if (imageReceiver != this.centerImage || !z || (photoViewerProvider = this.placeProvider) == null || !photoViewerProvider.scaleToFill() || this.ignoreDidSetImage || this.sendPhotoType == 1) {
            return;
        }
        if (!this.wasLayout) {
            this.dontResetZoomOnFirstLayout = true;
        } else {
            setScaleToFill();
        }
    }

    public /* synthetic */ void lambda$setParentActivity$38(View view) {
        if (isCaptionOpen()) {
            return;
        }
        setPhotoChecked();
    }

    public /* synthetic */ void lambda$setParentActivity$39(View view) {
        PhotoViewerProvider photoViewerProvider;
        if (isCaptionOpen() || (photoViewerProvider = this.placeProvider) == null || photoViewerProvider.getSelectedPhotosOrder() == null || this.placeProvider.getSelectedPhotosOrder().isEmpty()) {
            return;
        }
        togglePhotosListView(!this.isPhotosListViewVisible, true);
    }

    public /* synthetic */ void lambda$setParentActivity$40(View view, int i) {
        int i2;
        if (!this.imagesArrLocals.isEmpty() && (i2 = this.currentIndex) >= 0 && i2 < this.imagesArrLocals.size()) {
            Object obj = this.imagesArrLocals.get(this.currentIndex);
            if (obj instanceof MediaController.MediaEditState) {
                ((MediaController.MediaEditState) obj).editedInfo = getCurrentVideoEditedInfo();
            }
        }
        this.ignoreDidSetImage = true;
        int indexOf = this.imagesArrLocals.indexOf(view.getTag());
        if (indexOf >= 0) {
            this.currentIndex = -1;
            setImageIndex(indexOf);
        }
        this.ignoreDidSetImage = false;
    }

    public boolean showCaptionLimitBulletin(FrameLayout frameLayout) {
        BaseFragment baseFragment = this.parentFragment;
        if ((baseFragment instanceof ChatActivity) && ChatObject.isChannelAndNotMegaGroup(((ChatActivity) baseFragment).getCurrentChat())) {
            this.limitBulletin = BulletinFactory.m62of(frameLayout, this.resourcesProvider).createCaptionLimitBulletin(MessagesController.getInstance(this.currentAccount).captionLengthLimitPremium, new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda66
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.this.lambda$showCaptionLimitBulletin$41();
                }
            }).setOnHideListener(new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda73
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.this.lambda$showCaptionLimitBulletin$42();
                }
            }).show();
            return true;
        }
        return false;
    }

    public /* synthetic */ void lambda$showCaptionLimitBulletin$41() {
        closePhoto(false, false);
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        if (chatAttachAlert != null) {
            chatAttachAlert.dismiss(true);
        }
        BaseFragment baseFragment = this.parentFragment;
        if (baseFragment != null) {
            baseFragment.presentFragment(new PremiumPreviewFragment("caption_limit"));
        }
    }

    public /* synthetic */ void lambda$showCaptionLimitBulletin$42() {
        this.limitBulletin = null;
    }

    private void showScheduleDatePickerDialog() {
        if (this.parentChatActivity == null) {
            return;
        }
        AlertsCreator.createScheduleDatePickerDialog(this.parentActivity, this.parentChatActivity.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda95
            @Override // org.telegram.p042ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public final void didSelectDate(boolean z, int i, String str) {
                PhotoViewer.this.sendPressed(z, i, str);
            }

            @Override // org.telegram.p042ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public /* synthetic */ ArrayList getSelectedDialogs() {
                return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
            }
        }, new AlertsCreator.ScheduleDatePickerColors(-1, -14342875, -1, 520093695, -1, -115203550, 620756991), this.parentChatActivity);
    }

    public void sendPressed(boolean z, int i, String str) {
        sendPressed(z, i, false, false, false, str, false);
    }

    private void replacePressed() {
        sendPressed(false, 0, true, false, false);
    }

    private void sendPressed(final boolean z, final int i, final boolean z2, final boolean z3, boolean z4, String str, boolean z5) {
        int i2;
        ChatActivity chatActivity;
        ImageUpdater.AvatarFor avatarFor;
        String str2;
        String string;
        TextureView textureView;
        if (isCaptionOpen() || this.placeProvider == null || this.doneButtonPressed) {
            return;
        }
        if (this.sendPhotoType == 1) {
            if (!z4 && (avatarFor = this.setAvatarFor) != null) {
                long j = 0;
                TLObject tLObject = avatarFor.object;
                if (tLObject instanceof TLRPC$User) {
                    String str3 = ((TLRPC$User) tLObject).first_name;
                    long j2 = ((TLRPC$User) tLObject).f1762id;
                    str2 = str3;
                    j = j2;
                } else {
                    str2 = "";
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(this.containerView.getContext());
                builder.setAdditionalHorizontalPadding(AndroidUtilities.m102dp(8));
                SuggestUserPhotoView suggestUserPhotoView = new SuggestUserPhotoView(this.containerView.getContext());
                suggestUserPhotoView.setImages(this.setAvatarFor.object, this.containerView, this.photoCropView);
                builder.setTopView(suggestUserPhotoView);
                if (this.setAvatarFor.type == 1) {
                    if (UserConfig.getInstance(this.currentAccount).clientUserId == j) {
                        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString("SetUserPhotoSelfAlertMessage", C3630R.string.SetUserPhotoSelfAlertMessage)));
                    } else {
                        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("SetUserPhotoAlertMessage", C3630R.string.SetUserPhotoAlertMessage, str2, str2)));
                    }
                    if (this.centerImageIsVideo) {
                        string = LocaleController.getString("SetVideo", C3630R.string.SetVideo);
                    } else {
                        string = LocaleController.getString("SetPhoto", C3630R.string.SetPhoto);
                    }
                } else {
                    if (this.centerImageIsVideo) {
                        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("SuggestVideoAlertMessage", C3630R.string.SuggestVideoAlertMessage, str2)));
                    } else {
                        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("SuggestPhotoAlertMessage", C3630R.string.SuggestPhotoAlertMessage, str2)));
                    }
                    string = LocaleController.getString("SuggestPhotoShort", C3630R.string.SuggestPhotoShort);
                }
                builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda23
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        PhotoViewer.lambda$sendPressed$44(dialogInterface, i3);
                    }
                });
                builder.setPositiveButton(string, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda22
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        PhotoViewer.this.lambda$sendPressed$45(z, i, z2, z3, dialogInterface, i3);
                    }
                });
                builder.setDialogButtonColorKey(Theme.key_voipgroup_listeningText);
                AlertDialog create = builder.create();
                create.setBlurParams(0.8f, false, true);
                create.setBackgroundColor(ColorUtils.setAlphaComponent(-15461356, 204));
                create.show();
                create.setTextColor(Theme.getColor(Theme.key_voipgroup_nameText));
                create.setOnDismissListener(new DialogInterface$OnDismissListenerC662533());
                if (!this.isCurrentVideo || (textureView = this.videoTextureView) == null) {
                    return;
                }
                try {
                    this.lastFrameBitmap = textureView.getBitmap();
                    ImageView imageView = this.lastFrameImageView;
                    if (imageView != null) {
                        this.aspectRatioFrameLayout.removeView(imageView);
                        this.lastFrameImageView = null;
                    }
                    ImageView imageView2 = new ImageView(this.videoTextureView.getContext());
                    this.lastFrameImageView = imageView2;
                    imageView2.setBackground(new BitmapDrawable(this.lastFrameBitmap));
                    this.aspectRatioFrameLayout.addView(this.lastFrameImageView);
                    return;
                } catch (Throwable th) {
                    Bitmap bitmap = this.currentBitmap;
                    if (bitmap != null) {
                        bitmap.recycle();
                        this.currentBitmap = null;
                    }
                    FileLog.m97e(th);
                    return;
                }
            }
            applyCurrentEditMode();
        }
        if (!z2 && (chatActivity = this.parentChatActivity) != null) {
            TLRPC$Chat currentChat = chatActivity.getCurrentChat();
            if (this.parentChatActivity.getCurrentUser() != null || ((ChatObject.isChannel(currentChat) && currentChat.megagroup) || !ChatObject.isChannel(currentChat))) {
                MessagesController.getNotificationsSettings(this.currentAccount).edit().putBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + this.parentChatActivity.getDialogId(), !z).commit();
            }
        }
        VideoEditedInfo currentVideoEditedInfo = getCurrentVideoEditedInfo();
        if (!this.imagesArrLocals.isEmpty() && (i2 = this.currentIndex) >= 0 && i2 < this.imagesArrLocals.size()) {
            Object obj = this.imagesArrLocals.get(this.currentIndex);
            if (obj instanceof MediaController.MediaEditState) {
                ((MediaController.MediaEditState) obj).editedInfo = currentVideoEditedInfo;
            }
        }
        ChatActivity chatActivity2 = this.parentChatActivity;
        if (chatActivity2 != null && chatActivity2.getCurrentChat() != null) {
            boolean z6 = this.isCurrentVideo || currentVideoEditedInfo != null;
            if (z6 && !ChatObject.canSendVideo(this.parentChatActivity.getCurrentChat())) {
                BulletinFactory.m62of(this.containerView, this.resourcesProvider).createErrorBulletin(LocaleController.getString(C3630R.string.GlobalAttachVideoRestricted)).show();
                return;
            } else if (!z6 && !ChatObject.canSendPhoto(this.parentChatActivity.getCurrentChat())) {
                BulletinFactory.m62of(this.containerView, this.resourcesProvider).createErrorBulletin(LocaleController.getString(C3630R.string.GlobalAttachPhotoRestricted)).show();
                return;
            }
        }
        this.doneButtonPressed = true;
        if (currentVideoEditedInfo != null) {
            long j3 = ((float) currentVideoEditedInfo.estimatedSize) * 0.9f;
            if ((j3 > FileLoader.DEFAULT_MAX_FILE_SIZE && !UserConfig.getInstance(this.currentAccount).isPremium()) || j3 > 4194304000L) {
                if (this.parentAlert != null) {
                    new LimitReachedBottomSheet(this.parentAlert.getBaseFragment(), this.parentAlert.getContainer().getContext(), 6, UserConfig.selectedAccount, null).show();
                    return;
                }
                return;
            }
        }
        if (!z2) {
            this.placeProvider.sendButtonPressed(this.currentIndex, currentVideoEditedInfo, z, i, z3, str, z5);
        } else {
            this.placeProvider.replaceButtonPressed(this.currentIndex, currentVideoEditedInfo);
        }
        if (this.closePhotoAfterSelect) {
            closePhoto(false, false);
        }
    }

    public /* synthetic */ void lambda$sendPressed$45(boolean z, int i, boolean z2, boolean z3, DialogInterface dialogInterface, int i2) {
        sendPressed(z, i, z2, z3, true);
    }

    /* renamed from: org.telegram.ui.PhotoViewer$33 */
    /* loaded from: classes5.dex */
    public class DialogInterface$OnDismissListenerC662533 implements DialogInterface.OnDismissListener {
        DialogInterface$OnDismissListenerC662533() {
            PhotoViewer.this = r1;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (PhotoViewer.this.lastFrameImageView != null) {
                PhotoViewer.this.lastFrameImageView.animate().alpha(BitmapDescriptorFactory.HUE_RED).withEndAction(new Runnable() { // from class: org.telegram.ui.PhotoViewer$33$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhotoViewer.DialogInterface$OnDismissListenerC662533.this.lambda$onDismiss$0();
                    }
                }).setDuration(150L).start();
            }
        }

        public /* synthetic */ void lambda$onDismiss$0() {
            if (PhotoViewer.this.lastFrameImageView == null || PhotoViewer.this.lastFrameImageView.getParent() == null) {
                return;
            }
            ((ViewGroup) PhotoViewer.this.lastFrameImageView.getParent()).removeView(PhotoViewer.this.lastFrameImageView);
            if (PhotoViewer.this.lastFrameBitmap != null) {
                if (PhotoViewer.this.lastFrameImageView != null) {
                    PhotoViewer.this.lastFrameImageView.setBackground(null);
                }
                AndroidUtilities.recycleBitmap(PhotoViewer.this.lastFrameBitmap);
                PhotoViewer.this.lastFrameBitmap = null;
            }
            PhotoViewer.this.lastFrameImageView = null;
        }
    }

    public boolean isCaptionOpen() {
        CaptionPhotoViewer captionPhotoViewer = this.captionEdit;
        return captionPhotoViewer != null && (captionPhotoViewer.keyboardNotifier.keyboardVisible() || this.captionEdit.editText.isPopupShowing());
    }

    public void showShareAlert(ArrayList<MessageObject> arrayList) {
        boolean z;
        boolean z2;
        FrameLayoutDrawer frameLayoutDrawer = this.containerView;
        requestAdjustToNothing();
        ChatActivity chatActivity = this.parentChatActivity;
        if (chatActivity == null || chatActivity.getChatActivityEnterView() == null || this.parentChatActivity.getFragmentView() == null) {
            z = false;
        } else {
            if (this.parentChatActivity.getChatActivityEnterView().isKeyboardVisible()) {
                this.parentChatActivity.getChatActivityEnterView().showEmojiView();
                z2 = true;
            } else {
                z2 = false;
            }
            AndroidUtilities.setAdjustResizeToNothing(this.parentChatActivity.getParentActivity(), this.classGuid);
            this.parentChatActivity.getFragmentView().requestLayout();
            z = z2;
        }
        final DialogC662634 dialogC662634 = new DialogC662634(this.parentActivity, this.parentChatActivity, arrayList, null, null, false, null, null, false, true, null, frameLayoutDrawer, z);
        dialogC662634.setFocusable(false);
        dialogC662634.getWindow().setSoftInputMode(48);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda77
            @Override // java.lang.Runnable
            public final void run() {
                PhotoViewer.this.lambda$showShareAlert$46(dialogC662634);
            }
        }, 250L);
        dialogC662634.show();
    }

    /* renamed from: org.telegram.ui.PhotoViewer$34 */
    /* loaded from: classes5.dex */
    public class DialogC662634 extends ShareAlert {
        final /* synthetic */ boolean val$finalOpenKeyboardOnShareAlertClose;
        final /* synthetic */ FrameLayout val$photoContainerView;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        DialogC662634(Context context, ChatActivity chatActivity, ArrayList arrayList, String str, String str2, boolean z, String str3, String str4, boolean z2, boolean z3, Theme.ResourcesProvider resourcesProvider, FrameLayout frameLayout, boolean z4) {
            super(context, chatActivity, arrayList, str, str2, z, str3, str4, z2, z3, resourcesProvider);
            PhotoViewer.this = r14;
            this.val$photoContainerView = frameLayout;
            this.val$finalOpenKeyboardOnShareAlertClose = z4;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p042ui.Components.ShareAlert
        public void onSend(final LongSparseArray<TLRPC$Dialog> longSparseArray, final int i, TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
            final FrameLayout frameLayout = this.val$photoContainerView;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$34$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.DialogC662634.this.lambda$onSend$0(frameLayout, longSparseArray, i);
                }
            }, 250L);
        }

        public /* synthetic */ void lambda$onSend$0(FrameLayout frameLayout, LongSparseArray longSparseArray, int i) {
            BulletinFactory.createForwardedBulletin(PhotoViewer.this.parentActivity, frameLayout, longSparseArray.size(), longSparseArray.size() == 1 ? ((TLRPC$Dialog) longSparseArray.valueAt(0)).f1606id : 0L, i, -115203550, -1).show();
        }

        @Override // org.telegram.p042ui.Components.ShareAlert, org.telegram.p042ui.ActionBar.BottomSheet
        public void dismissInternal() {
            super.dismissInternal();
            if (this.val$finalOpenKeyboardOnShareAlertClose) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$34$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhotoViewer.DialogC662634.this.lambda$dismissInternal$1();
                    }
                }, 50L);
            }
            PhotoViewer.this.requestAdjust();
        }

        public /* synthetic */ void lambda$dismissInternal$1() {
            if (PhotoViewer.this.parentChatActivity == null || PhotoViewer.this.parentChatActivity.getChatActivityEnterView() == null) {
                return;
            }
            PhotoViewer.this.parentChatActivity.getChatActivityEnterView().openKeyboard();
        }
    }

    public /* synthetic */ void lambda$showShareAlert$46(ShareAlert shareAlert) {
        if (shareAlert == null || shareAlert.getWindow() == null) {
            return;
        }
        shareAlert.setFocusable(true);
        ChatActivity chatActivity = this.parentChatActivity;
        if (chatActivity == null || chatActivity.getChatActivityEnterView() == null) {
            return;
        }
        this.parentChatActivity.getChatActivityEnterView().hidePopup(false);
    }

    public void updateActionBarTitlePadding() {
        if (this.menu == null || this.actionBarContainer == null) {
            return;
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < this.menu.getChildCount(); i++) {
            View childAt = this.menu.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                f += Math.min(0.5f, childAt.getAlpha()) * 2.0f * childAt.getWidth();
            }
        }
        CheckBox checkBox = this.checkImageView;
        if (checkBox != null && checkBox.getVisibility() == 0) {
            f = Math.max(f, AndroidUtilities.m102dp(48));
        }
        CounterView counterView = this.photosCounterView;
        if (counterView != null && counterView.getVisibility() == 0) {
            f = Math.max(f, AndroidUtilities.m102dp(100));
        }
        this.actionBarContainer.updateRightPadding(f, false);
    }

    public void setMenuItemIcon(boolean z, boolean z2) {
        if (this.speedItem.getVisibility() != 0) {
            this.menuItemIcon.setSpeed(null, z);
            return;
        }
        this.menuItemIcon.setSpeed(Math.abs(this.currentVideoSpeed - 1.0f) >= 0.001f ? Float.valueOf(this.currentVideoSpeed) : null, z);
        if (z2) {
            if (Math.abs(this.currentVideoSpeed - 0.2f) < 0.05f) {
                this.speedItem.setSubtext(LocaleController.getString("VideoSpeedVerySlow", C3630R.string.VideoSpeedVerySlow));
            } else if (Math.abs(this.currentVideoSpeed - 0.5f) < 0.05f) {
                this.speedItem.setSubtext(LocaleController.getString("VideoSpeedSlow", C3630R.string.VideoSpeedSlow));
            } else if (Math.abs(this.currentVideoSpeed - 1.0f) < 0.05f) {
                this.speedItem.setSubtext(LocaleController.getString("VideoSpeedNormal", C3630R.string.VideoSpeedNormal));
            } else if (Math.abs(this.currentVideoSpeed - 1.5f) < 0.05f) {
                this.speedItem.setSubtext(LocaleController.getString("VideoSpeedFast", C3630R.string.VideoSpeedFast));
            } else if (Math.abs(this.currentVideoSpeed - 2.0f) < 0.05f) {
                this.speedItem.setSubtext(LocaleController.getString("VideoSpeedVeryFast", C3630R.string.VideoSpeedVeryFast));
            } else {
                ActionBarMenuSubItem actionBarMenuSubItem = this.speedItem;
                int i = C3630R.string.VideoSpeedCustom;
                actionBarMenuSubItem.setSubtext(LocaleController.formatString("VideoSpeedCustom", i, SpeedIconDrawable.formatNumber(this.currentVideoSpeed) + "x"));
            }
        }
        this.chooseSpeedLayout.update(this.currentVideoSpeed, z2);
    }

    public float getCurrentVideoSpeed() {
        return this.currentVideoSpeed;
    }

    private boolean checkInlinePermissions() {
        Activity activity = this.parentActivity;
        if (activity == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(activity)) {
            return true;
        }
        AlertsCreator.createDrawOverlayPermissionDialog(this.parentActivity, null).show();
        return false;
    }

    public void captureCurrentFrame() {
        TextureView textureView;
        if (this.captureFrameAtTime == -1 || (textureView = this.videoTextureView) == null) {
            return;
        }
        this.captureFrameAtTime = -1L;
        final Bitmap bitmap = textureView.getBitmap();
        this.flashView.animate().alpha(1.0f).setInterpolator(CubicBezierInterpolator.EASE_BOTH).setDuration(85L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.35
            {
                PhotoViewer.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PhotoViewer.this.photoCropView.setVideoThumb(bitmap, 0);
                PhotoViewer.this.flashAnimator = new AnimatorSet();
                PhotoViewer.this.flashAnimator.playTogether(ObjectAnimator.ofFloat(PhotoViewer.this.flashView, PhotoViewer.this.FLASH_VIEW_VALUE, BitmapDescriptorFactory.HUE_RED));
                PhotoViewer.this.flashAnimator.setDuration(85L);
                PhotoViewer.this.flashAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                PhotoViewer.this.flashAnimator.addListener(new C66281());
                PhotoViewer.this.flashAnimator.start();
            }

            /* renamed from: org.telegram.ui.PhotoViewer$35$1 */
            /* loaded from: classes5.dex */
            public class C66281 extends AnimatorListenerAdapter {
                C66281() {
                    C662735.this = r1;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (PhotoViewer.this.flashAnimator == null) {
                        return;
                    }
                    AndroidUtilities.runOnUIThread(PhotoViewer.this.videoPlayRunnable = new Runnable() { // from class: org.telegram.ui.PhotoViewer$35$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            PhotoViewer.C662735.C66281.this.lambda$onAnimationEnd$0();
                        }
                    }, 860L);
                }

                public /* synthetic */ void lambda$onAnimationEnd$0() {
                    PhotoViewer.this.manuallyPaused = false;
                    if (PhotoViewer.this.videoPlayer != null) {
                        PhotoViewer.this.videoPlayer.play();
                    }
                    PhotoViewer.this.videoPlayRunnable = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    PhotoViewer.this.flashAnimator = null;
                }
            }
        }).start();
    }

    /* renamed from: org.telegram.ui.PhotoViewer$CaptionTextView */
    /* loaded from: classes5.dex */
    public static class CaptionTextView extends SpoilersTextView {
        private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiDrawables;
        private Layout lastLayout;
        private Layout lastLoadingLayout;
        private final LinkSpanDrawable.LinkCollector links;
        private boolean loading;
        private LoadingDrawable loadingDrawable;
        private Path loadingPath;
        private final Utilities.Callback2<ClickableSpan, TextView> onLinkClick;
        private final Utilities.Callback3<URLSpan, TextView, Runnable> onLinkLongPress;
        private LinkSpanDrawable<ClickableSpan> pressedLink;
        private final CaptionScrollView scrollView;
        private final TextSelectionHelper.SimpleTextSelectionHelper textSelectionHelper;

        public CaptionTextView(Context context, final CaptionScrollView captionScrollView, TextSelectionHelper.SimpleTextSelectionHelper simpleTextSelectionHelper, Utilities.Callback2<ClickableSpan, TextView> callback2, Utilities.Callback3<URLSpan, TextView, Runnable> callback3) {
            super(context);
            this.links = new LinkSpanDrawable.LinkCollector(this);
            this.scrollView = captionScrollView;
            this.onLinkClick = callback2;
            this.onLinkLongPress = callback3;
            this.textSelectionHelper = simpleTextSelectionHelper;
            ViewHelper.setPadding(this, 16.0f, 8.0f, 16.0f, 8.0f);
            setLinkTextColor(-8796932);
            setTextColor(-1);
            setHighlightColor(872415231);
            setGravity(LayoutHelper.getAbsoluteGravityStart() | 16);
            setTextSize(1, 16.0f);
            setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$CaptionTextView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PhotoViewer.CaptionTextView.lambda$new$0(PhotoViewer.CaptionScrollView.this, view);
                }
            });
        }

        public static /* synthetic */ void lambda$new$0(CaptionScrollView captionScrollView, View view) {
            if (captionScrollView != null) {
                captionScrollView.smoothScrollBy(0, AndroidUtilities.m102dp(64));
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:88:0x012c  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x014e  */
        @Override // android.widget.TextView, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouchEvent(android.view.MotionEvent r10) {
            /*
                Method dump skipped, instructions count: 342
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.CaptionTextView.onTouchEvent(android.view.MotionEvent):boolean");
        }

        public /* synthetic */ void lambda$onTouchEvent$1(LinkSpanDrawable linkSpanDrawable) {
            LinkSpanDrawable<ClickableSpan> linkSpanDrawable2 = this.pressedLink;
            if (linkSpanDrawable == linkSpanDrawable2 && linkSpanDrawable2 != null && (linkSpanDrawable2.getSpan() instanceof URLSpan)) {
                LinkSpanDrawable.LinkCollector linkCollector = this.links;
                Objects.requireNonNull(linkCollector);
                this.onLinkLongPress.run((URLSpan) this.pressedLink.getSpan(), this, new PhotoViewer$CaptionTextView$$ExternalSyntheticLambda1(linkCollector));
                this.pressedLink = null;
            }
        }

        @Override // android.view.View
        public void setPressed(boolean z) {
            boolean z2 = z != isPressed();
            super.setPressed(z);
            if (z2) {
                invalidate();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p042ui.Components.spoilers.SpoilersTextView, android.widget.TextView, android.view.View
        public void onDraw(Canvas canvas) {
            TextSelectionHelper.SimpleTextSelectionHelper simpleTextSelectionHelper = this.textSelectionHelper;
            if (simpleTextSelectionHelper != null && simpleTextSelectionHelper.isInSelectionMode()) {
                canvas.save();
                canvas.translate(getPaddingLeft(), getPaddingTop());
                if (this.textSelectionHelper != null && getStaticTextLayout() != null && this.textSelectionHelper.isCurrent(this)) {
                    this.textSelectionHelper.draw(canvas);
                }
                canvas.restore();
            }
            canvas.save();
            canvas.translate(getPaddingLeft(), BitmapDescriptorFactory.HUE_RED);
            if (this.links.draw(canvas)) {
                invalidate();
            }
            canvas.restore();
            super.onDraw(canvas);
            if (this.lastLayout != getLayout()) {
                this.animatedEmojiDrawables = AnimatedEmojiSpan.update(0, this, this.animatedEmojiDrawables, getLayout());
                this.lastLayout = getLayout();
            }
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            AnimatedEmojiSpan.release(this, this.animatedEmojiDrawables);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p042ui.Components.spoilers.SpoilersTextView, android.widget.TextView
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            super.onTextChanged(charSequence, i, i2, i3);
            this.animatedEmojiDrawables = AnimatedEmojiSpan.update(0, this, this.animatedEmojiDrawables, getLayout());
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            if (this.loading) {
                checkLoadingPath();
                if (this.loadingDrawable == null) {
                    LoadingDrawable loadingDrawable = new LoadingDrawable();
                    this.loadingDrawable = loadingDrawable;
                    loadingDrawable.usePath(this.loadingPath);
                    this.loadingDrawable.setRadiiDp(4.0f);
                    this.loadingDrawable.setColors(Theme.multAlpha(-1, 0.3f), Theme.multAlpha(-1, 0.1f), Theme.multAlpha(-1, 0.2f), Theme.multAlpha(-1, 0.7f));
                    this.loadingDrawable.setCallback(this);
                }
                this.loadingDrawable.setBounds(0, 0, getWidth(), getHeight());
                this.loadingDrawable.draw(canvas);
            }
            if (this.loading) {
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), 178, 31);
            }
            super.dispatchDraw(canvas);
            if (this.loading) {
                canvas.restore();
            }
            canvas.save();
            canvas.translate(getPaddingLeft(), getPaddingTop());
            canvas.clipRect(BitmapDescriptorFactory.HUE_RED, getScrollY(), getWidth() - getPaddingRight(), (getHeight() + getScrollY()) - (getPaddingBottom() * 0.75f));
            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, getLayout(), this.animatedEmojiDrawables, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
            canvas.restore();
        }

        public void setLoading(boolean z) {
            if (this.loading == z) {
                return;
            }
            this.loading = z;
            invalidate();
        }

        private void checkLoadingPath() {
            Layout layout = getLayout();
            Path path = this.loadingPath;
            if (path == null || this.lastLoadingLayout != layout) {
                if (path == null) {
                    this.loadingPath = new Path();
                } else {
                    path.rewind();
                }
                if (layout != null) {
                    float m102dp = AndroidUtilities.m102dp(16);
                    float m102dp2 = AndroidUtilities.m102dp(8);
                    float f = BitmapDescriptorFactory.HUE_RED;
                    int i = 0;
                    while (i < layout.getLineCount()) {
                        float f2 = m102dp / 3.0f;
                        float lineLeft = layout.getLineLeft(i) - f2;
                        float lineRight = layout.getLineRight(i) + f2;
                        if (i == 0) {
                            f = layout.getLineTop(i) - (m102dp2 / 3.0f);
                        }
                        float lineBottom = layout.getLineBottom(i);
                        if (i >= layout.getLineCount() - 1) {
                            lineBottom += m102dp2 / 3.0f;
                        }
                        this.loadingPath.addRect(getPaddingLeft() + lineLeft, getPaddingTop() + f, getPaddingLeft() + lineRight, getPaddingTop() + lineBottom, Path.Direction.CW);
                        i++;
                        f = lineBottom;
                    }
                }
                this.lastLoadingLayout = layout;
            }
        }

        @Override // android.widget.TextView, android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return drawable == this.loadingDrawable || super.verifyDrawable(drawable);
        }
    }

    public int getLeftInset() {
        return this.insets.left;
    }

    public int getRightInset() {
        return this.insets.right;
    }

    public void dismissInternal() {
        try {
            if (this.windowView.getParent() != null) {
                Activity activity = this.parentActivity;
                if (activity instanceof LaunchActivity) {
                    ((LaunchActivity) activity).drawerLayoutContainer.setAllowDrawContent(true);
                }
                ((WindowManager) this.parentActivity.getSystemService("window")).removeView(this.windowView);
                onHideView();
            }
        } catch (Exception e) {
            FileLog.m97e(e);
        }
    }

    public void switchToPip(boolean z) {
        float translationX;
        float translationY;
        float translationY2;
        float f;
        CubicBezierInterpolator cubicBezierInterpolator;
        CubicBezierInterpolator cubicBezierInterpolator2;
        if (this.videoPlayer == null || !this.textureUploaded || !checkInlinePermissions() || this.changingTextureView || this.switchingInlineMode || this.isInline) {
            return;
        }
        if (PipInstance != null) {
            PipInstance.destroyPhotoViewer();
        }
        this.openedFullScreenVideo = false;
        PipInstance = Instance;
        Instance = null;
        this.switchingInlineMode = true;
        this.isVisible = false;
        this.isVisibleOrAnimating = false;
        AndroidUtilities.cancelRunOnUIThread(this.hideActionBarRunnable);
        PlaceProviderObject placeProviderObject = this.currentPlaceObject;
        if (placeProviderObject != null && !placeProviderObject.imageReceiver.getVisible()) {
            this.currentPlaceObject.imageReceiver.setVisible(true, true);
            AnimatedFileDrawable animation = this.currentPlaceObject.imageReceiver.getAnimation();
            if (animation != null) {
                Bitmap animatedBitmap = animation.getAnimatedBitmap();
                if (animatedBitmap != null) {
                    try {
                        if (this.usedSurfaceView) {
                            AndroidUtilities.getBitmapFromSurface(this.videoSurfaceView, animatedBitmap);
                        } else {
                            Bitmap bitmap = this.videoTextureView.getBitmap(animatedBitmap.getWidth(), animatedBitmap.getHeight());
                            new Canvas(animatedBitmap).drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
                            bitmap.recycle();
                        }
                    } catch (Throwable th) {
                        FileLog.m97e(th);
                    }
                }
                animation.seekTo(this.videoPlayer.getCurrentPosition(), true);
                if (z) {
                    this.currentPlaceObject.imageReceiver.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    final ImageReceiver imageReceiver = this.currentPlaceObject.imageReceiver;
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            PhotoViewer.lambda$switchToPip$47(ImageReceiver.this, valueAnimator);
                        }
                    });
                    ofFloat.addListener(new AnimatorListenerAdapter(this) { // from class: org.telegram.ui.PhotoViewer.36
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            imageReceiver.setAlpha(1.0f);
                        }
                    });
                    ofFloat.setDuration(250L);
                    ofFloat.start();
                }
                this.currentPlaceObject.imageReceiver.setAllowStartAnimation(true);
                this.currentPlaceObject.imageReceiver.startAnimation();
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.pipAnimationInProgress = true;
            org.telegram.p042ui.Components.Rect pipRect = PipVideoOverlay.getPipRect(true, this.aspectRatioFrameLayout.getAspectRatio());
            final View view = this.usedSurfaceView ? this.videoSurfaceView : this.videoTextureView;
            final float width = pipRect.width / view.getWidth();
            final ValueAnimator ofFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            if (this.usedSurfaceView) {
                translationX = this.aspectRatioFrameLayout.getLeft() + view.getTranslationX();
                translationY = this.aspectRatioFrameLayout.getTop() + view.getTranslationY() + this.translationY;
                translationY2 = this.aspectRatioFrameLayout.getTop() + this.textureImageView.getTranslationY();
                f = this.translationY;
            } else {
                translationX = view.getTranslationX();
                translationY = view.getTranslationY() + this.translationY;
                translationY2 = this.textureImageView.getTranslationY();
                f = this.translationY;
            }
            final float f2 = translationY2 + f;
            final float f3 = translationY;
            final float f4 = translationX;
            final float f5 = pipRect.f1928x;
            final float leftInset = getLeftInset() + (f5 - this.aspectRatioFrameLayout.getX());
            final float f6 = pipRect.f1929y;
            final float y = f6 - this.aspectRatioFrameLayout.getY();
            if (this.videoSurfaceView != null) {
                this.videoPlayer.player.pause();
                this.textureImageView.setVisibility(0);
                if (this.usedSurfaceView) {
                    Bitmap createBitmap = Bitmaps.createBitmap(this.videoSurfaceView.getWidth(), this.videoSurfaceView.getHeight(), Bitmap.Config.ARGB_8888);
                    AndroidUtilities.getBitmapFromSurface(this.videoSurfaceView, createBitmap);
                    this.textureImageView.setImageBitmap(createBitmap);
                }
                this.videoSurfaceView.setVisibility(4);
            }
            this.textureImageView.setTranslationY(f2);
            view.setTranslationY(f3);
            FirstFrameView firstFrameView = this.firstFrameView;
            if (firstFrameView != null) {
                firstFrameView.setTranslationY(f3);
            }
            this.translationY = BitmapDescriptorFactory.HUE_RED;
            this.containerView.invalidate();
            if (z) {
                if (f3 < y) {
                    cubicBezierInterpolator2 = new CubicBezierInterpolator(0.5d, 0.0d, 0.9d, 0.9d);
                } else {
                    cubicBezierInterpolator2 = new CubicBezierInterpolator(0.0d, 0.5d, 0.9d, 0.9d);
                }
                cubicBezierInterpolator = cubicBezierInterpolator2;
            } else {
                cubicBezierInterpolator = null;
            }
            ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider(this) { // from class: org.telegram.ui.PhotoViewer.37
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view2, Outline outline) {
                    outline.setRoundRect(0, 0, view2.getMeasuredWidth(), view2.getMeasuredHeight(), ((Float) ofFloat2.getAnimatedValue()).floatValue() * AndroidUtilities.m103dp(10.0f) * (1.0f / width));
                }
            };
            view.setOutlineProvider(viewOutlineProvider);
            view.setClipToOutline(true);
            this.textureImageView.setOutlineProvider(viewOutlineProvider);
            this.textureImageView.setClipToOutline(true);
            FirstFrameView firstFrameView2 = this.firstFrameView;
            if (firstFrameView2 != null) {
                firstFrameView2.setOutlineProvider(viewOutlineProvider);
                this.firstFrameView.setClipToOutline(true);
            }
            final CubicBezierInterpolator cubicBezierInterpolator3 = cubicBezierInterpolator;
            ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda18
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PhotoViewer.this.lambda$switchToPip$48(cubicBezierInterpolator3, f4, f5, f2, f6, view, leftInset, f3, y, valueAnimator);
                }
            });
            AnimatorSet animatorSet = new AnimatorSet();
            ValueAnimator ofFloat3 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda9
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PhotoViewer.this.lambda$switchToPip$49(valueAnimator);
                }
            });
            animatorSet.playTogether(ofFloat3, ObjectAnimator.ofFloat(this.textureImageView, View.SCALE_X, width), ObjectAnimator.ofFloat(this.textureImageView, View.SCALE_Y, width), ObjectAnimator.ofFloat(view, View.SCALE_X, width), ObjectAnimator.ofFloat(view, View.SCALE_Y, width), ObjectAnimator.ofInt(this.backgroundDrawable, (Property<BackgroundDrawable, Integer>) AnimationProperties.COLOR_DRAWABLE_ALPHA, 0), ofFloat2);
            if (z) {
                animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                animatorSet.setDuration(300L);
            } else {
                animatorSet.setInterpolator(new DecelerateInterpolator());
                animatorSet.setDuration(250L);
            }
            animatorSet.addListener(new C663138(view));
            animatorSet.start();
            if (!z) {
                toggleActionBar(false, true, new ActionBarToggleParams().enableStatusBarAnimation(false).enableTranslationAnimation(false).animationDuration(250).animationInterpolator(new DecelerateInterpolator()));
            }
        } else {
            this.switchToInlineRunnable.run();
            dismissInternal();
        }
        ChatActivity chatActivity = this.parentChatActivity;
        if (chatActivity == null || chatActivity.getFragmentView() == null) {
            return;
        }
        this.parentChatActivity.getFragmentView().invalidate();
    }

    public static /* synthetic */ void lambda$switchToPip$47(ImageReceiver imageReceiver, ValueAnimator valueAnimator) {
        imageReceiver.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public /* synthetic */ void lambda$switchToPip$48(CubicBezierInterpolator cubicBezierInterpolator, float f, float f2, float f3, float f4, View view, float f5, float f6, float f7, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float interpolation = cubicBezierInterpolator == null ? floatValue : cubicBezierInterpolator.getInterpolation(floatValue);
        ImageView imageView = this.textureImageView;
        if (imageView != null) {
            imageView.setTranslationX(((1.0f - floatValue) * f) + (f2 * floatValue));
            this.textureImageView.setTranslationY((f3 * (1.0f - interpolation)) + (f4 * interpolation));
            this.textureImageView.invalidateOutline();
        }
        view.setTranslationX((f * (1.0f - floatValue)) + (f5 * floatValue));
        view.setTranslationY((f6 * (1.0f - interpolation)) + (f7 * interpolation));
        view.invalidateOutline();
        FirstFrameView firstFrameView = this.firstFrameView;
        if (firstFrameView != null) {
            firstFrameView.setTranslationX(view.getTranslationX());
            this.firstFrameView.setTranslationY(view.getTranslationY());
            this.firstFrameView.setScaleX(view.getScaleX());
            this.firstFrameView.setScaleY(view.getScaleY());
            this.firstFrameView.invalidateOutline();
        }
    }

    public /* synthetic */ void lambda$switchToPip$49(ValueAnimator valueAnimator) {
        this.clippingImageProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    /* renamed from: org.telegram.ui.PhotoViewer$38 */
    /* loaded from: classes5.dex */
    public class C663138 extends AnimatorListenerAdapter {
        final /* synthetic */ View val$textureView;

        C663138(View view) {
            PhotoViewer.this = r1;
            this.val$textureView = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            PhotoViewer.this.pipAnimationInProgress = false;
            PhotoViewer.this.switchToInlineRunnable.run();
            final View view = this.val$textureView;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$38$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.C663138.this.lambda$onAnimationEnd$0(view);
                }
            }, 100L);
        }

        public /* synthetic */ void lambda$onAnimationEnd$0(View view) {
            view.setOutlineProvider(null);
            if (PhotoViewer.this.textureImageView != null) {
                PhotoViewer.this.textureImageView.setOutlineProvider(null);
            }
            if (PhotoViewer.this.firstFrameView != null) {
                PhotoViewer.this.firstFrameView.setOutlineProvider(null);
            }
        }
    }

    public boolean cropMirror() {
        if (this.imageMoveAnimation != null || this.photoCropView == null) {
            return false;
        }
        this.mirror = BitmapDescriptorFactory.HUE_RED;
        this.animateToMirror = 1.0f;
        this.animationStartTime = System.currentTimeMillis();
        AnimatorSet animatorSet = new AnimatorSet();
        this.imageMoveAnimation = animatorSet;
        animatorSet.playTogether(ObjectAnimator.ofFloat(this, AnimationProperties.PHOTO_VIEWER_ANIMATION_VALUE, BitmapDescriptorFactory.HUE_RED, 1.0f));
        this.imageMoveAnimation.setDuration(250L);
        this.imageMoveAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.imageMoveAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.39
            {
                PhotoViewer.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PhotoViewer.this.imageMoveAnimation = null;
                if (PhotoViewer.this.photoCropView == null) {
                    return;
                }
                if (PhotoViewer.this.photoCropView.mirror()) {
                    PhotoViewer.this.mirrorItem.setColorFilter(new PorterDuffColorFilter(PhotoViewer.this.getThemedColor(Theme.key_dialogFloatingButton), PorterDuff.Mode.MULTIPLY));
                } else {
                    PhotoViewer.this.mirrorItem.setColorFilter((ColorFilter) null);
                }
                PhotoViewer photoViewer = PhotoViewer.this;
                photoViewer.mirror = photoViewer.animateToMirror = BitmapDescriptorFactory.HUE_RED;
                PhotoViewer.this.containerView.invalidate();
            }
        });
        this.imageMoveAnimation.start();
        return !this.photoCropView.cropView.isMirrored();
    }

    public boolean cropRotate(float f) {
        return cropRotate(f, false, null);
    }

    private boolean cropRotate(final float f, boolean z, final Runnable runnable) {
        PhotoCropView photoCropView;
        if (this.imageMoveAnimation == null && (photoCropView = this.photoCropView) != null) {
            photoCropView.cropView.maximize(true);
            this.rotate = BitmapDescriptorFactory.HUE_RED;
            this.animateToRotate = BitmapDescriptorFactory.HUE_RED + f;
            if (z) {
                this.mirror = BitmapDescriptorFactory.HUE_RED;
                this.animateToMirror = 1.0f;
            }
            this.animationStartTime = System.currentTimeMillis();
            this.imageMoveAnimation = new AnimatorSet();
            if (this.sendPhotoType == 1) {
                this.animateToScale = 1.0f;
            } else {
                ImageReceiver imageReceiver = this.centerImage;
                if (imageReceiver != null) {
                    int bitmapWidth = imageReceiver.getBitmapWidth();
                    int bitmapHeight = this.centerImage.getBitmapHeight();
                    if (Math.abs((((int) this.photoCropView.cropView.getStateOrientation()) / 90) % 2) == 1) {
                        bitmapHeight = bitmapWidth;
                        bitmapWidth = bitmapHeight;
                    }
                    MediaController.CropState cropState = this.editState.cropState;
                    if (cropState != null) {
                        bitmapWidth = (int) (bitmapWidth * cropState.cropPw);
                        bitmapHeight = (int) (bitmapHeight * cropState.cropPh);
                    }
                    float f2 = bitmapWidth;
                    float f3 = bitmapHeight;
                    float min = Math.min(getContainerViewWidth(1) / f2, getContainerViewHeight(1) / f3);
                    this.animateToScale = (Math.abs((f / 90.0f) % 2.0f) == 1.0f ? Math.min(getContainerViewWidth(1) / f3, getContainerViewHeight(1) / f2) : min) / min;
                }
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            final float rotation = this.photoCropView.wheelView.getRotation();
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda16
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PhotoViewer.this.lambda$cropRotate$50(f, rotation, valueAnimator);
                }
            });
            this.imageMoveAnimation.playTogether(ObjectAnimator.ofFloat(this, AnimationProperties.PHOTO_VIEWER_ANIMATION_VALUE, BitmapDescriptorFactory.HUE_RED, 1.0f), ofFloat);
            this.imageMoveAnimation.setDuration(250L);
            this.imageMoveAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.imageMoveAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.40
                {
                    PhotoViewer.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    PhotoViewer.this.imageMoveAnimation = null;
                    PhotoViewer photoViewer = PhotoViewer.this;
                    photoViewer.rotate = photoViewer.animateToRotate = BitmapDescriptorFactory.HUE_RED;
                    PhotoViewer photoViewer2 = PhotoViewer.this;
                    photoViewer2.mirror = photoViewer2.animateToMirror = BitmapDescriptorFactory.HUE_RED;
                    PhotoViewer photoViewer3 = PhotoViewer.this;
                    photoViewer3.scale = photoViewer3.animateToScale = 1.0f;
                    PhotoViewer.this.containerView.invalidate();
                    PhotoViewer.this.photoCropView.cropView.areaView.setRotationScaleTranslation(BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                    PhotoViewer.this.photoCropView.wheelView.setRotated(false);
                    if (Math.abs(f) > BitmapDescriptorFactory.HUE_RED) {
                        if (PhotoViewer.this.photoCropView.rotate(f)) {
                            PhotoViewer.this.rotateItem.setColorFilter(new PorterDuffColorFilter(PhotoViewer.this.getThemedColor(Theme.key_dialogFloatingButton), PorterDuff.Mode.MULTIPLY));
                        } else {
                            PhotoViewer.this.rotateItem.setColorFilter((ColorFilter) null);
                        }
                    }
                    if (PhotoViewer.this.editState.cropState != null) {
                        MediaController.CropState cropState2 = PhotoViewer.this.editState.cropState;
                        PhotoViewer.this.editState.cropState.cropPy = BitmapDescriptorFactory.HUE_RED;
                        cropState2.cropPx = BitmapDescriptorFactory.HUE_RED;
                        MediaController.CropState cropState3 = PhotoViewer.this.editState.cropState;
                        PhotoViewer.this.editState.cropState.cropPh = 1.0f;
                        cropState3.cropPw = 1.0f;
                    }
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            });
            this.imageMoveAnimation.start();
            return Math.abs(this.photoCropView.cropView.getStateOrientation() + f) > 0.01f;
        }
        return false;
    }

    public /* synthetic */ void lambda$cropRotate$50(float f, float f2, ValueAnimator valueAnimator) {
        CropAreaView cropAreaView = this.photoCropView.cropView.areaView;
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue() * f;
        float f3 = this.scale;
        cropAreaView.setRotationScaleTranslation(floatValue, f3 + ((this.animateToScale - f3) * this.animationValue), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        this.photoCropView.wheelView.setRotation(AndroidUtilities.lerp(f2, (float) BitmapDescriptorFactory.HUE_RED, ((Float) valueAnimator.getAnimatedValue()).floatValue()), false);
    }

    public VideoPlayer getVideoPlayer() {
        return this.videoPlayer;
    }

    public void exitFromPip() {
        if (this.isInline) {
            if (Instance != null) {
                Instance.closePhoto(false, true);
            }
            PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
            if (photoViewerWebView != null) {
                photoViewerWebView.exitFromPip();
            }
            Instance = PipInstance;
            PipInstance = null;
            if (this.photoViewerWebView == null) {
                this.switchingInlineMode = true;
                Bitmap bitmap = this.currentBitmap;
                if (bitmap != null) {
                    bitmap.recycle();
                    this.currentBitmap = null;
                }
                this.changingTextureView = true;
            }
            this.isInline = false;
            View view = this.usedSurfaceView ? this.videoSurfaceView : this.videoTextureView;
            if (this.photoViewerWebView == null && view != null) {
                AndroidUtilities.removeFromParent(view);
                view.setVisibility(4);
                this.aspectRatioFrameLayout.addView(view);
            }
            if (ApplicationLoader.mainInterfacePaused) {
                try {
                    this.parentActivity.startService(new Intent(ApplicationLoader.applicationContext, BringAppForegroundService.class));
                } catch (Throwable th) {
                    FileLog.m97e(th);
                }
            }
            if (this.photoViewerWebView == null) {
                if (Build.VERSION.SDK_INT >= 21 && view != null) {
                    this.pipAnimationInProgress = true;
                    org.telegram.p042ui.Components.Rect pipRect = PipVideoOverlay.getPipRect(false, this.aspectRatioFrameLayout.getAspectRatio());
                    final float f = pipRect.width / this.textureImageView.getLayoutParams().width;
                    this.textureImageView.setScaleX(f);
                    this.textureImageView.setScaleY(f);
                    this.textureImageView.setTranslationX(pipRect.f1928x);
                    this.textureImageView.setTranslationY(pipRect.f1929y);
                    view.setScaleX(f);
                    view.setScaleY(f);
                    view.setTranslationX(pipRect.f1928x - this.aspectRatioFrameLayout.getX());
                    view.setTranslationY(pipRect.f1929y - this.aspectRatioFrameLayout.getY());
                    FirstFrameView firstFrameView = this.firstFrameView;
                    if (firstFrameView != null) {
                        firstFrameView.setScaleX(f);
                        this.firstFrameView.setScaleY(f);
                        this.firstFrameView.setTranslationX(view.getTranslationX());
                        this.firstFrameView.setTranslationY(view.getTranslationY());
                    }
                    this.inlineOutAnimationProgress = BitmapDescriptorFactory.HUE_RED;
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: org.telegram.ui.PhotoViewer.41
                        {
                            PhotoViewer.this = this;
                        }

                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view2, Outline outline) {
                            outline.setRoundRect(0, 0, view2.getMeasuredWidth(), view2.getMeasuredHeight(), (1.0f - PhotoViewer.this.inlineOutAnimationProgress) * AndroidUtilities.m103dp(10.0f) * (1.0f / f));
                        }
                    };
                    view.setOutlineProvider(viewOutlineProvider);
                    view.setClipToOutline(true);
                    this.textureImageView.setOutlineProvider(viewOutlineProvider);
                    this.textureImageView.setClipToOutline(true);
                    FirstFrameView firstFrameView2 = this.firstFrameView;
                    if (firstFrameView2 != null) {
                        firstFrameView2.setOutlineProvider(viewOutlineProvider);
                        this.firstFrameView.setClipToOutline(true);
                    }
                } else {
                    PipVideoOverlay.dismiss(true);
                }
            } else {
                this.clippingImageProgress = BitmapDescriptorFactory.HUE_RED;
            }
            try {
                this.isVisible = true;
                this.isVisibleOrAnimating = true;
                ((WindowManager) this.parentActivity.getSystemService("window")).addView(this.windowView, this.windowLayoutParams);
                onShowView();
                PlaceProviderObject placeProviderObject = this.currentPlaceObject;
                if (placeProviderObject != null) {
                    placeProviderObject.imageReceiver.setVisible(false, false);
                }
            } catch (Exception e) {
                FileLog.m97e(e);
            }
            if (this.usedSurfaceView) {
                this.videoPlayer.player.setVideoTextureView(null);
                this.videoPlayer.setSurfaceView(this.videoSurfaceView);
                this.videoSurfaceView.setVisibility(4);
                this.waitingForFirstTextureUpload = 2;
                this.changingTextureView = false;
                this.containerView.invalidate();
                if (Build.VERSION.SDK_INT >= 21) {
                    this.waitingForDraw = 4;
                }
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.waitingForDraw = 4;
            }
        }
    }

    private void onShowView() {
        Activity activity = this.parentActivity;
        if (activity instanceof LaunchActivity) {
            ((LaunchActivity) activity).addOnUserLeaveHintListener(this.onUserLeaveHintListener);
        }
    }

    private void onHideView() {
        Activity activity = this.parentActivity;
        if (activity instanceof LaunchActivity) {
            ((LaunchActivity) activity).removeOnUserLeaveHintListener(this.onUserLeaveHintListener);
        }
        BaseFragment baseFragment = this.parentFragment;
        if (baseFragment == null || baseFragment.getFragmentView() == null) {
            return;
        }
        this.clippingImageProgress = 1.0f;
        View fragmentView = this.parentFragment.getFragmentView();
        fragmentView.setScaleX(1.0f);
        fragmentView.setScaleY(1.0f);
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        if (chatAttachAlert != null) {
            BottomSheet.ContainerView container = chatAttachAlert.getContainer();
            container.setScaleX(1.0f);
            container.setScaleY(1.0f);
        }
    }

    public void onUserLeaveHint() {
        if (this.pipItem.getAlpha() == 1.0f && AndroidUtilities.checkInlinePermissions(this.parentActivity) && !PipVideoOverlay.isVisible() && this.isPlaying) {
            if (this.isEmbedVideo) {
                PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
                if (photoViewerWebView == null || photoViewerWebView.isInAppOnly() || !this.photoViewerWebView.openInPip()) {
                    return;
                }
                this.pipVideoOverlayAnimateFlag = false;
                if (PipInstance != null) {
                    PipInstance.destroyPhotoViewer();
                }
                this.isInline = true;
                PipInstance = Instance;
                Instance = null;
                this.isVisible = false;
                PlaceProviderObject placeProviderObject = this.currentPlaceObject;
                if (placeProviderObject != null && !placeProviderObject.imageReceiver.getVisible()) {
                    this.currentPlaceObject.imageReceiver.setVisible(true, true);
                }
                this.clippingImageProgress = 1.0f;
                this.containerView.invalidate();
                dismissInternal();
                return;
            }
            this.pipVideoOverlayAnimateFlag = false;
            switchToPip(false);
        }
    }

    public void updateVideoSeekPreviewPosition() {
        int thumbX = (this.videoPlayerSeekbar.getThumbX() + AndroidUtilities.m102dp(2)) - (this.videoPreviewFrame.getMeasuredWidth() / 2);
        int m102dp = AndroidUtilities.m102dp(10);
        int measuredWidth = (this.videoPlayerControlFrameLayout.getMeasuredWidth() - AndroidUtilities.m102dp(10)) - (this.videoPreviewFrame.getMeasuredWidth() / 2);
        if (thumbX < m102dp) {
            thumbX = m102dp;
        } else if (thumbX >= measuredWidth) {
            thumbX = measuredWidth;
        }
        this.videoPreviewFrame.setTranslationX(thumbX);
    }

    public void showVideoSeekPreviewPosition(boolean z) {
        PhotoViewerWebView photoViewerWebView;
        if (!z || this.videoPreviewFrame.getTag() == null) {
            if (z || this.videoPreviewFrame.getTag() != null) {
                if (z && !this.videoPreviewFrame.isReady() && ((photoViewerWebView = this.photoViewerWebView) == null || !photoViewerWebView.isYouTube() || !this.photoViewerWebView.hasYoutubeStoryboards())) {
                    this.needShowOnReady = true;
                    return;
                }
                AnimatorSet animatorSet = this.videoPreviewFrameAnimation;
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
                this.videoPreviewFrame.setTag(z ? 1 : null);
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.videoPreviewFrameAnimation = animatorSet2;
                Animator[] animatorArr = new Animator[1];
                VideoSeekPreviewImage videoSeekPreviewImage = this.videoPreviewFrame;
                Property property = View.ALPHA;
                float[] fArr = new float[1];
                fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                animatorArr[0] = ObjectAnimator.ofFloat(videoSeekPreviewImage, property, fArr);
                animatorSet2.playTogether(animatorArr);
                this.videoPreviewFrameAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.42
                    {
                        PhotoViewer.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        PhotoViewer.this.videoPreviewFrameAnimation = null;
                    }
                });
                this.videoPreviewFrameAnimation.setDuration(180L);
                this.videoPreviewFrameAnimation.start();
            }
        }
    }

    private void createVideoControlsInterface() {
        VideoPlayerControlFrameLayout videoPlayerControlFrameLayout = new VideoPlayerControlFrameLayout(this.containerView.getContext());
        this.videoPlayerControlFrameLayout = videoPlayerControlFrameLayout;
        this.containerView.addView(videoPlayerControlFrameLayout, LayoutHelper.createFrame(-1, 48, 83));
        final VideoPlayerSeekBar.SeekBarDelegate seekBarDelegate = new VideoPlayerSeekBar.SeekBarDelegate() { // from class: org.telegram.ui.PhotoViewer.43
            {
                PhotoViewer.this = this;
            }

            @Override // org.telegram.p042ui.Components.VideoPlayerSeekBar.SeekBarDelegate
            public void onSeekBarDrag(float f) {
                if (PhotoViewer.this.videoPlayer != null || (PhotoViewer.this.photoViewerWebView != null && PhotoViewer.this.photoViewerWebView.isControllable())) {
                    if (!PhotoViewer.this.inPreview && PhotoViewer.this.videoTimelineViewContainer.getVisibility() == 0) {
                        f = PhotoViewer.this.videoTimelineView.getLeftProgress() + ((PhotoViewer.this.videoTimelineView.getRightProgress() - PhotoViewer.this.videoTimelineView.getLeftProgress()) * f);
                    }
                    long videoDuration = PhotoViewer.this.getVideoDuration();
                    if (videoDuration == C0479C.TIME_UNSET) {
                        PhotoViewer.this.seekToProgressPending = f;
                    } else {
                        PhotoViewer.this.seekVideoOrWebTo((int) (f * ((float) videoDuration)));
                    }
                    PhotoViewer.this.showVideoSeekPreviewPosition(false);
                    PhotoViewer.this.needShowOnReady = false;
                }
            }

            @Override // org.telegram.p042ui.Components.VideoPlayerSeekBar.SeekBarDelegate
            public void onSeekBarContinuousDrag(float f) {
                if (PhotoViewer.this.photoViewerWebView == null || !PhotoViewer.this.photoViewerWebView.isYouTube() || PhotoViewer.this.videoPreviewFrame == null) {
                    if (PhotoViewer.this.videoPlayer != null && PhotoViewer.this.videoPreviewFrame != null) {
                        PhotoViewer.this.videoPreviewFrame.setProgress(f, PhotoViewer.this.videoPlayerSeekbar.getWidth());
                    }
                } else {
                    PhotoViewer.this.videoPreviewFrame.setProgressForYouTube(PhotoViewer.this.photoViewerWebView, f, PhotoViewer.this.videoPlayerSeekbar.getWidth());
                }
                PhotoViewer.this.showVideoSeekPreviewPosition(true);
                PhotoViewer.this.updateVideoSeekPreviewPosition();
            }
        };
        FloatSeekBarAccessibilityDelegate floatSeekBarAccessibilityDelegate = new FloatSeekBarAccessibilityDelegate() { // from class: org.telegram.ui.PhotoViewer.44
            {
                PhotoViewer.this = this;
            }

            @Override // org.telegram.p042ui.Components.FloatSeekBarAccessibilityDelegate
            public float getProgress() {
                return PhotoViewer.this.videoPlayerSeekbar.getProgress();
            }

            @Override // org.telegram.p042ui.Components.FloatSeekBarAccessibilityDelegate
            public void setProgress(float f) {
                seekBarDelegate.onSeekBarDrag(f);
                PhotoViewer.this.videoPlayerSeekbar.setProgress(f);
                PhotoViewer.this.videoPlayerSeekbarView.invalidate();
            }

            @Override // org.telegram.p042ui.Components.SeekBarAccessibilityDelegate
            public String getContentDescription(View view) {
                return LocaleController.formatString("AccDescrPlayerDuration", C3630R.string.AccDescrPlayerDuration, LocaleController.formatPluralString("Minutes", PhotoViewer.this.videoPlayerCurrentTime[0], new Object[0]) + ' ' + LocaleController.formatPluralString("Seconds", PhotoViewer.this.videoPlayerCurrentTime[1], new Object[0]), LocaleController.formatPluralString("Minutes", PhotoViewer.this.videoPlayerTotalTime[0], new Object[0]) + ' ' + LocaleController.formatPluralString("Seconds", PhotoViewer.this.videoPlayerTotalTime[1], new Object[0]));
            }
        };
        View view = new View(this.containerView.getContext()) { // from class: org.telegram.ui.PhotoViewer.45
            {
                PhotoViewer.this = this;
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                PhotoViewer.this.videoPlayerSeekbar.draw(canvas, this);
            }
        };
        this.videoPlayerSeekbarView = view;
        view.setAccessibilityDelegate(floatSeekBarAccessibilityDelegate);
        this.videoPlayerSeekbarView.setImportantForAccessibility(1);
        this.videoPlayerControlFrameLayout.addView(this.videoPlayerSeekbarView, LayoutHelper.createFrame(-1, -1));
        VideoPlayerSeekBar videoPlayerSeekBar = new VideoPlayerSeekBar(this.videoPlayerSeekbarView);
        this.videoPlayerSeekbar = videoPlayerSeekBar;
        videoPlayerSeekBar.setHorizontalPadding(AndroidUtilities.m102dp(2));
        this.videoPlayerSeekbar.setColors(872415231, 872415231, -1, -1, -1, 1509949439);
        this.videoPlayerSeekbar.setDelegate(seekBarDelegate);
        VideoSeekPreviewImage videoSeekPreviewImage = new VideoSeekPreviewImage(this.containerView.getContext(), new VideoSeekPreviewImage.VideoSeekPreviewImageDelegate() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda98
            @Override // org.telegram.p042ui.Components.VideoSeekPreviewImage.VideoSeekPreviewImageDelegate
            public final void onReady() {
                PhotoViewer.this.lambda$createVideoControlsInterface$51();
            }
        }) { // from class: org.telegram.ui.PhotoViewer.46
            {
                PhotoViewer.this = this;
            }

            @Override // android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                PhotoViewer.this.updateVideoSeekPreviewPosition();
            }

            @Override // android.view.View
            public void setVisibility(int i) {
                super.setVisibility(i);
                if (i == 0) {
                    PhotoViewer.this.updateVideoSeekPreviewPosition();
                }
            }
        };
        this.videoPreviewFrame = videoSeekPreviewImage;
        videoSeekPreviewImage.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.containerView.addView(this.videoPreviewFrame, LayoutHelper.createFrame(-2, -2, 83, 0, 0, 0, 58));
        SimpleTextView simpleTextView = new SimpleTextView(this.containerView.getContext());
        this.videoPlayerTime = simpleTextView;
        simpleTextView.setTextColor(-1);
        this.videoPlayerTime.setGravity(53);
        this.videoPlayerTime.setTextSize(14);
        this.videoPlayerTime.setImportantForAccessibility(2);
        this.videoPlayerControlFrameLayout.addView(this.videoPlayerTime, LayoutHelper.createFrame(-2, -2, 53, 0, 15, 12, 0));
        ImageView imageView = new ImageView(this.containerView.getContext());
        this.exitFullscreenButton = imageView;
        imageView.setImageResource(C3630R.C3632drawable.msg_minvideo);
        this.exitFullscreenButton.setContentDescription(LocaleController.getString("AccExitFullscreen", C3630R.string.AccExitFullscreen));
        this.exitFullscreenButton.setScaleType(ImageView.ScaleType.CENTER);
        this.exitFullscreenButton.setBackground(Theme.createSelectorDrawable(1090519039));
        this.exitFullscreenButton.setVisibility(4);
        this.videoPlayerControlFrameLayout.addView(this.exitFullscreenButton, LayoutHelper.createFrame(48, 48, 53));
        this.exitFullscreenButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda43
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PhotoViewer.this.lambda$createVideoControlsInterface$52(view2);
            }
        });
    }

    public /* synthetic */ void lambda$createVideoControlsInterface$51() {
        if (this.needShowOnReady) {
            showVideoSeekPreviewPosition(true);
        }
    }

    public /* synthetic */ void lambda$createVideoControlsInterface$52(View view) {
        Activity activity = this.parentActivity;
        if (activity == null) {
            return;
        }
        this.wasRotated = false;
        this.fullscreenedByButton = 2;
        if (this.prevOrientation == -10) {
            this.prevOrientation = activity.getRequestedOrientation();
        }
        this.parentActivity.setRequestedOrientation(1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0067, code lost:
        if (r4 != null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int[] fixVideoWidthHeight(int r8, int r9) {
        /*
            r7 = this;
            java.lang.String r0 = "video/avc"
            r1 = 2
            int[] r1 = new int[r1]
            r2 = 0
            r1[r2] = r8
            r3 = 1
            r1[r3] = r9
            int r4 = android.os.Build.VERSION.SDK_INT
            r5 = 21
            if (r4 < r5) goto L6a
            r4 = 0
            android.media.MediaCodec r4 = android.media.MediaCodec.createEncoderByType(r0)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            android.media.MediaCodecInfo r5 = r4.getCodecInfo()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            android.media.MediaCodecInfo$CodecCapabilities r0 = r5.getCapabilitiesForType(r0)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            android.media.MediaCodecInfo$VideoCapabilities r0 = r0.getVideoCapabilities()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            android.util.Range r5 = r0.getSupportedWidths()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            android.util.Range r0 = r0.getSupportedHeights()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            java.lang.Comparable r5 = r5.getLower()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            int r5 = r5.intValue()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            float r8 = (float) r8     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            r6 = 1098907648(0x41800000, float:16.0)
            float r8 = r8 / r6
            int r8 = java.lang.Math.round(r8)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            int r8 = r8 * 16
            int r8 = java.lang.Math.max(r5, r8)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            r1[r2] = r8     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            java.lang.Comparable r8 = r0.getLower()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            java.lang.Integer r8 = (java.lang.Integer) r8     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            int r8 = r8.intValue()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            float r9 = (float) r9     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            float r9 = r9 / r6
            int r9 = java.lang.Math.round(r9)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            int r9 = r9 * 16
            int r8 = java.lang.Math.max(r8, r9)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
            r1[r3] = r8     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L67
        L5c:
            r4.release()     // Catch: java.lang.Exception -> L6a
            goto L6a
        L60:
            r8 = move-exception
            if (r4 == 0) goto L66
            r4.release()     // Catch: java.lang.Exception -> L66
        L66:
            throw r8
        L67:
            if (r4 == 0) goto L6a
            goto L5c
        L6a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.fixVideoWidthHeight(int, int):int[]");
    }

    public VideoEditedInfo getCurrentVideoEditedInfo() {
        int i;
        long j;
        boolean z = false;
        ArrayList<VideoEditedInfo.MediaEntity> arrayList = null;
        if (!this.isCurrentVideo && hasAnimatedMediaEntities() && this.centerImage.getBitmapWidth() > 0) {
            float f = this.sendPhotoType == 1 ? 800.0f : 854.0f;
            VideoEditedInfo videoEditedInfo = new VideoEditedInfo();
            videoEditedInfo.startTime = 0L;
            videoEditedInfo.start = (float) 0;
            videoEditedInfo.endTime = Math.min((long) C0479C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS, this.editState.averageDuration);
            while (true) {
                j = videoEditedInfo.endTime;
                if (j <= 0 || j >= 1000) {
                    break;
                }
                videoEditedInfo.endTime = j * 2;
            }
            videoEditedInfo.end = (float) j;
            videoEditedInfo.compressQuality = this.selectedCompression;
            videoEditedInfo.rotationValue = 0;
            videoEditedInfo.originalPath = this.currentImagePath;
            long j2 = videoEditedInfo.endTime;
            videoEditedInfo.estimatedSize = (int) ((((float) j2) / 1000.0f) * 115200.0f);
            videoEditedInfo.estimatedDuration = j2;
            videoEditedInfo.framerate = 30;
            videoEditedInfo.originalDuration = j2;
            EditState editState = this.editState;
            videoEditedInfo.filterState = editState.savedFilterState;
            String str = editState.croppedPaintPath;
            if (str != null) {
                videoEditedInfo.paintPath = str;
                ArrayList<VideoEditedInfo.MediaEntity> arrayList2 = editState.croppedMediaEntities;
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    arrayList = this.editState.croppedMediaEntities;
                }
                videoEditedInfo.mediaEntities = arrayList;
            } else {
                videoEditedInfo.paintPath = editState.paintPath;
                videoEditedInfo.mediaEntities = editState.mediaEntities;
            }
            videoEditedInfo.isPhoto = true;
            int bitmapWidth = this.centerImage.getBitmapWidth();
            int bitmapHeight = this.centerImage.getBitmapHeight();
            MediaController.CropState cropState = this.editState.cropState;
            if (cropState != null) {
                int i2 = cropState.transformRotation;
                if (i2 == 90 || i2 == 270) {
                    bitmapHeight = bitmapWidth;
                    bitmapWidth = bitmapHeight;
                }
                bitmapWidth = (int) (bitmapWidth * cropState.cropPw);
                bitmapHeight = (int) (bitmapHeight * cropState.cropPh);
            }
            if (this.sendPhotoType == 1) {
                bitmapWidth = bitmapHeight;
            }
            float f2 = bitmapWidth;
            float f3 = bitmapHeight;
            float max = Math.max(f2 / f, f3 / f);
            if (max < 1.0f) {
                max = 1.0f;
            }
            int i3 = (int) (f2 / max);
            int i4 = (int) (f3 / max);
            if (i3 % 16 != 0) {
                i3 = Math.max(1, Math.round(i3 / 16.0f)) * 16;
            }
            if (i4 % 16 != 0) {
                i4 = Math.max(1, Math.round(i4 / 16.0f)) * 16;
            }
            videoEditedInfo.resultWidth = i3;
            videoEditedInfo.originalWidth = i3;
            videoEditedInfo.resultHeight = i4;
            videoEditedInfo.originalHeight = i4;
            videoEditedInfo.bitrate = -1;
            videoEditedInfo.muted = true;
            videoEditedInfo.avatarStartTime = 0L;
            return videoEditedInfo;
        } else if (!this.isCurrentVideo || this.currentPlayingVideoFile == null || this.compressionsCount == 0) {
            return null;
        } else {
            VideoEditedInfo videoEditedInfo2 = new VideoEditedInfo();
            videoEditedInfo2.startTime = this.startTime;
            videoEditedInfo2.endTime = this.endTime;
            videoEditedInfo2.start = this.videoCutStart;
            videoEditedInfo2.end = this.videoCutEnd;
            videoEditedInfo2.compressQuality = this.selectedCompression;
            videoEditedInfo2.rotationValue = this.rotationValue;
            videoEditedInfo2.originalWidth = this.originalWidth;
            videoEditedInfo2.originalHeight = this.originalHeight;
            videoEditedInfo2.bitrate = this.bitrate;
            videoEditedInfo2.originalPath = this.currentPathObject;
            long j3 = this.estimatedSize;
            if (j3 == 0) {
                j3 = 1;
            }
            videoEditedInfo2.estimatedSize = j3;
            videoEditedInfo2.estimatedDuration = this.estimatedDuration;
            videoEditedInfo2.framerate = this.videoFramerate;
            videoEditedInfo2.originalDuration = this.videoDuration * 1000.0f;
            EditState editState2 = this.editState;
            videoEditedInfo2.filterState = editState2.savedFilterState;
            String str2 = editState2.croppedPaintPath;
            if (str2 != null) {
                videoEditedInfo2.paintPath = str2;
                ArrayList<VideoEditedInfo.MediaEntity> arrayList3 = editState2.croppedMediaEntities;
                if (arrayList3 != null && !arrayList3.isEmpty()) {
                    arrayList = this.editState.croppedMediaEntities;
                }
                videoEditedInfo2.mediaEntities = arrayList;
            } else {
                videoEditedInfo2.paintPath = editState2.paintPath;
                ArrayList<VideoEditedInfo.MediaEntity> arrayList4 = editState2.mediaEntities;
                if (arrayList4 != null && !arrayList4.isEmpty()) {
                    arrayList = this.editState.mediaEntities;
                }
                videoEditedInfo2.mediaEntities = arrayList;
            }
            if (this.sendPhotoType != 1 && !this.muteVideo && (this.compressItem.getTag() == null || (videoEditedInfo2.resultWidth == this.originalWidth && videoEditedInfo2.resultHeight == this.originalHeight))) {
                videoEditedInfo2.resultWidth = this.originalWidth;
                videoEditedInfo2.resultHeight = this.originalHeight;
                videoEditedInfo2.bitrate = this.muteVideo ? -1 : this.originalBitrate;
            } else {
                if (this.muteVideo || this.sendPhotoType == 1) {
                    this.selectedCompression = 1;
                    updateWidthHeightBitrateForCompression();
                }
                videoEditedInfo2.resultWidth = this.resultWidth;
                videoEditedInfo2.resultHeight = this.resultHeight;
                if (!this.muteVideo && this.sendPhotoType != 1) {
                    r5 = this.bitrate;
                }
                videoEditedInfo2.bitrate = r5;
            }
            MediaController.CropState cropState2 = this.editState.cropState;
            videoEditedInfo2.cropState = cropState2;
            if (cropState2 != null) {
                videoEditedInfo2.rotationValue += cropState2.transformRotation;
                while (true) {
                    i = videoEditedInfo2.rotationValue;
                    if (i < 360) {
                        break;
                    }
                    videoEditedInfo2.rotationValue = i - 360;
                }
                if (i == 90 || i == 270) {
                    MediaController.CropState cropState3 = videoEditedInfo2.cropState;
                    cropState3.transformWidth = (int) (videoEditedInfo2.resultWidth * cropState3.cropPh);
                    cropState3.transformHeight = (int) (videoEditedInfo2.resultHeight * cropState3.cropPw);
                } else {
                    MediaController.CropState cropState4 = videoEditedInfo2.cropState;
                    cropState4.transformWidth = (int) (videoEditedInfo2.resultWidth * cropState4.cropPw);
                    cropState4.transformHeight = (int) (videoEditedInfo2.resultHeight * cropState4.cropPh);
                }
                if (this.sendPhotoType == 1) {
                    MediaController.CropState cropState5 = videoEditedInfo2.cropState;
                    if (cropState5.transformWidth > 800) {
                        cropState5.transformWidth = 800;
                    }
                    if (cropState5.transformHeight > 800) {
                        cropState5.transformHeight = 800;
                    }
                    int min = Math.min(cropState5.transformWidth, cropState5.transformHeight);
                    cropState5.transformHeight = min;
                    cropState5.transformWidth = min;
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m100d("original transformed w = " + videoEditedInfo2.cropState.transformWidth + " h = " + videoEditedInfo2.cropState.transformHeight + " r = " + videoEditedInfo2.rotationValue);
                }
                MediaController.CropState cropState6 = videoEditedInfo2.cropState;
                int[] fixVideoWidthHeight = fixVideoWidthHeight(cropState6.transformWidth, cropState6.transformHeight);
                MediaController.CropState cropState7 = videoEditedInfo2.cropState;
                cropState7.transformWidth = fixVideoWidthHeight[0];
                cropState7.transformHeight = fixVideoWidthHeight[1];
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m100d("fixed transformed w = " + videoEditedInfo2.cropState.transformWidth + " h = " + videoEditedInfo2.cropState.transformHeight);
                }
            }
            if (this.sendPhotoType == 1) {
                videoEditedInfo2.avatarStartTime = this.avatarStartTime;
                videoEditedInfo2.originalBitrate = this.originalBitrate;
            }
            if (this.muteVideo || this.sendPhotoType == 1) {
                z = true;
            }
            videoEditedInfo2.muted = z;
            return videoEditedInfo2;
        }
    }

    private boolean supportsSendingNewEntities() {
        TLRPC$EncryptedChat tLRPC$EncryptedChat;
        ChatActivity chatActivity = this.parentChatActivity;
        return chatActivity != null && ((tLRPC$EncryptedChat = chatActivity.currentEncryptedChat) == null || AndroidUtilities.getPeerLayerVersion(tLRPC$EncryptedChat.layer) >= 101);
    }

    public void closeCaptionEnter(boolean z) {
        int i = this.currentIndex;
        if (i < 0 || i >= this.imagesArrLocals.size() || !isCaptionOpen()) {
            return;
        }
        this.imagesArrLocals.get(this.currentIndex);
        if (z) {
            applyCaption();
        }
        if (this.captionEdit.editText.isPopupShowing()) {
            this.captionEdit.editText.hidePopup(true);
        }
        this.captionEdit.editText.closeKeyboard();
    }

    public CharSequence applyCaption() {
        int i;
        if (!isVisible() || this.placeProvider == null || (i = this.currentIndex) < 0 || i >= this.imagesArrLocals.size()) {
            return null;
        }
        Object obj = this.imagesArrLocals.get(this.currentIndex);
        CharSequence text = this.captionEdit.getText();
        CharSequence[] charSequenceArr = {text};
        if (this.hasCaptionForAllMedia && !TextUtils.equals(this.captionForAllMedia, text) && this.placeProvider.getPhotoIndex(this.currentIndex) != 0 && this.placeProvider.getSelectedCount() > 0) {
            this.hasCaptionForAllMedia = false;
        }
        ArrayList<TLRPC$MessageEntity> entities = MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr, supportsSendingNewEntities());
        this.captionForAllMedia = text;
        if (obj instanceof MediaController.PhotoEntry) {
            MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
            photoEntry.caption = charSequenceArr[0];
            photoEntry.entities = entities;
        } else if (obj instanceof MediaController.SearchImage) {
            MediaController.SearchImage searchImage = (MediaController.SearchImage) obj;
            searchImage.caption = charSequenceArr[0];
            searchImage.entities = entities;
        }
        if (text.length() != 0 && !this.placeProvider.isPhotoChecked(this.currentIndex)) {
            setPhotoChecked();
        }
        PhotoViewerProvider photoViewerProvider = this.placeProvider;
        if (photoViewerProvider != null) {
            photoViewerProvider.onApplyCaption(text);
        }
        return charSequenceArr[0];
    }

    public void updateVideoPlayerTime() {
        String format;
        String format2;
        Arrays.fill(this.videoPlayerCurrentTime, 0);
        Arrays.fill(this.videoPlayerTotalTime, 0);
        VideoPlayer videoPlayer = this.videoPlayer;
        long j = 0;
        if (videoPlayer != null) {
            long max = Math.max(0L, videoPlayer.getCurrentPosition());
            if (this.shownControlsByEnd && !this.actionBarWasShownBeforeByEnd) {
                max = 0;
            }
            long max2 = Math.max(0L, this.videoPlayer.getDuration());
            if (!this.inPreview && this.videoTimelineViewContainer.getVisibility() == 0) {
                max2 = ((float) max2) * (this.videoTimelineView.getRightProgress() - this.videoTimelineView.getLeftProgress());
                max = ((float) max) - (this.videoTimelineView.getLeftProgress() * ((float) max2));
                if (max > max2) {
                    max = max2;
                }
            }
            long j2 = max / 1000;
            long j3 = max2 / 1000;
            int[] iArr = this.videoPlayerCurrentTime;
            iArr[0] = (int) (j2 / 60);
            iArr[1] = (int) (j2 % 60);
            int[] iArr2 = this.videoPlayerTotalTime;
            iArr2[0] = (int) (j3 / 60);
            iArr2[1] = (int) (j3 % 60);
        } else {
            PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
            if (photoViewerWebView != null && photoViewerWebView.isControllable()) {
                long max3 = Math.max(0, this.photoViewerWebView.getCurrentPosition());
                if (!this.shownControlsByEnd || this.actionBarWasShownBeforeByEnd) {
                    j = max3;
                }
                long max4 = Math.max(0, this.photoViewerWebView.getVideoDuration());
                if (!this.inPreview && this.videoTimelineViewContainer.getVisibility() == 0) {
                    max4 = ((float) max4) * (this.videoTimelineView.getRightProgress() - this.videoTimelineView.getLeftProgress());
                    j = ((float) j) - (this.videoTimelineView.getLeftProgress() * ((float) max4));
                    if (j > max4) {
                        j = max4;
                    }
                }
                long j4 = j / 1000;
                long j5 = max4 / 1000;
                int[] iArr3 = this.videoPlayerCurrentTime;
                iArr3[0] = (int) (j4 / 60);
                iArr3[1] = (int) (j4 % 60);
                int[] iArr4 = this.videoPlayerTotalTime;
                iArr4[0] = (int) (j5 / 60);
                iArr4[1] = (int) (j5 % 60);
            }
        }
        int[] iArr5 = this.videoPlayerCurrentTime;
        if (iArr5[0] >= 60) {
            format = format(iArr5[0] / 60, iArr5[0] % 60, iArr5[1]);
        } else {
            format = format(iArr5[0], iArr5[1]);
        }
        int[] iArr6 = this.videoPlayerTotalTime;
        if (iArr6[0] >= 60) {
            format2 = format(iArr6[0] / 60, iArr6[0] % 60, iArr6[1]);
        } else {
            format2 = format(iArr6[0], iArr6[1]);
        }
        this.videoPlayerTime.setText(format + " / " + format2);
        if (Objects.equals(this.lastControlFrameDuration, format2)) {
            return;
        }
        this.lastControlFrameDuration = format2;
        this.videoPlayerControlFrameLayout.requestLayout();
    }

    private String format(int i, int i2, int i3) {
        char[] cArr = new char[8];
        cArr[0] = (char) (((i >= 100 ? 99 : i) / 10) + 48);
        if (i >= 100) {
            i = 99;
        }
        cArr[1] = (char) ((i % 10) + 48);
        cArr[2] = ':';
        cArr[3] = (char) (((i2 >= 100 ? 99 : i2) / 10) + 48);
        if (i2 >= 100) {
            i2 = 99;
        }
        cArr[4] = (char) ((i2 % 10) + 48);
        cArr[5] = ':';
        cArr[6] = (char) (((i3 >= 100 ? 99 : i3) / 10) + 48);
        if (i3 >= 100) {
            i3 = 99;
        }
        cArr[7] = (char) ((i3 % 10) + 48);
        return new String(cArr);
    }

    private String format(int i, int i2) {
        char[] cArr = new char[5];
        cArr[0] = (char) (((i >= 100 ? 99 : i) / 10) + 48);
        if (i >= 100) {
            i = 99;
        }
        cArr[1] = (char) ((i % 10) + 48);
        cArr[2] = ':';
        cArr[3] = (char) (((i2 >= 100 ? 99 : i2) / 10) + 48);
        if (i2 >= 100) {
            i2 = 99;
        }
        cArr[4] = (char) ((i2 % 10) + 48);
        return new String(cArr);
    }

    private void checkBufferedProgress(float f) {
        MessageObject messageObject;
        TLRPC$Document document;
        if (!this.isStreaming || this.parentActivity == null || this.streamingAlertShown || this.videoPlayer == null || (messageObject = this.currentMessageObject) == null || (document = messageObject.getDocument()) == null || this.currentMessageObject.getDuration() < 20.0d) {
            return;
        }
        boolean z = document.size >= 2147483648L;
        if (!((DownloadController.getInstance(this.currentAccount).getAutodownloadMask() & 4) != 0) || f >= 0.9f) {
            return;
        }
        long j = document.size;
        if (((float) j) * f >= 5242880.0f || (f >= 0.5f && j >= 2097152)) {
            if (Math.abs(SystemClock.elapsedRealtime() - this.startedPlayTime) >= (z ? 10000 : AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS)) {
                if (this.videoPlayer.getDuration() == C0479C.TIME_UNSET) {
                    Toast.makeText(this.parentActivity, LocaleController.getString("VideoDoesNotSupportStreaming", C3630R.string.VideoDoesNotSupportStreaming), 1).show();
                }
                this.streamingAlertShown = true;
            }
        }
    }

    public void updateColors() {
        int i = Theme.key_dialogFloatingButton;
        int themedColor = getThemedColor(i);
        ImageView imageView = this.pickerViewSendButton;
        if (imageView != null) {
            Drawable background = imageView.getBackground();
            Theme.setSelectorDrawableColor(background, themedColor, false);
            Theme.setSelectorDrawableColor(background, getThemedColor(Build.VERSION.SDK_INT >= 21 ? Theme.key_dialogFloatingButtonPressed : i), true);
            this.pickerViewSendButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_dialogFloatingIcon), PorterDuff.Mode.MULTIPLY));
        }
        CheckBox checkBox = this.checkImageView;
        if (checkBox != null) {
            checkBox.setColor(getThemedColor(i), -1);
        }
        PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(themedColor, PorterDuff.Mode.MULTIPLY);
        ImageView imageView2 = this.paintItem;
        if (imageView2 != null && imageView2.getColorFilter() != null) {
            this.paintItem.setColorFilter(porterDuffColorFilter);
        }
        ImageView imageView3 = this.cropItem;
        if (imageView3 != null && imageView3.getColorFilter() != null) {
            this.cropItem.setColorFilter(porterDuffColorFilter);
        }
        ImageView imageView4 = this.tuneItem;
        if (imageView4 != null && imageView4.getColorFilter() != null) {
            this.tuneItem.setColorFilter(porterDuffColorFilter);
        }
        ImageView imageView5 = this.rotateItem;
        if (imageView5 != null && imageView5.getColorFilter() != null) {
            this.rotateItem.setColorFilter(porterDuffColorFilter);
        }
        ImageView imageView6 = this.mirrorItem;
        if (imageView6 != null && imageView6.getColorFilter() != null) {
            this.mirrorItem.setColorFilter(porterDuffColorFilter);
        }
        PickerBottomLayoutViewer pickerBottomLayoutViewer = this.editorDoneLayout;
        if (pickerBottomLayoutViewer != null) {
            pickerBottomLayoutViewer.doneButton.setTextColor(themedColor);
        }
        PickerBottomLayoutViewer pickerBottomLayoutViewer2 = this.qualityPicker;
        if (pickerBottomLayoutViewer2 != null) {
            pickerBottomLayoutViewer2.doneButton.setTextColor(themedColor);
        }
        LPhotoPaintView lPhotoPaintView = this.photoPaintView;
        if (lPhotoPaintView != null) {
            lPhotoPaintView.updateColors();
        }
        PhotoFilterView photoFilterView = this.photoFilterView;
        if (photoFilterView != null) {
            photoFilterView.updateColors();
        }
        CaptionPhotoViewer captionPhotoViewer = this.captionEdit;
        if (captionPhotoViewer != null) {
            captionPhotoViewer.updateColors(this.resourcesProvider);
        }
        VideoTimelinePlayView videoTimelinePlayView = this.videoTimelineView;
        if (videoTimelinePlayView != null) {
            videoTimelinePlayView.invalidate();
        }
        SelectedPhotosListView selectedPhotosListView = this.selectedPhotosListView;
        if (selectedPhotosListView != null) {
            int childCount = selectedPhotosListView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.selectedPhotosListView.getChildAt(i2);
                if (childAt instanceof PhotoPickerPhotoCell) {
                    ((PhotoPickerPhotoCell) childAt).updateColors();
                }
            }
        }
        StickersAlert stickersAlert = this.masksAlert;
        if (stickersAlert != null) {
            stickersAlert.updateColors(true);
        }
    }

    public void injectVideoPlayer(VideoPlayer videoPlayer) {
        this.injectingVideoPlayer = videoPlayer;
    }

    public void injectVideoPlayerSurface(SurfaceTexture surfaceTexture) {
        this.injectingVideoPlayerSurface = surfaceTexture;
    }

    public boolean isInjectingVideoPlayer() {
        return this.injectingVideoPlayer != null;
    }

    public void scheduleActionBarHide() {
        scheduleActionBarHide(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
    }

    private void scheduleActionBarHide(int i) {
        if (isAccessibilityEnabled()) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(this.hideActionBarRunnable);
        AndroidUtilities.runOnUIThread(this.hideActionBarRunnable, i);
    }

    private boolean isAccessibilityEnabled() {
        try {
            AccessibilityManager accessibilityManager = (AccessibilityManager) this.activityContext.getSystemService("accessibility");
            if (accessibilityManager.isEnabled()) {
                return accessibilityManager.isTouchExplorationEnabled();
            }
            return false;
        } catch (Exception e) {
            FileLog.m97e(e);
            return false;
        }
    }

    public void updateWebPlayerState(boolean z, int i) {
        updatePlayerState(z, i);
    }

    public void updatePlayerState(boolean z, int i) {
        VideoPlayer videoPlayer;
        MessageObject messageObject;
        TLRPC$MessageMedia tLRPC$MessageMedia;
        TLRPC$WebPage tLRPC$WebPage;
        PhotoViewerWebView photoViewerWebView;
        if (this.videoPlayer != null || ((photoViewerWebView = this.photoViewerWebView) != null && photoViewerWebView.isControllable())) {
            PhotoViewerWebView photoViewerWebView2 = this.photoViewerWebView;
            if (photoViewerWebView2 != null && photoViewerWebView2.isControllable() && !z) {
                toggleActionBar(true, true);
            }
            PhotoViewerWebView photoViewerWebView3 = this.photoViewerWebView;
            float f = BitmapDescriptorFactory.HUE_RED;
            if (photoViewerWebView3 != null && photoViewerWebView3.isControllable() && i == 3 && getVideoDuration() >= 10000 && this.shouldSavePositionForCurrentVideo == null && this.shouldSavePositionForCurrentVideoShortTerm == null) {
                if (this.currentMessageObject != null) {
                    long videoDuration = getVideoDuration() / 1000;
                    TLRPC$Message tLRPC$Message = this.currentMessageObject.messageOwner;
                    String str = (tLRPC$Message == null || (tLRPC$MessageMedia = tLRPC$Message.media) == null || (tLRPC$WebPage = tLRPC$MessageMedia.webpage) == null) ? null : tLRPC$WebPage.url;
                    if (!TextUtils.isEmpty(str)) {
                        if (videoDuration >= 600) {
                            if (this.currentMessageObject.forceSeekTo < BitmapDescriptorFactory.HUE_RED) {
                                float f2 = ApplicationLoader.applicationContext.getSharedPreferences("media_saved_pos", 0).getFloat(str, -1.0f);
                                if (f2 > BitmapDescriptorFactory.HUE_RED && f2 < 0.999f) {
                                    this.currentMessageObject.forceSeekTo = f2;
                                    this.videoPlayerSeekbar.setProgress(f2);
                                }
                            }
                            this.shouldSavePositionForCurrentVideo = str;
                        } else if (videoDuration >= 10) {
                            SavedVideoPosition savedVideoPosition = null;
                            for (int size = this.savedVideoPositions.size() - 1; size >= 0; size--) {
                                SavedVideoPosition valueAt = this.savedVideoPositions.valueAt(size);
                                if (valueAt.timestamp < SystemClock.elapsedRealtime() - 5000) {
                                    this.savedVideoPositions.removeAt(size);
                                } else if (savedVideoPosition == null && this.savedVideoPositions.keyAt(size).equals(str)) {
                                    savedVideoPosition = valueAt;
                                }
                            }
                            MessageObject messageObject2 = this.currentMessageObject;
                            if (messageObject2.forceSeekTo < BitmapDescriptorFactory.HUE_RED && savedVideoPosition != null) {
                                float f3 = savedVideoPosition.position;
                                if (f3 > BitmapDescriptorFactory.HUE_RED && f3 < 0.999f) {
                                    messageObject2.forceSeekTo = f3;
                                    this.videoPlayerSeekbar.setProgress(f3);
                                }
                            }
                            this.shouldSavePositionForCurrentVideoShortTerm = str;
                        }
                    }
                }
                MessageObject messageObject3 = this.currentMessageObject;
                if (messageObject3 != null) {
                    float f4 = messageObject3.forceSeekTo;
                    if (f4 >= BitmapDescriptorFactory.HUE_RED) {
                        seekVideoOrWebToProgress(f4);
                        this.currentMessageObject.forceSeekTo = -1.0f;
                    }
                }
            }
            if (this.isStreaming) {
                if (i != 2 || !this.skipFirstBufferingProgress) {
                    boolean z2 = this.seekToProgressPending != BitmapDescriptorFactory.HUE_RED || i == 2;
                    if (z2) {
                        AndroidUtilities.cancelRunOnUIThread(this.hideActionBarRunnable);
                    } else {
                        scheduleActionBarHide();
                    }
                    toggleMiniProgress(z2, true);
                } else if (z) {
                    this.skipFirstBufferingProgress = false;
                }
            }
            AspectRatioFrameLayout aspectRatioFrameLayout = this.aspectRatioFrameLayout;
            if (aspectRatioFrameLayout != null) {
                aspectRatioFrameLayout.setKeepScreenOn((!z || i == 4 || i == 1) ? false : true);
            }
            if (z && i != 4 && i != 1) {
                try {
                    this.parentActivity.getWindow().addFlags(128);
                    this.keepScreenOnFlagSet = true;
                } catch (Exception e) {
                    FileLog.m97e(e);
                }
            } else {
                try {
                    this.parentActivity.getWindow().clearFlags(128);
                    this.keepScreenOnFlagSet = false;
                } catch (Exception e2) {
                    FileLog.m97e(e2);
                }
            }
            if (i == 3 || i == 1) {
                if (this.currentMessageObject != null && (videoPlayer = this.videoPlayer) != null) {
                    this.videoPreviewFrame.open(videoPlayer.getCurrentUri());
                }
                float f5 = this.seekToProgressPending;
                if (f5 != BitmapDescriptorFactory.HUE_RED) {
                    seekVideoOrWebToProgress(f5);
                    this.seekToProgressPending = BitmapDescriptorFactory.HUE_RED;
                    MessageObject messageObject4 = this.currentMessageObject;
                    if (messageObject4 != null && !FileLoader.getInstance(messageObject4.currentAccount).isLoadingVideoAny(this.currentMessageObject.getDocument())) {
                        this.skipFirstBufferingProgress = true;
                    }
                }
            }
            if (i == 3) {
                AspectRatioFrameLayout aspectRatioFrameLayout2 = this.aspectRatioFrameLayout;
                if (aspectRatioFrameLayout2 != null && aspectRatioFrameLayout2.getVisibility() != 0) {
                    this.aspectRatioFrameLayout.setVisibility(0);
                }
                if (!this.pipItem.isEnabled() && this.pipItem.getVisibility() == 0) {
                    this.pipAvailable = true;
                    this.pipItem.setEnabled(true);
                    this.pipItem.animate().alpha(1.0f).setDuration(175L).withEndAction(null).start();
                }
                this.playerWasReady = true;
                MessageObject messageObject5 = this.currentMessageObject;
                if (messageObject5 != null && messageObject5.isVideo()) {
                    AndroidUtilities.cancelRunOnUIThread(this.setLoadingRunnable);
                    FileLoader.getInstance(this.currentMessageObject.currentAccount).removeLoadingVideo(this.currentMessageObject.getDocument(), true, false);
                }
            } else if (i == 2 && z && (messageObject = this.currentMessageObject) != null && messageObject.isVideo()) {
                if (this.playerWasReady) {
                    this.setLoadingRunnable.run();
                } else {
                    AndroidUtilities.runOnUIThread(this.setLoadingRunnable, 1000L);
                }
            }
            VideoPlayer videoPlayer2 = this.videoPlayer;
            if (videoPlayer2 == null ? this.photoViewerWebView.isPlaying() : videoPlayer2.isPlaying()) {
                if (i != 4) {
                    if (!this.isPlaying) {
                        this.isPlaying = true;
                        this.photoProgressViews[0].setBackgroundState(this.isCurrentVideo ? -1 : 4, false, true);
                        PhotoProgressView photoProgressView = this.photoProgressViews[0];
                        if (this.isCurrentVideo || ((isAccessibilityEnabled() && !this.playerWasPlaying) || ((!this.playerAutoStarted || this.playerWasPlaying) && this.isActionBarVisible))) {
                            f = 1.0f;
                        }
                        photoProgressView.setIndexedAlpha(1, f, false);
                        this.playerWasPlaying = true;
                        AndroidUtilities.runOnUIThread(this.updateProgressRunnable);
                    }
                    PipVideoOverlay.updatePlayButton();
                    this.videoPlayerSeekbar.updateTimestamps(this.currentMessageObject, getVideoDuration());
                    updateVideoPlayerTime();
                }
            }
            if (this.isPlaying || i == 4) {
                if (this.currentEditMode != 3) {
                    this.photoProgressViews[0].setIndexedAlpha(1, 1.0f, i == 4);
                    PhotoProgressView[] photoProgressViewArr = this.photoProgressViews;
                    photoProgressViewArr[0].setBackgroundState(3, false, photoProgressViewArr[0].animAlphas[1] > BitmapDescriptorFactory.HUE_RED);
                }
                this.isPlaying = false;
                AndroidUtilities.cancelRunOnUIThread(this.updateProgressRunnable);
                if (i == 4) {
                    if (this.isCurrentVideo) {
                        if (!this.videoTimelineView.isDragging()) {
                            VideoTimelinePlayView videoTimelinePlayView = this.videoTimelineView;
                            videoTimelinePlayView.setProgress(videoTimelinePlayView.getLeftProgress());
                            if (!this.inPreview && (this.currentEditMode != 0 || this.videoTimelineViewContainer.getVisibility() == 0)) {
                                seekVideoOrWebToProgress(this.videoTimelineView.getLeftProgress());
                            } else {
                                seekVideoOrWebToProgress(BitmapDescriptorFactory.HUE_RED);
                            }
                            this.manuallyPaused = false;
                            cancelVideoPlayRunnable();
                            if (this.sendPhotoType != 1 && this.currentEditMode == 0 && this.switchingToMode <= 0) {
                                pauseVideoOrWeb();
                            } else {
                                playVideoOrWeb();
                            }
                            this.containerView.invalidate();
                        }
                    } else {
                        this.videoPlayerSeekbar.setProgress(BitmapDescriptorFactory.HUE_RED);
                        this.videoPlayerSeekbarView.invalidate();
                        if (!this.inPreview && this.videoTimelineViewContainer.getVisibility() == 0) {
                            seekVideoOrWebToProgress(this.videoTimelineView.getLeftProgress());
                        } else {
                            seekVideoOrWebToProgress(BitmapDescriptorFactory.HUE_RED);
                        }
                        this.manuallyPaused = false;
                        pauseVideoOrWeb();
                        if (!this.isActionBarVisible) {
                            toggleActionBar(true, true);
                        }
                    }
                    PipVideoOverlay.onVideoCompleted();
                }
            }
            PipVideoOverlay.updatePlayButton();
            this.videoPlayerSeekbar.updateTimestamps(this.currentMessageObject, getVideoDuration());
            updateVideoPlayerTime();
        }
    }

    public void playVideoOrWeb() {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.play();
            return;
        }
        PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
        if (photoViewerWebView != null) {
            photoViewerWebView.playVideo();
        }
    }

    public void pauseVideoOrWeb() {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.pause();
            return;
        }
        PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
        if (photoViewerWebView != null) {
            photoViewerWebView.pauseVideo();
        }
    }

    private void seekVideoOrWebToProgress(float f) {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.seekTo(f * ((float) videoPlayer.getDuration()));
            return;
        }
        PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
        if (photoViewerWebView != null) {
            photoViewerWebView.seekTo(f * photoViewerWebView.getVideoDuration());
        }
    }

    private void preparePlayer(Uri uri, boolean z, boolean z2) {
        preparePlayer(uri, z, z2, null);
    }

    private void preparePlayer(Uri uri, boolean z, boolean z2, MediaController.SavedFilterState savedFilterState) {
        boolean z3;
        PageBlocksAdapter pageBlocksAdapter;
        if (!z2) {
            this.currentPlayingVideoFile = uri;
        }
        if (this.parentActivity == null) {
            return;
        }
        this.streamingAlertShown = false;
        this.startedPlayTime = SystemClock.elapsedRealtime();
        this.currentVideoFinishedLoading = false;
        this.lastBufferedPositionCheck = 0L;
        this.firstAnimationDelay = true;
        this.inPreview = z2;
        releasePlayer(false);
        SavedVideoPosition savedVideoPosition = null;
        if (this.imagesArrLocals.isEmpty()) {
            createVideoTextureView(null);
        }
        if (Build.VERSION.SDK_INT >= 21 && this.textureImageView == null) {
            ImageView imageView = new ImageView(this.parentActivity);
            this.textureImageView = imageView;
            imageView.setBackgroundColor(-65536);
            this.textureImageView.setPivotX(BitmapDescriptorFactory.HUE_RED);
            this.textureImageView.setPivotY(BitmapDescriptorFactory.HUE_RED);
            this.textureImageView.setVisibility(4);
            this.containerView.addView(this.textureImageView);
        }
        checkFullscreenButton();
        if (this.orientationEventListener == null) {
            OrientationEventListener orientationEventListener = new OrientationEventListener(ApplicationLoader.applicationContext) { // from class: org.telegram.ui.PhotoViewer.47
                {
                    PhotoViewer.this = this;
                }

                @Override // android.view.OrientationEventListener
                public void onOrientationChanged(int i) {
                    if (PhotoViewer.this.orientationEventListener == null || PhotoViewer.this.aspectRatioFrameLayout == null || PhotoViewer.this.aspectRatioFrameLayout.getVisibility() != 0 || PhotoViewer.this.parentActivity == null || PhotoViewer.this.fullscreenedByButton == 0) {
                        return;
                    }
                    if (PhotoViewer.this.fullscreenedByButton != 1) {
                        if (i <= 0 || (i < 330 && i > 30)) {
                            if (!PhotoViewer.this.wasRotated || i < 240 || i > 300) {
                                return;
                            }
                            PhotoViewer.this.parentActivity.setRequestedOrientation(PhotoViewer.this.prevOrientation);
                            PhotoViewer.this.fullscreenedByButton = 0;
                            PhotoViewer.this.wasRotated = false;
                            return;
                        }
                        PhotoViewer.this.wasRotated = true;
                    } else if (i < 240 || i > 300) {
                        if (!PhotoViewer.this.wasRotated || i <= 0) {
                            return;
                        }
                        if (i >= 330 || i <= 30) {
                            PhotoViewer.this.parentActivity.setRequestedOrientation(PhotoViewer.this.prevOrientation);
                            PhotoViewer.this.fullscreenedByButton = 0;
                            PhotoViewer.this.wasRotated = false;
                        }
                    } else {
                        PhotoViewer.this.wasRotated = true;
                    }
                }
            };
            this.orientationEventListener = orientationEventListener;
            if (orientationEventListener.canDetectOrientation()) {
                this.orientationEventListener.enable();
            } else {
                this.orientationEventListener.disable();
                this.orientationEventListener = null;
            }
        }
        this.textureUploaded = false;
        this.videoSizeSet = false;
        this.videoCrossfadeStarted = false;
        this.playerWasReady = false;
        this.playerWasPlaying = false;
        this.captureFrameReadyAtTime = -1L;
        this.captureFrameAtTime = -1L;
        this.needCaptureFrameReadyAtTime = -1L;
        this.firstFrameRendered = false;
        if (this.videoPlayer == null) {
            VideoPlayer videoPlayer = this.injectingVideoPlayer;
            if (videoPlayer != null) {
                this.videoPlayer = videoPlayer;
                this.injectingVideoPlayer = null;
                this.playerInjected = true;
                updatePlayerState(videoPlayer.getPlayWhenReady(), this.videoPlayer.getPlaybackState());
                z3 = false;
            } else {
                this.videoPlayer = new VideoPlayer() { // from class: org.telegram.ui.PhotoViewer.48
                    {
                        PhotoViewer.this = this;
                    }

                    @Override // org.telegram.p042ui.Components.VideoPlayer
                    public void play() {
                        super.play();
                        PhotoViewer.this.playOrStopAnimatedStickers(true);
                    }

                    @Override // org.telegram.p042ui.Components.VideoPlayer
                    public void pause() {
                        super.pause();
                        if (PhotoViewer.this.currentEditMode == 0) {
                            PhotoViewer.this.playOrStopAnimatedStickers(false);
                        }
                    }

                    @Override // org.telegram.p042ui.Components.VideoPlayer
                    public void seekTo(long j) {
                        super.seekTo(j);
                        if (PhotoViewer.this.isCurrentVideo) {
                            PhotoViewer.this.seekAnimatedStickersTo(j);
                        }
                    }

                    @Override // org.telegram.p042ui.Components.VideoPlayer, com.google.android.exoplayer2.Player.Listener
                    public void onRenderedFirstFrame() {
                        super.onRenderedFirstFrame();
                        PhotoViewer.this.firstFrameRendered = true;
                        if (PhotoViewer.this.usedSurfaceView) {
                            PhotoViewer.this.containerView.invalidate();
                        }
                    }
                };
                z3 = true;
            }
            TextureView textureView = this.videoTextureView;
            if (textureView != null) {
                this.videoPlayer.setTextureView(textureView);
            } else {
                SurfaceView surfaceView = this.videoSurfaceView;
                if (surfaceView != null) {
                    this.videoPlayer.setSurfaceView(surfaceView);
                }
            }
            FirstFrameView firstFrameView = this.firstFrameView;
            if (firstFrameView != null) {
                firstFrameView.clear();
            }
            this.videoPlayer.setDelegate(new C664349());
        } else {
            z3 = false;
        }
        if (!this.imagesArrLocals.isEmpty()) {
            createVideoTextureView(savedFilterState);
        }
        this.videoCrossfadeAlpha = BitmapDescriptorFactory.HUE_RED;
        TextureView textureView2 = this.videoTextureView;
        if (textureView2 != null) {
            textureView2.setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        SurfaceView surfaceView2 = this.videoSurfaceView;
        if (surfaceView2 != null) {
            surfaceView2.setVisibility(4);
        }
        PaintingOverlay paintingOverlay = this.paintingOverlay;
        if (paintingOverlay != null) {
            paintingOverlay.setAlpha(this.videoCrossfadeAlpha);
        }
        this.shouldSavePositionForCurrentVideo = null;
        this.shouldSavePositionForCurrentVideoShortTerm = null;
        this.lastSaveTime = 0L;
        if (z3) {
            this.seekToProgressPending = this.seekToProgressPending2;
            this.videoPlayerSeekbar.setProgress(BitmapDescriptorFactory.HUE_RED);
            VideoTimelinePlayView videoTimelinePlayView = this.videoTimelineView;
            videoTimelinePlayView.setProgress(videoTimelinePlayView.getLeftProgress());
            this.videoPlayerSeekbar.setBufferedProgress(BitmapDescriptorFactory.HUE_RED);
            MessageObject messageObject = this.currentMessageObject;
            if (messageObject != null) {
                int duration = (int) messageObject.getDuration();
                String fileName = this.currentMessageObject.getFileName();
                if (!TextUtils.isEmpty(fileName)) {
                    if (duration >= 600) {
                        if (this.currentMessageObject.forceSeekTo < BitmapDescriptorFactory.HUE_RED) {
                            float f = ApplicationLoader.applicationContext.getSharedPreferences("media_saved_pos", 0).getFloat(fileName, -1.0f);
                            if (f > BitmapDescriptorFactory.HUE_RED && f < 0.999f) {
                                this.currentMessageObject.forceSeekTo = f;
                                this.videoPlayerSeekbar.setProgress(f);
                            }
                        }
                        this.shouldSavePositionForCurrentVideo = fileName;
                    } else if (duration >= 10) {
                        for (int size = this.savedVideoPositions.size() - 1; size >= 0; size--) {
                            SavedVideoPosition valueAt = this.savedVideoPositions.valueAt(size);
                            if (valueAt.timestamp < SystemClock.elapsedRealtime() - 5000) {
                                this.savedVideoPositions.removeAt(size);
                            } else if (savedVideoPosition == null && this.savedVideoPositions.keyAt(size).equals(fileName)) {
                                savedVideoPosition = valueAt;
                            }
                        }
                        MessageObject messageObject2 = this.currentMessageObject;
                        if (messageObject2 != null && messageObject2.forceSeekTo < BitmapDescriptorFactory.HUE_RED && savedVideoPosition != null) {
                            float f2 = savedVideoPosition.position;
                            if (f2 > BitmapDescriptorFactory.HUE_RED && f2 < 0.999f) {
                                messageObject2.forceSeekTo = f2;
                                this.videoPlayerSeekbar.setProgress(f2);
                            }
                        }
                        this.shouldSavePositionForCurrentVideoShortTerm = fileName;
                    }
                }
            }
            this.videoPlayer.preparePlayer(uri, "other");
            this.videoPlayer.setPlayWhenReady(z);
        }
        MessageObject messageObject3 = this.currentMessageObject;
        boolean z4 = (messageObject3 != null && messageObject3.getDuration() <= 30.0d) || ((pageBlocksAdapter = this.pageBlocksAdapter) != null && pageBlocksAdapter.isHardwarePlayer(this.currentIndex));
        this.playerLooping = z4;
        this.videoPlayerControlFrameLayout.setSeekBarTransitionEnabled(z4);
        this.videoPlayer.setLooping(this.playerLooping);
        MessageObject messageObject4 = this.currentMessageObject;
        if (messageObject4 != null) {
            float f3 = messageObject4.forceSeekTo;
            if (f3 >= BitmapDescriptorFactory.HUE_RED) {
                this.seekToProgressPending = f3;
                messageObject4.forceSeekTo = -1.0f;
            }
        }
        TLRPC$BotInlineResult tLRPC$BotInlineResult = this.currentBotInlineResult;
        if (tLRPC$BotInlineResult != null && (tLRPC$BotInlineResult.type.equals("video") || MessageObject.isVideoDocument(this.currentBotInlineResult.document))) {
            this.bottomLayout.setVisibility(0);
            this.bottomLayout.setPadding(0, 0, AndroidUtilities.m102dp(84), 0);
            this.pickerView.setVisibility(8);
        } else {
            this.bottomLayout.setPadding(0, 0, 0, 0);
        }
        if (this.pageBlocksAdapter != null) {
            this.bottomLayout.setVisibility(0);
        }
        PageBlocksAdapter pageBlocksAdapter2 = this.pageBlocksAdapter;
        if (pageBlocksAdapter2 != null && pageBlocksAdapter2.isHardwarePlayer(this.currentIndex) && !this.pageBlocksAdapter.isVideo(this.currentIndex)) {
            setVideoPlayerControlVisible(false, true);
        } else {
            setVideoPlayerControlVisible(!this.isCurrentVideo, true);
        }
        if (!this.isCurrentVideo) {
            scheduleActionBarHide(this.playerAutoStarted ? AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS : 1000);
        }
        if (this.currentMessageObject != null) {
            this.videoPlayer.setPlaybackSpeed(this.currentVideoSpeed);
        }
        this.inPreview = z2;
    }

    /* renamed from: org.telegram.ui.PhotoViewer$49 */
    /* loaded from: classes5.dex */
    public class C664349 implements VideoPlayer.VideoPlayerDelegate {
        private boolean firstState = true;

        @Override // org.telegram.p042ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
        }

        @Override // org.telegram.p042ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
        }

        C664349() {
            PhotoViewer.this = r1;
        }

        @Override // org.telegram.p042ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onStateChanged(boolean z, int i) {
            if (this.firstState && PhotoViewer.this.videoPlayer != null && PhotoViewer.this.videoPlayer.getDuration() != C0479C.TIME_UNSET) {
                this.firstState = false;
                if (PhotoViewer.this.imagesArr.isEmpty() && PhotoViewer.this.secureDocuments.isEmpty() && PhotoViewer.this.imagesArrLocations.isEmpty() && !PhotoViewer.this.imagesArrLocals.isEmpty() && PhotoViewer.this.switchingToIndex >= 0 && PhotoViewer.this.switchingToIndex < PhotoViewer.this.imagesArrLocals.size()) {
                    Object obj = PhotoViewer.this.imagesArrLocals.get(PhotoViewer.this.switchingToIndex);
                    if (obj instanceof MediaController.PhotoEntry) {
                        MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                        if (photoEntry.isVideo && photoEntry.editedInfo != null) {
                            PhotoViewer.this.videoPlayer.seekTo(photoEntry.editedInfo.start * ((float) PhotoViewer.this.videoPlayer.getDuration()));
                            if (PhotoViewer.this.videoTimelineView != null) {
                                PhotoViewer.this.videoTimelineView.setProgress(photoEntry.editedInfo.start);
                            }
                        }
                    }
                }
            }
            PhotoViewer.this.updatePlayerState(z, i);
        }

        @Override // org.telegram.p042ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onError(VideoPlayer videoPlayer, Exception exc) {
            if (PhotoViewer.this.videoPlayer != videoPlayer) {
                return;
            }
            FileLog.m97e(exc);
            if (PhotoViewer.this.menuItem.isSubItemVisible(11)) {
                AlertDialog.Builder builder = new AlertDialog.Builder(PhotoViewer.this.parentActivity, PhotoViewer.this.resourcesProvider);
                builder.setTitle(LocaleController.getString("AppName", C3630R.string.AppName));
                builder.setMessage(LocaleController.getString("CantPlayVideo", C3630R.string.CantPlayVideo));
                builder.setPositiveButton(LocaleController.getString("Open", C3630R.string.Open), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$49$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        PhotoViewer.C664349.this.lambda$onError$0(dialogInterface, i);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), null);
                PhotoViewer.this.showAlertDialog(builder);
            }
        }

        public /* synthetic */ void lambda$onError$0(DialogInterface dialogInterface, int i) {
            try {
                AndroidUtilities.openForView(PhotoViewer.this.currentMessageObject, PhotoViewer.this.parentActivity, PhotoViewer.this.resourcesProvider);
                PhotoViewer.this.closePhoto(false, false);
            } catch (Exception e) {
                FileLog.m97e(e);
            }
        }

        @Override // org.telegram.p042ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            if (PhotoViewer.this.aspectRatioFrameLayout != null) {
                if (i3 == 90 || i3 == 270) {
                    i2 = i;
                    i = i2;
                }
                float f2 = i * f;
                int i4 = (int) f2;
                PhotoViewer.this.videoWidth = i4;
                float f3 = i2;
                PhotoViewer.this.videoHeight = (int) (f * f3);
                PhotoViewer.this.aspectRatioFrameLayout.setAspectRatio(i2 == 0 ? 1.0f : f2 / f3, i3);
                if (PhotoViewer.this.videoTextureView instanceof VideoEditTextureView) {
                    ((VideoEditTextureView) PhotoViewer.this.videoTextureView).setVideoSize(i4, i2);
                    if (PhotoViewer.this.sendPhotoType == 1) {
                        PhotoViewer.this.setCropBitmap();
                    }
                }
                PhotoViewer.this.videoSizeSet = true;
            }
        }

        @Override // org.telegram.p042ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onRenderedFirstFrame() {
            if (!PhotoViewer.this.textureUploaded) {
                PhotoViewer.this.textureUploaded = true;
                PhotoViewer.this.containerView.invalidate();
            }
            if (PhotoViewer.this.firstFrameView != null) {
                if (PhotoViewer.this.videoPlayer == null || !PhotoViewer.this.videoPlayer.isLooping()) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$49$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            PhotoViewer.C664349.this.lambda$onRenderedFirstFrame$1();
                        }
                    }, 64L);
                }
            }
        }

        public /* synthetic */ void lambda$onRenderedFirstFrame$1() {
            PhotoViewer.this.firstFrameView.updateAlpha();
        }

        @Override // org.telegram.p042ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
            if (eventTime.eventPlaybackPositionMs == PhotoViewer.this.needCaptureFrameReadyAtTime) {
                PhotoViewer.this.captureFrameReadyAtTime = eventTime.eventPlaybackPositionMs;
                PhotoViewer.this.needCaptureFrameReadyAtTime = -1L;
                PhotoViewer.this.captureCurrentFrame();
            }
            if (PhotoViewer.this.firstFrameView != null) {
                if (PhotoViewer.this.videoPlayer == null || !PhotoViewer.this.videoPlayer.isLooping()) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$49$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            PhotoViewer.C664349.this.lambda$onRenderedFirstFrame$2();
                        }
                    }, 64L);
                }
            }
        }

        public /* synthetic */ void lambda$onRenderedFirstFrame$2() {
            PhotoViewer.this.firstFrameView.updateAlpha();
        }

        @Override // org.telegram.p042ui.Components.VideoPlayer.VideoPlayerDelegate
        public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
            if (PhotoViewer.this.changingTextureView) {
                PhotoViewer.this.changingTextureView = false;
                if (PhotoViewer.this.isInline) {
                    PhotoViewer.this.waitingForFirstTextureUpload = 1;
                    PhotoViewer.this.changedTextureView.setSurfaceTexture(surfaceTexture);
                    PhotoViewer.this.changedTextureView.setSurfaceTextureListener(PhotoViewer.this.surfaceTextureListener);
                    PhotoViewer.this.changedTextureView.setVisibility(0);
                    return true;
                }
            }
            return false;
        }

        @Override // org.telegram.p042ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            PhotoViewer.this.checkChangedTextureView(false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$49$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.C664349.this.lambda$onSurfaceTextureUpdated$3();
                }
            });
        }

        public /* synthetic */ void lambda$onSurfaceTextureUpdated$3() {
            if (PhotoViewer.this.firstFrameView != null) {
                PhotoViewer.this.firstFrameView.checkFromPlayer(PhotoViewer.this.videoPlayer);
            }
        }
    }

    public void checkFullscreenButton() {
        int measuredWidth;
        TextureView textureView;
        int measuredHeight;
        TextureView textureView2;
        float f;
        MessageObject messageObject;
        if (this.imagesArr.isEmpty()) {
            for (int i = 0; i < 3; i++) {
                this.fullscreenButton[i].setVisibility(4);
            }
            return;
        }
        int i2 = 0;
        while (i2 < 3) {
            int i3 = this.currentIndex;
            if (i2 == 1) {
                i3++;
            } else if (i2 == 2) {
                i3--;
            }
            if (i3 < 0 || i3 >= this.imagesArr.size()) {
                this.fullscreenButton[i2].setVisibility(4);
            } else {
                MessageObject messageObject2 = this.imagesArr.get(i3);
                if (!messageObject2.isVideo() && !messageObject2.isYouTubeVideo()) {
                    this.fullscreenButton[i2].setVisibility(4);
                } else {
                    boolean z = messageObject2.isYouTubeVideo() && (messageObject = this.currentMessageObject) != null && messageObject.getId() == messageObject2.getId();
                    if (z) {
                        measuredWidth = messageObject2.messageOwner.media.webpage.embed_width;
                    } else {
                        measuredWidth = (i2 != 0 || (textureView = this.videoTextureView) == null) ? 0 : textureView.getMeasuredWidth();
                    }
                    if (z) {
                        measuredHeight = messageObject2.messageOwner.media.webpage.embed_height;
                    } else {
                        measuredHeight = (i2 != 0 || (textureView2 = this.videoTextureView) == null) ? 0 : textureView2.getMeasuredHeight();
                    }
                    TLRPC$Document document = messageObject2.getDocument();
                    if (document != null) {
                        int size = document.attributes.size();
                        int i4 = 0;
                        while (true) {
                            if (i4 >= size) {
                                break;
                            }
                            TLRPC$DocumentAttribute tLRPC$DocumentAttribute = document.attributes.get(i4);
                            if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeVideo) {
                                measuredWidth = tLRPC$DocumentAttribute.f1611w;
                                measuredHeight = tLRPC$DocumentAttribute.f1610h;
                                break;
                            }
                            i4++;
                        }
                    }
                    Point point = AndroidUtilities.displaySize;
                    if (point.y > point.x && measuredWidth > measuredHeight) {
                        if (this.fullscreenButton[i2].getVisibility() != 0) {
                            this.fullscreenButton[i2].setVisibility(0);
                        }
                        if (this.isActionBarVisible) {
                            this.fullscreenButton[i2].setAlpha(1.0f);
                        }
                        ((FrameLayout.LayoutParams) this.fullscreenButton[i2].getLayoutParams()).topMargin = ((this.containerView.getMeasuredHeight() + ((int) (measuredHeight / (measuredWidth / this.containerView.getMeasuredWidth())))) / 2) - AndroidUtilities.m102dp(48);
                    } else if (this.fullscreenButton[i2].getVisibility() != 4) {
                        this.fullscreenButton[i2].setVisibility(4);
                    }
                    if (this.imageMoveAnimation != null) {
                        float f2 = this.translationX;
                        f = f2 + ((this.animateToX - f2) * this.animationValue);
                    } else {
                        f = this.translationX;
                    }
                    float f3 = BitmapDescriptorFactory.HUE_RED;
                    if (i2 != 1) {
                        if (i2 == 2) {
                            f3 = ((-AndroidUtilities.displaySize.x) - AndroidUtilities.m102dp(15)) + (f - this.maxX);
                        } else {
                            float f4 = this.minX;
                            if (f < f4) {
                                f3 = f - f4;
                            }
                        }
                    }
                    this.fullscreenButton[i2].setTranslationX((f3 + AndroidUtilities.displaySize.x) - AndroidUtilities.m102dp(48));
                }
            }
            i2++;
        }
    }

    private void createVideoTextureView(final MediaController.SavedFilterState savedFilterState) {
        if (this.videoTextureView != null) {
            return;
        }
        AspectRatioFrameLayout aspectRatioFrameLayout = new AspectRatioFrameLayout(this.parentActivity) { // from class: org.telegram.ui.PhotoViewer.50
            {
                PhotoViewer.this = this;
            }

            @Override // com.google.android.exoplayer2.p016ui.AspectRatioFrameLayout, android.widget.FrameLayout, android.view.View
            public void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
                if (PhotoViewer.this.textureImageView != null) {
                    ViewGroup.LayoutParams layoutParams = PhotoViewer.this.textureImageView.getLayoutParams();
                    layoutParams.width = getMeasuredWidth();
                    layoutParams.height = getMeasuredHeight();
                }
                if (PhotoViewer.this.videoTextureView instanceof VideoEditTextureView) {
                    PhotoViewer.this.videoTextureView.setPivotX(PhotoViewer.this.videoTextureView.getMeasuredWidth() / 2);
                    PhotoViewer.this.firstFrameView.setPivotX(PhotoViewer.this.videoTextureView.getMeasuredWidth() / 2);
                } else {
                    if (PhotoViewer.this.videoTextureView != null) {
                        PhotoViewer.this.videoTextureView.setPivotX(BitmapDescriptorFactory.HUE_RED);
                    }
                    if (PhotoViewer.this.videoSurfaceView != null) {
                        PhotoViewer.this.videoSurfaceView.setPivotX(BitmapDescriptorFactory.HUE_RED);
                    }
                    PhotoViewer.this.firstFrameView.setPivotX(BitmapDescriptorFactory.HUE_RED);
                }
                PhotoViewer.this.checkFullscreenButton();
            }

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                if (view == PhotoViewer.this.lastFrameImageView && PhotoViewer.this.skipLastFrameDraw) {
                    return true;
                }
                return super.drawChild(canvas, view, j);
            }
        };
        this.aspectRatioFrameLayout = aspectRatioFrameLayout;
        aspectRatioFrameLayout.setWillNotDraw(false);
        this.aspectRatioFrameLayout.setVisibility(4);
        this.containerView.addView(this.aspectRatioFrameLayout, 0, LayoutHelper.createFrame(-1, -1, 17));
        this.usedSurfaceView = false;
        if (this.imagesArrLocals.isEmpty()) {
            if (this.ALLOW_USE_SURFACE && this.injectingVideoPlayerSurface == null) {
                this.videoSurfaceView = new SurfaceView(this.parentActivity);
                this.usedSurfaceView = true;
            } else {
                this.videoTextureView = new TextureView(this.parentActivity);
            }
        } else {
            VideoEditTextureView videoEditTextureView = new VideoEditTextureView(this.parentActivity, this.videoPlayer);
            this.blurManager.resetBitmap();
            videoEditTextureView.updateUiBlurManager(this.blurManager);
            if (savedFilterState != null) {
                videoEditTextureView.setDelegate(new VideoEditTextureView.VideoEditTextureViewDelegate() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda97
                    @Override // org.telegram.p042ui.Components.VideoEditTextureView.VideoEditTextureViewDelegate
                    public final void onEGLThreadAvailable(FilterGLThread filterGLThread) {
                        PhotoViewer.lambda$createVideoTextureView$53(MediaController.SavedFilterState.this, filterGLThread);
                    }
                });
            }
            this.videoTextureView = videoEditTextureView;
        }
        SurfaceTexture surfaceTexture = this.injectingVideoPlayerSurface;
        if (surfaceTexture != null) {
            this.videoTextureView.setSurfaceTexture(surfaceTexture);
            this.textureUploaded = true;
            this.videoSizeSet = true;
            this.injectingVideoPlayerSurface = null;
        }
        TextureView textureView = this.videoTextureView;
        if (textureView != null) {
            textureView.setPivotX(BitmapDescriptorFactory.HUE_RED);
            this.videoTextureView.setPivotY(BitmapDescriptorFactory.HUE_RED);
            this.videoTextureView.setOpaque(false);
            this.aspectRatioFrameLayout.addView(this.videoTextureView, LayoutHelper.createFrame(-1, -1, 17));
        } else {
            this.aspectRatioFrameLayout.addView(this.videoSurfaceView, LayoutHelper.createFrame(-1, -1, 17));
        }
        FirstFrameView firstFrameView = new FirstFrameView(this.parentActivity);
        this.firstFrameView = firstFrameView;
        firstFrameView.setPivotX(BitmapDescriptorFactory.HUE_RED);
        this.firstFrameView.setPivotY(BitmapDescriptorFactory.HUE_RED);
        this.firstFrameView.setScaleType(ImageView.ScaleType.FIT_XY);
        this.aspectRatioFrameLayout.addView(this.firstFrameView, LayoutHelper.createFrame(-1, -1, 17));
        if (this.sendPhotoType == 1) {
            View view = new View(this.parentActivity);
            this.flashView = view;
            view.setBackgroundColor(-1);
            this.flashView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.aspectRatioFrameLayout.addView(this.flashView, LayoutHelper.createFrame(-1, -1, 17));
        }
    }

    public static /* synthetic */ void lambda$createVideoTextureView$53(MediaController.SavedFilterState savedFilterState, FilterGLThread filterGLThread) {
        filterGLThread.setFilterGLThreadDelegate(FilterShaders.getFilterShadersDelegate(savedFilterState));
    }

    public void releasePlayer(boolean z) {
        this.usedSurfaceView = false;
        if (this.videoPlayer != null) {
            cancelVideoPlayRunnable();
            AndroidUtilities.cancelRunOnUIThread(this.setLoadingRunnable);
            AndroidUtilities.cancelRunOnUIThread(this.hideActionBarRunnable);
            if (this.shouldSavePositionForCurrentVideoShortTerm != null) {
                this.savedVideoPositions.put(this.shouldSavePositionForCurrentVideoShortTerm, new SavedVideoPosition(((float) this.videoPlayer.getCurrentPosition()) / ((float) this.videoPlayer.getDuration()), SystemClock.elapsedRealtime()));
            }
            this.videoPlayer.releasePlayer(true);
            this.videoPlayer = null;
        } else {
            this.playerWasPlaying = false;
        }
        if (this.photoViewerWebView != null) {
            AndroidUtilities.cancelRunOnUIThread(this.hideActionBarRunnable);
            if (this.shouldSavePositionForCurrentVideoShortTerm != null) {
                this.savedVideoPositions.put(this.shouldSavePositionForCurrentVideoShortTerm, new SavedVideoPosition(((float) getCurrentVideoPosition()) / ((float) getVideoDuration()), SystemClock.elapsedRealtime()));
            }
        }
        OrientationEventListener orientationEventListener = this.orientationEventListener;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
            this.orientationEventListener = null;
        }
        this.videoPreviewFrame.close();
        toggleMiniProgress(false, false);
        this.pipAvailable = false;
        this.playerInjected = false;
        if (this.pipItem.isEnabled()) {
            this.pipItem.setEnabled(false);
            this.pipItem.animate().alpha(0.5f).setDuration(175L).withEndAction(null).start();
        }
        if (this.keepScreenOnFlagSet) {
            try {
                this.parentActivity.getWindow().clearFlags(128);
                this.keepScreenOnFlagSet = false;
            } catch (Exception e) {
                FileLog.m97e(e);
            }
        }
        AspectRatioFrameLayout aspectRatioFrameLayout = this.aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            try {
                this.containerView.removeView(aspectRatioFrameLayout);
            } catch (Throwable unused) {
            }
            this.aspectRatioFrameLayout = null;
        }
        cancelFlashAnimations();
        this.flashView = null;
        TextureView textureView = this.videoTextureView;
        if (textureView != null) {
            if (textureView instanceof VideoEditTextureView) {
                ((VideoEditTextureView) textureView).release();
            }
            this.videoTextureView = null;
        }
        this.blurManager.resetBitmap();
        if (this.videoSurfaceView != null) {
            this.videoSurfaceView = null;
        }
        if (this.isPlaying) {
            this.isPlaying = false;
            AndroidUtilities.cancelRunOnUIThread(this.updateProgressRunnable);
        }
        if (!z && !this.inPreview && !this.requestingPreview) {
            setVideoPlayerControlVisible(false, true);
        }
        this.photoProgressViews[0].resetAlphas();
    }

    private void setVideoPlayerControlVisible(final boolean z, boolean z2) {
        if (this.videoPlayerControlVisible != z) {
            if (z) {
                this.bottomLayout.setTag(1);
            } else {
                this.bottomLayout.setTag(null);
            }
            Animator animator = this.videoPlayerControlAnimator;
            if (animator != null) {
                animator.cancel();
            }
            this.videoPlayerControlVisible = z;
            if (z2) {
                if (z) {
                    this.videoPlayerControlFrameLayout.setVisibility(0);
                }
                float[] fArr = new float[2];
                fArr[0] = this.videoPlayerControlFrameLayout.getAlpha();
                fArr[1] = z ? 1.0f : 0.0f;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
                ofFloat.setDuration(200L);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        PhotoViewer.this.lambda$setVideoPlayerControlVisible$54(valueAnimator);
                    }
                });
                ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.51
                    {
                        PhotoViewer.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator2) {
                        if (z) {
                            return;
                        }
                        PhotoViewer.this.videoPlayerControlFrameLayout.setVisibility(8);
                    }
                });
                this.videoPlayerControlAnimator = ofFloat;
                ofFloat.start();
            } else {
                this.videoPlayerControlFrameLayout.setVisibility(z ? 0 : 8);
                this.videoPlayerControlFrameLayout.setAlpha(z ? 1.0f : 0.0f);
            }
            if (this.allowShare && this.pageBlocksAdapter == null) {
                if (z) {
                    this.menuItem.showSubItem(10);
                } else {
                    this.menuItem.hideSubItem(10);
                }
            }
        }
    }

    public /* synthetic */ void lambda$setVideoPlayerControlVisible$54(ValueAnimator valueAnimator) {
        this.videoPlayerControlFrameLayout.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void updateCaptionTextForCurrentPhoto(Object obj) {
        CharSequence charSequence;
        if (this.hasCaptionForAllMedia) {
            charSequence = this.captionForAllMedia;
        } else if (obj instanceof MediaController.PhotoEntry) {
            charSequence = ((MediaController.PhotoEntry) obj).caption;
        } else {
            charSequence = (!(obj instanceof TLRPC$BotInlineResult) && (obj instanceof MediaController.SearchImage)) ? ((MediaController.SearchImage) obj).caption : null;
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.captionEdit.setText("");
        } else {
            this.captionEdit.setText(AnimatedEmojiSpan.cloneSpans(charSequence, 3));
        }
        this.captionEdit.editText.getEditText().setAllowTextEntitiesIntersection(supportsSendingNewEntities());
    }

    public void showAlertDialog(Dialog dialog) {
        if (this.parentActivity == null) {
            return;
        }
        try {
            Dialog dialog2 = this.visibleDialog;
            if (dialog2 != null) {
                dialog2.dismiss();
                this.visibleDialog = null;
            }
        } catch (Exception e) {
            FileLog.m97e(e);
        }
        try {
            this.visibleDialog = dialog;
            dialog.show();
            this.visibleDialog.setCanceledOnTouchOutside(true);
            this.visibleDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda25
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    PhotoViewer.this.lambda$showAlertDialog$55(dialogInterface);
                }
            });
        } catch (Exception e2) {
            FileLog.m97e(e2);
        }
    }

    public /* synthetic */ void lambda$showAlertDialog$55(DialogInterface dialogInterface) {
        this.visibleDialog = null;
    }

    private void mergeImages(String str, String str2, Bitmap bitmap, Bitmap bitmap2, float f, boolean z) {
        boolean z2;
        if (bitmap == null) {
            try {
                bitmap = BitmapFactory.decodeFile(str2);
                z2 = true;
            } catch (Throwable th) {
                FileLog.m97e(th);
                return;
            }
        } else {
            z2 = false;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f2 = width;
        if (f2 > f || height > f) {
            float max = Math.max(width, height) / f;
            height = (int) (height / max);
            width = (int) (f2 / max);
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Rect rect = new Rect(0, 0, width, height);
        if (z) {
            canvas.drawBitmap(bitmap2, (Rect) null, rect, this.bitmapPaint);
            canvas.drawBitmap(bitmap, (Rect) null, rect, this.bitmapPaint);
        } else {
            canvas.drawBitmap(bitmap, (Rect) null, rect, this.bitmapPaint);
            canvas.drawBitmap(bitmap2, (Rect) null, rect, this.bitmapPaint);
        }
        FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
        createBitmap.compress(Bitmap.CompressFormat.JPEG, f == 512.0f ? 83 : 87, fileOutputStream);
        try {
            fileOutputStream.close();
        } catch (Exception e) {
            FileLog.m97e(e);
        }
        if (z2) {
            bitmap.recycle();
        }
        createBitmap.recycle();
    }

    public void seekAnimatedStickersTo(long j) {
        RLottieDrawable lottieAnimation;
        ArrayList<VideoEditedInfo.MediaEntity> arrayList = this.editState.mediaEntities;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                VideoEditedInfo.MediaEntity mediaEntity = this.editState.mediaEntities.get(i);
                if (mediaEntity.type == 0 && (mediaEntity.subType & 1) != 0) {
                    View view = mediaEntity.view;
                    if ((view instanceof BackupImageView) && (lottieAnimation = ((BackupImageView) view).getImageReceiver().getLottieAnimation()) != null) {
                        long j2 = this.startTime;
                        lottieAnimation.setProgressMs(j - (j2 > 0 ? j2 / 1000 : 0L));
                    }
                }
            }
        }
    }

    public void playOrStopAnimatedStickers(boolean z) {
        RLottieDrawable lottieAnimation;
        ArrayList<VideoEditedInfo.MediaEntity> arrayList = this.editState.mediaEntities;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                VideoEditedInfo.MediaEntity mediaEntity = this.editState.mediaEntities.get(i);
                if (mediaEntity.type == 0 && (mediaEntity.subType & 1) != 0) {
                    View view = mediaEntity.view;
                    if ((view instanceof BackupImageView) && (lottieAnimation = ((BackupImageView) view).getImageReceiver().getLottieAnimation()) != null) {
                        if (z) {
                            lottieAnimation.start();
                        } else {
                            lottieAnimation.stop();
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0024, code lost:
        if ((r4 & 4) == 0) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0036 A[EDGE_INSN: B:45:0x0036->B:43:0x0036 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0033 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getAnimatedMediaEntitiesCount(boolean r7) {
        /*
            r6 = this;
            org.telegram.ui.PhotoViewer$EditState r0 = r6.editState
            java.util.ArrayList<org.telegram.messenger.VideoEditedInfo$MediaEntity> r0 = r0.mediaEntities
            r1 = 0
            if (r0 == 0) goto L37
            int r0 = r0.size()
            r2 = r1
        Lc:
            if (r1 >= r0) goto L36
            org.telegram.ui.PhotoViewer$EditState r3 = r6.editState
            java.util.ArrayList<org.telegram.messenger.VideoEditedInfo$MediaEntity> r3 = r3.mediaEntities
            java.lang.Object r3 = r3.get(r1)
            org.telegram.messenger.VideoEditedInfo$MediaEntity r3 = (org.telegram.messenger.VideoEditedInfo.MediaEntity) r3
            byte r4 = r3.type
            if (r4 != 0) goto L26
            byte r4 = r3.subType
            r5 = r4 & 1
            if (r5 != 0) goto L2e
            r4 = r4 & 4
            if (r4 != 0) goto L2e
        L26:
            java.util.ArrayList<org.telegram.messenger.VideoEditedInfo$EmojiEntity> r3 = r3.entities
            boolean r3 = r3.isEmpty()
            if (r3 != 0) goto L33
        L2e:
            int r2 = r2 + 1
            if (r7 == 0) goto L33
            goto L36
        L33:
            int r1 = r1 + 1
            goto Lc
        L36:
            r1 = r2
        L37:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.getAnimatedMediaEntitiesCount(boolean):int");
    }

    private boolean hasAnimatedMediaEntities() {
        return getAnimatedMediaEntitiesCount(true) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x0065 A[Catch: all -> 0x009a, TryCatch #0 {all -> 0x009a, blocks: (B:41:0x0004, B:43:0x0009, B:45:0x000d, B:47:0x0013, B:49:0x0016, B:50:0x0018, B:56:0x002e, B:58:0x0053, B:63:0x005c, B:64:0x0060, B:66:0x0065, B:69:0x006e, B:68:0x006b), top: B:74:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.Bitmap createCroppedBitmap(android.graphics.Bitmap r17, org.telegram.messenger.MediaController.CropState r18, int[] r19, boolean r20) {
        /*
            r16 = this;
            r0 = r18
            r1 = r19
            int r2 = r0.transformRotation     // Catch: java.lang.Throwable -> L9a
            r3 = 0
            if (r1 == 0) goto Lc
            r4 = r1[r3]     // Catch: java.lang.Throwable -> L9a
            goto Ld
        Lc:
            r4 = r3
        Ld:
            int r2 = r2 + r4
            int r2 = r2 % 360
            r4 = 1
            if (r1 == 0) goto L18
            int r5 = r1.length     // Catch: java.lang.Throwable -> L9a
            if (r5 <= r4) goto L18
            r3 = r1[r4]     // Catch: java.lang.Throwable -> L9a
        L18:
            int r1 = r17.getWidth()     // Catch: java.lang.Throwable -> L9a
            int r5 = r17.getHeight()     // Catch: java.lang.Throwable -> L9a
            r6 = 270(0x10e, float:3.78E-43)
            r7 = 90
            if (r2 == r7) goto L2c
            if (r2 != r6) goto L29
            goto L2c
        L29:
            r8 = r1
            r9 = r5
            goto L2e
        L2c:
            r9 = r1
            r8 = r5
        L2e:
            float r8 = (float) r8     // Catch: java.lang.Throwable -> L9a
            float r10 = r0.cropPw     // Catch: java.lang.Throwable -> L9a
            float r10 = r10 * r8
            int r10 = (int) r10     // Catch: java.lang.Throwable -> L9a
            float r9 = (float) r9     // Catch: java.lang.Throwable -> L9a
            float r11 = r0.cropPh     // Catch: java.lang.Throwable -> L9a
            float r11 = r11 * r9
            int r11 = (int) r11     // Catch: java.lang.Throwable -> L9a
            android.graphics.Bitmap$Config r12 = android.graphics.Bitmap.Config.ARGB_8888     // Catch: java.lang.Throwable -> L9a
            android.graphics.Bitmap r12 = android.graphics.Bitmap.createBitmap(r10, r11, r12)     // Catch: java.lang.Throwable -> L9a
            android.graphics.Matrix r13 = new android.graphics.Matrix     // Catch: java.lang.Throwable -> L9a
            r13.<init>()     // Catch: java.lang.Throwable -> L9a
            int r1 = -r1
            r14 = 2
            int r1 = r1 / r14
            float r1 = (float) r1     // Catch: java.lang.Throwable -> L9a
            int r5 = -r5
            int r5 = r5 / r14
            float r5 = (float) r5     // Catch: java.lang.Throwable -> L9a
            r13.postTranslate(r1, r5)     // Catch: java.lang.Throwable -> L9a
            r1 = 1065353216(0x3f800000, float:1.0)
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r20 == 0) goto L63
            boolean r15 = r0.mirrored     // Catch: java.lang.Throwable -> L9a
            if (r15 == 0) goto L63
            if (r2 == r7) goto L60
            if (r2 != r6) goto L5c
            goto L60
        L5c:
            r13.postScale(r5, r1)     // Catch: java.lang.Throwable -> L9a
            goto L63
        L60:
            r13.postScale(r1, r5)     // Catch: java.lang.Throwable -> L9a
        L63:
            if (r3 != r4) goto L69
            r13.postScale(r5, r1)     // Catch: java.lang.Throwable -> L9a
            goto L6e
        L69:
            if (r3 != r14) goto L6e
            r13.postScale(r1, r5)     // Catch: java.lang.Throwable -> L9a
        L6e:
            float r1 = r0.cropRotate     // Catch: java.lang.Throwable -> L9a
            float r2 = (float) r2     // Catch: java.lang.Throwable -> L9a
            float r1 = r1 + r2
            r13.postRotate(r1)     // Catch: java.lang.Throwable -> L9a
            float r1 = r0.cropPx     // Catch: java.lang.Throwable -> L9a
            float r1 = r1 * r8
            float r2 = r0.cropPy     // Catch: java.lang.Throwable -> L9a
            float r2 = r2 * r9
            r13.postTranslate(r1, r2)     // Catch: java.lang.Throwable -> L9a
            float r0 = r0.cropScale     // Catch: java.lang.Throwable -> L9a
            r13.postScale(r0, r0)     // Catch: java.lang.Throwable -> L9a
            int r10 = r10 / r14
            float r0 = (float) r10     // Catch: java.lang.Throwable -> L9a
            int r11 = r11 / r14
            float r1 = (float) r11     // Catch: java.lang.Throwable -> L9a
            r13.postTranslate(r0, r1)     // Catch: java.lang.Throwable -> L9a
            android.graphics.Canvas r0 = new android.graphics.Canvas     // Catch: java.lang.Throwable -> L9a
            r0.<init>(r12)     // Catch: java.lang.Throwable -> L9a
            android.graphics.Paint r1 = new android.graphics.Paint     // Catch: java.lang.Throwable -> L9a
            r1.<init>(r14)     // Catch: java.lang.Throwable -> L9a
            r2 = r17
            r0.drawBitmap(r2, r13, r1)     // Catch: java.lang.Throwable -> L9a
            return r12
        L9a:
            r0 = move-exception
            org.telegram.messenger.FileLog.m97e(r0)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.createCroppedBitmap(android.graphics.Bitmap, org.telegram.messenger.MediaController$CropState, int[], boolean):android.graphics.Bitmap");
    }

    /* JADX WARN: Removed duplicated region for block: B:337:0x0105 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0540  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x05e1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:480:0x05e8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:484:0x05f2  */
    /* JADX WARN: Removed duplicated region for block: B:530:0x077e  */
    /* JADX WARN: Removed duplicated region for block: B:533:0x0789  */
    /* JADX WARN: Removed duplicated region for block: B:534:0x079e  */
    /* JADX WARN: Removed duplicated region for block: B:543:0x07d3  */
    /* JADX WARN: Removed duplicated region for block: B:549:0x07e9  */
    /* JADX WARN: Removed duplicated region for block: B:552:0x07f1  */
    /* JADX WARN: Removed duplicated region for block: B:553:0x0849  */
    /* JADX WARN: Removed duplicated region for block: B:556:0x0856  */
    /* JADX WARN: Removed duplicated region for block: B:564:0x0865  */
    /* JADX WARN: Removed duplicated region for block: B:568:0x086d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void applyCurrentEditMode() {
        /*
            Method dump skipped, instructions count: 2188
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.applyCurrentEditMode():void");
    }

    private void setPhotoChecked() {
        ChatActivity chatActivity;
        TLRPC$Chat currentChat;
        PhotoViewerProvider photoViewerProvider = this.placeProvider;
        if (photoViewerProvider != null) {
            if (photoViewerProvider.getSelectedPhotos() != null && this.maxSelectedPhotos > 0 && this.placeProvider.getSelectedPhotos().size() >= this.maxSelectedPhotos && !this.placeProvider.isPhotoChecked(this.currentIndex)) {
                if (!this.allowOrder || (chatActivity = this.parentChatActivity) == null || (currentChat = chatActivity.getCurrentChat()) == null || ChatObject.hasAdminRights(currentChat) || !currentChat.slowmode_enabled) {
                    return;
                }
                AlertsCreator.createSimpleAlert(this.parentActivity, LocaleController.getString("Slowmode", C3630R.string.Slowmode), LocaleController.getString("SlowmodeSelectSendError", C3630R.string.SlowmodeSelectSendError)).show();
                return;
            }
            int photoChecked = this.placeProvider.setPhotoChecked(this.currentIndex, getCurrentVideoEditedInfo());
            boolean isPhotoChecked = this.placeProvider.isPhotoChecked(this.currentIndex);
            this.checkImageView.setChecked(isPhotoChecked, true);
            if (photoChecked >= 0) {
                if (isPhotoChecked) {
                    this.selectedPhotosAdapter.notifyItemInserted(photoChecked);
                    this.selectedPhotosListView.smoothScrollToPosition(photoChecked);
                } else {
                    this.selectedPhotosAdapter.notifyItemRemoved(photoChecked);
                    if (photoChecked == 0) {
                        this.selectedPhotosAdapter.notifyItemChanged(0);
                    }
                }
            }
            updateSelectedCount();
        }
    }

    public void updateResetButtonVisibility(final boolean z) {
        if (this.resetButton.isClickable() != z) {
            this.resetButton.setClickable(z);
            this.resetButton.setVisibility(0);
            this.resetButton.clearAnimation();
            this.resetButton.animate().alpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED).setInterpolator(CubicBezierInterpolator.DEFAULT).setDuration(150L).withEndAction(new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda81
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.this.lambda$updateResetButtonVisibility$56(z);
                }
            });
        }
    }

    public /* synthetic */ void lambda$updateResetButtonVisibility$56(boolean z) {
        if (z) {
            return;
        }
        this.resetButton.setVisibility(8);
    }

    private void createCropView() {
        if (this.photoCropView != null) {
            return;
        }
        PhotoCropView photoCropView = new PhotoCropView(this.activityContext, this.resourcesProvider);
        this.photoCropView = photoCropView;
        photoCropView.setVisibility(8);
        this.photoCropView.onDisappear();
        this.containerView.addView(this.photoCropView, this.containerView.indexOfChild(this.videoTimelineViewContainer) - 1, LayoutHelper.createFrame(-1, -1, 51, 0, 0, 0, 48));
        if (this.sendPhotoType == 1) {
            this.actionBar.bringToFront();
        }
        this.photoCropView.setDelegate(new C664752());
    }

    /* renamed from: org.telegram.ui.PhotoViewer$52 */
    /* loaded from: classes5.dex */
    public class C664752 implements PhotoCropView.PhotoCropViewDelegate {
        C664752() {
            PhotoViewer.this = r1;
        }

        @Override // org.telegram.p042ui.Components.PhotoCropView.PhotoCropViewDelegate
        public void onChange(boolean z) {
            PhotoViewer.this.updateResetButtonVisibility(!z);
        }

        @Override // org.telegram.p042ui.Components.PhotoCropView.PhotoCropViewDelegate
        public void onUpdate() {
            PhotoViewer.this.containerView.invalidate();
        }

        @Override // org.telegram.p042ui.Components.PhotoCropView.PhotoCropViewDelegate
        public void onTapUp() {
            if (PhotoViewer.this.sendPhotoType == 1) {
                PhotoViewer.this.manuallyPaused = true;
                PhotoViewer.this.toggleVideoPlayer();
            }
        }

        @Override // org.telegram.p042ui.Components.PhotoCropView.PhotoCropViewDelegate
        public void onVideoThumbClick() {
            if (PhotoViewer.this.videoPlayer == null) {
                return;
            }
            PhotoViewer.this.videoPlayer.seekTo(((float) PhotoViewer.this.videoPlayer.getDuration()) * PhotoViewer.this.avatarStartProgress);
            PhotoViewer.this.videoPlayer.pause();
            PhotoViewer.this.videoTimelineView.setProgress(PhotoViewer.this.avatarStartProgress);
            PhotoViewer.this.cancelVideoPlayRunnable();
            AndroidUtilities.runOnUIThread(PhotoViewer.this.videoPlayRunnable = new Runnable() { // from class: org.telegram.ui.PhotoViewer$52$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.C664752.this.lambda$onVideoThumbClick$0();
                }
            }, 860L);
        }

        public /* synthetic */ void lambda$onVideoThumbClick$0() {
            PhotoViewer.this.manuallyPaused = false;
            if (PhotoViewer.this.videoPlayer != null) {
                PhotoViewer.this.videoPlayer.play();
            }
            PhotoViewer.this.videoPlayRunnable = null;
        }

        @Override // org.telegram.p042ui.Components.PhotoCropView.PhotoCropViewDelegate
        public boolean rotate() {
            return PhotoViewer.this.cropRotate(-90.0f);
        }

        @Override // org.telegram.p042ui.Components.PhotoCropView.PhotoCropViewDelegate
        public boolean mirror() {
            return PhotoViewer.this.cropMirror();
        }

        @Override // org.telegram.p042ui.Components.PhotoCropView.PhotoCropViewDelegate
        public int getVideoThumbX() {
            return (int) (AndroidUtilities.m102dp(16) + ((PhotoViewer.this.videoTimelineView.getMeasuredWidth() - AndroidUtilities.m102dp(32)) * PhotoViewer.this.avatarStartProgress));
        }
    }

    private void startVideoPlayer() {
        VideoPlayer videoPlayer;
        if (!this.isCurrentVideo || (videoPlayer = this.videoPlayer) == null || videoPlayer.isPlaying()) {
            return;
        }
        if (!this.muteVideo || this.sendPhotoType == 1) {
            this.videoPlayer.setVolume(BitmapDescriptorFactory.HUE_RED);
        }
        this.manuallyPaused = false;
        toggleVideoPlayer();
    }

    private void detectFaces() {
        if (this.centerImage.getAnimation() != null || this.imagesArrLocals.isEmpty() || this.sendPhotoType == 1) {
            return;
        }
        String imageKey = this.centerImage.getImageKey();
        String str = this.currentImageFaceKey;
        if (str == null || !str.equals(imageKey)) {
            this.currentImageHasFace = 0;
            detectFaces(imageKey, this.centerImage.getBitmapSafe(), this.centerImage.getOrientation());
        }
    }

    public void switchToEditMode(final int i) {
        C3702ActionBar c3702ActionBar;
        int i2;
        C3702ActionBar c3702ActionBar2;
        int i3;
        String str;
        MediaController.SavedFilterState savedFilterState;
        int i4;
        Bitmap decodeFile;
        Bitmap bitmap;
        int i5;
        int i6;
        MediaController.CropState cropState;
        C3702ActionBar c3702ActionBar3;
        int i7;
        boolean z;
        int i8;
        int i9;
        float min;
        float f;
        MediaController.CropState cropState2;
        int i10;
        LPhotoPaintView lPhotoPaintView;
        LPhotoPaintView lPhotoPaintView2;
        int i11;
        if (this.currentEditMode != i) {
            if ((!this.isCurrentVideo || this.photoProgressViews[0].backgroundState == 3 || this.isCurrentVideo || (this.centerImage.getBitmap() != null && this.photoProgressViews[0].backgroundState == -1)) && this.changeModeAnimation == null && this.imageMoveAnimation == null && !isCaptionOpen()) {
                PhotoViewerProvider photoViewerProvider = this.placeProvider;
                if (photoViewerProvider != null && (this.currentEditMode == 0 || i == 0)) {
                    photoViewerProvider.onEditModeChanged(i != 0);
                }
                this.windowView.setClipChildren(i == 2);
                int i12 = 2130706432;
                int color = this.navigationBar.getBackground() instanceof ColorDrawable ? ((ColorDrawable) this.navigationBar.getBackground()).getColor() : 2130706432;
                if (i == 1) {
                    i12 = -872415232;
                } else if (i == 3) {
                    i12 = -16777216;
                } else if (i == 0 && this.fancyShadows) {
                    i12 = 0;
                }
                showEditCaption(this.editing && this.savedState == null && i == 0, true);
                this.navigationBar.setVisibility(i != 2 ? 0 : 4);
                this.switchingToMode = i;
                if (this.currentEditMode == 0) {
                    PhotoCountView photoCountView = this.countView;
                    this.wasCountViewShown = photoCountView != null && photoCountView.isShown();
                }
                PhotoCountView photoCountView2 = this.countView;
                if (photoCountView2 != null) {
                    photoCountView2.updateShow(i == 0 && this.wasCountViewShown, true);
                }
                if (i == 0) {
                    if (this.centerImage.getBitmap() != null) {
                        int bitmapWidth = this.centerImage.getBitmapWidth();
                        int bitmapHeight = this.centerImage.getBitmapHeight();
                        int i13 = this.currentEditMode;
                        if (i13 == 3) {
                            if (this.sendPhotoType == 1) {
                                if (this.cropTransform.getOrientation() == 90 || this.cropTransform.getOrientation() == 270) {
                                    i11 = bitmapWidth;
                                    bitmapWidth = bitmapHeight;
                                    float f2 = bitmapWidth;
                                    float f3 = i11;
                                    min = Math.min(getContainerViewWidth(0) / f2, getContainerViewHeight(0) / f3);
                                    f = Math.min(getContainerViewWidth(3) / f2, getContainerViewHeight(3) / f3);
                                }
                                i11 = bitmapHeight;
                                float f22 = bitmapWidth;
                                float f32 = i11;
                                min = Math.min(getContainerViewWidth(0) / f22, getContainerViewHeight(0) / f32);
                                f = Math.min(getContainerViewWidth(3) / f22, getContainerViewHeight(3) / f32);
                            } else {
                                MediaController.CropState cropState3 = this.editState.cropState;
                                if (cropState3 != null) {
                                    int i14 = cropState3.transformRotation;
                                    if (i14 == 90 || i14 == 270) {
                                        bitmapHeight = bitmapWidth;
                                        bitmapWidth = bitmapHeight;
                                    }
                                    bitmapWidth = (int) (bitmapWidth * cropState3.cropPw);
                                    i11 = (int) (bitmapHeight * cropState3.cropPh);
                                    float f222 = bitmapWidth;
                                    float f322 = i11;
                                    min = Math.min(getContainerViewWidth(0) / f222, getContainerViewHeight(0) / f322);
                                    f = Math.min(getContainerViewWidth(3) / f222, getContainerViewHeight(3) / f322);
                                }
                                i11 = bitmapHeight;
                                float f2222 = bitmapWidth;
                                float f3222 = i11;
                                min = Math.min(getContainerViewWidth(0) / f2222, getContainerViewHeight(0) / f3222);
                                f = Math.min(getContainerViewWidth(3) / f2222, getContainerViewHeight(3) / f3222);
                            }
                        } else {
                            if (i13 != 1 && (cropState2 = this.editState.cropState) != null && ((i10 = cropState2.transformRotation) == 90 || i10 == 270)) {
                                float f4 = bitmapHeight;
                                float containerViewWidth = getContainerViewWidth() / f4;
                                float f5 = bitmapWidth;
                                if (containerViewWidth * f5 > getContainerViewHeight()) {
                                    containerViewWidth = getContainerViewHeight() / f5;
                                }
                                this.scale = 1.0f / (containerViewWidth / Math.min(getContainerViewWidth() / f5, getContainerViewHeight() / f4));
                            } else if (this.sendPhotoType == 1 && (this.cropTransform.getOrientation() == 90 || this.cropTransform.getOrientation() == 270)) {
                                float f6 = bitmapHeight;
                                float containerViewWidth2 = getContainerViewWidth() / f6;
                                float f7 = bitmapWidth;
                                if (containerViewWidth2 * f7 > getContainerViewHeight()) {
                                    containerViewWidth2 = getContainerViewHeight() / f7;
                                }
                                this.scale = 1.0f / ((((this.cropTransform.getScale() / this.cropTransform.getTrueCropScale()) * containerViewWidth2) / Math.min(getContainerViewWidth() / f7, getContainerViewHeight() / f6)) / this.cropTransform.getMinScale());
                            }
                            MediaController.CropState cropState4 = this.editState.cropState;
                            if (cropState4 != null) {
                                int i15 = cropState4.transformRotation;
                                if (i15 == 90 || i15 == 270) {
                                    bitmapHeight = bitmapWidth;
                                    bitmapWidth = bitmapHeight;
                                }
                                bitmapWidth = (int) (bitmapWidth * cropState4.cropPw);
                                i9 = (int) (bitmapHeight * cropState4.cropPh);
                            } else if (this.sendPhotoType == 1 && (this.cropTransform.getOrientation() == 90 || this.cropTransform.getOrientation() == 270)) {
                                i9 = bitmapWidth;
                                bitmapWidth = bitmapHeight;
                            } else {
                                i9 = bitmapHeight;
                            }
                            float f8 = bitmapWidth;
                            float f9 = i9;
                            float min2 = Math.min(getContainerViewWidth() / f8, getContainerViewHeight() / f9);
                            if (this.sendPhotoType == 1) {
                                min = getCropFillScale(this.cropTransform.getOrientation() == 90 || this.cropTransform.getOrientation() == 270);
                            } else {
                                min = Math.min(getContainerViewWidth(0) / f8, getContainerViewHeight(0) / f9);
                            }
                            f = min2;
                        }
                        this.animateToScale = min / f;
                        this.animateToX = BitmapDescriptorFactory.HUE_RED;
                        this.translationX = (getLeftInset() / 2) - (getRightInset() / 2);
                        if (this.sendPhotoType == 1) {
                            int i16 = this.currentEditMode;
                            if (i16 == 2) {
                                this.animateToY = AndroidUtilities.m102dp(36);
                            } else if (i16 == 3) {
                                float f10 = -AndroidUtilities.m102dp(12);
                                this.animateToY = f10;
                                if (this.photoPaintView != null) {
                                    this.animateToY = f10 - (lPhotoPaintView2.getAdditionalTop() / 2.0f);
                                }
                            }
                        } else {
                            int i17 = this.currentEditMode;
                            if (i17 == 1) {
                                this.animateToY = AndroidUtilities.m102dp(56);
                            } else if (i17 == 2) {
                                this.animateToY = AndroidUtilities.m102dp(93);
                            } else if (i17 == 3) {
                                float m102dp = AndroidUtilities.m102dp(44);
                                this.animateToY = m102dp;
                                if (this.photoPaintView != null) {
                                    float additionalTop = m102dp - (lPhotoPaintView.getAdditionalTop() / 2.0f);
                                    this.animateToY = additionalTop;
                                    this.animateToY = additionalTop + (this.photoPaintView.getAdditionalBottom() / 2.0f);
                                }
                            }
                            if (isStatusBarVisible()) {
                                this.animateToY -= AndroidUtilities.statusBarHeight / 2;
                            }
                        }
                        this.animationStartTime = System.currentTimeMillis();
                        this.zoomAnimation = true;
                        z = false;
                    } else {
                        z = false;
                    }
                    this.padImageForHorizontalInsets = z;
                    this.imageMoveAnimation = new AnimatorSet();
                    ArrayList arrayList = new ArrayList(4);
                    int i18 = this.currentEditMode;
                    if (i18 == 1) {
                        arrayList.add(ObjectAnimator.ofFloat(this.editorDoneLayout, View.TRANSLATION_Y, AndroidUtilities.m102dp(48)));
                        i8 = 2;
                        arrayList.add(ObjectAnimator.ofFloat(this, AnimationProperties.PHOTO_VIEWER_ANIMATION_VALUE, BitmapDescriptorFactory.HUE_RED, 1.0f));
                        arrayList.add(ObjectAnimator.ofFloat(this.photoCropView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda3
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                PhotoViewer.this.lambda$switchToEditMode$57(valueAnimator);
                            }
                        });
                        arrayList.add(ofFloat);
                    } else {
                        i8 = 2;
                        if (i18 == 2) {
                            this.photoFilterView.shutdown();
                            arrayList.add(ObjectAnimator.ofFloat(this.photoFilterView.getToolsView(), View.TRANSLATION_Y, AndroidUtilities.m102dp(186)));
                            arrayList.add(ObjectAnimator.ofFloat(this.photoFilterView.getCurveControl(), View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                            arrayList.add(ObjectAnimator.ofFloat(this.photoFilterView.getBlurControl(), View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                            i8 = 2;
                            arrayList.add(ObjectAnimator.ofFloat(this, AnimationProperties.PHOTO_VIEWER_ANIMATION_VALUE, BitmapDescriptorFactory.HUE_RED, 1.0f));
                        } else if (i18 == 3) {
                            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(this.photoPaintView.getOffsetTranslationY(), AndroidUtilities.m102dp(126));
                            ValueAnimator ofFloat3 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, -AndroidUtilities.m102dp(12));
                            ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda14
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    PhotoViewer.this.lambda$switchToEditMode$58(valueAnimator);
                                }
                            });
                            ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda15
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    PhotoViewer.this.lambda$switchToEditMode$59(valueAnimator);
                                }
                            });
                            this.paintingOverlay.showAll();
                            this.containerView.invalidate();
                            this.photoPaintView.shutdown();
                            arrayList.add(ofFloat2);
                            arrayList.add(ofFloat3);
                            i8 = 2;
                            arrayList.add(ObjectAnimator.ofFloat(this, AnimationProperties.PHOTO_VIEWER_ANIMATION_VALUE, BitmapDescriptorFactory.HUE_RED, 1.0f));
                            this.photoPaintView.onAnimationStateChanged(true);
                        }
                    }
                    View view = this.navigationBar;
                    ArgbEvaluator argbEvaluator = new ArgbEvaluator();
                    Object[] objArr = new Object[i8];
                    objArr[0] = Integer.valueOf(color);
                    objArr[1] = Integer.valueOf(i12);
                    arrayList.add(ObjectAnimator.ofObject(view, TtmlNode.ATTR_TTS_BACKGROUND_COLOR, argbEvaluator, objArr));
                    this.imageMoveAnimation.playTogether(arrayList);
                    this.imageMoveAnimation.setDuration(200L);
                    this.imageMoveAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.53
                        {
                            PhotoViewer.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (PhotoViewer.this.currentEditMode == 1) {
                                PhotoViewer.this.photoCropView.onDisappear();
                                PhotoViewer.this.photoCropView.onHide();
                                PhotoViewer.this.editorDoneLayout.setVisibility(8);
                                PhotoViewer.this.photoCropView.setVisibility(8);
                                PhotoViewer.this.photoCropView.cropView.areaView.setRotationScaleTranslation(BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                            } else if (PhotoViewer.this.currentEditMode == 2) {
                                try {
                                    PhotoViewer.this.containerView.removeView(PhotoViewer.this.photoFilterView);
                                } catch (Exception e) {
                                    FileLog.m97e(e);
                                }
                                PhotoViewer.this.photoFilterView = null;
                            } else if (PhotoViewer.this.currentEditMode == 3) {
                                PhotoViewer.this.photoPaintView.onAnimationStateChanged(false);
                                try {
                                    PhotoViewer.this.containerView.removeView(PhotoViewer.this.photoPaintView.getView());
                                } catch (Exception e2) {
                                    FileLog.m97e(e2);
                                }
                                PhotoViewer.this.photoPaintView = null;
                            }
                            PhotoViewer.this.imageMoveAnimation = null;
                            PhotoViewer.this.currentEditMode = i;
                            PhotoViewer.this.captionEdit.keyboardNotifier.ignore(PhotoViewer.this.currentEditMode != 0);
                            if (PhotoViewer.this.paintKeyboardNotifier != null) {
                                PhotoViewer.this.paintKeyboardNotifier.ignore(PhotoViewer.this.currentEditMode != 3);
                            }
                            if (PhotoViewer.this.currentEditMode != 3) {
                                PhotoViewer.this.translateY = BitmapDescriptorFactory.HUE_RED;
                            }
                            PhotoViewer.this.switchingToMode = -1;
                            PhotoViewer.this.applying = false;
                            if (PhotoViewer.this.sendPhotoType == 1) {
                                PhotoViewer.this.photoCropView.setVisibility(0);
                            }
                            PhotoViewer.this.animateToScale = 1.0f;
                            PhotoViewer.this.animateToX = BitmapDescriptorFactory.HUE_RED;
                            PhotoViewer.this.animateToY = BitmapDescriptorFactory.HUE_RED;
                            PhotoViewer.this.scale = 1.0f;
                            PhotoViewer photoViewer = PhotoViewer.this;
                            photoViewer.updateMinMax(photoViewer.scale);
                            PhotoViewer.this.containerView.invalidate();
                            if (PhotoViewer.this.savedState != null) {
                                PhotoViewer.this.savedState.restore();
                                PhotoViewer.this.savedState = null;
                                ActionBarToggleParams enableStatusBarAnimation = new ActionBarToggleParams().enableStatusBarAnimation(false);
                                PhotoViewer.this.toggleActionBar(false, false, enableStatusBarAnimation);
                                PhotoViewer.this.toggleActionBar(true, true, enableStatusBarAnimation);
                                return;
                            }
                            AnimatorSet animatorSet = new AnimatorSet();
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(ObjectAnimator.ofFloat(PhotoViewer.this.pickerView, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED));
                            arrayList2.add(ObjectAnimator.ofFloat(PhotoViewer.this.pickerView, View.ALPHA, 1.0f));
                            arrayList2.add(ObjectAnimator.ofFloat(PhotoViewer.this.pickerViewSendButton, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED));
                            if (PhotoViewer.this.sendPhotoType != 1) {
                                arrayList2.add(ObjectAnimator.ofFloat(PhotoViewer.this.actionBar, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED));
                            }
                            if (PhotoViewer.this.needCaptionLayout) {
                                arrayList2.add(ObjectAnimator.ofFloat(PhotoViewer.this.captionTextViewSwitcher, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED));
                            }
                            if (PhotoViewer.this.sendPhotoType == 0 || PhotoViewer.this.sendPhotoType == 4) {
                                arrayList2.add(ObjectAnimator.ofFloat(PhotoViewer.this.checkImageView, View.ALPHA, 1.0f));
                                arrayList2.add(ObjectAnimator.ofFloat(PhotoViewer.this.photosCounterView, View.ALPHA, 1.0f));
                            } else if (PhotoViewer.this.sendPhotoType == 1) {
                                arrayList2.add(ObjectAnimator.ofFloat(PhotoViewer.this.photoCropView, View.ALPHA, 1.0f));
                            }
                            if (PhotoViewer.this.muteItem.getTag() != null) {
                                PhotoViewer.this.muteItem.setVisibility(0);
                                arrayList2.add(ObjectAnimator.ofFloat(PhotoViewer.this.muteItem, View.ALPHA, 1.0f));
                            }
                            if (PhotoViewer.this.navigationBar != null) {
                                PhotoViewer.this.navigationBar.setVisibility(0);
                                arrayList2.add(ObjectAnimator.ofFloat(PhotoViewer.this.navigationBar, View.ALPHA, 1.0f));
                            }
                            animatorSet.playTogether(arrayList2);
                            animatorSet.setDuration(200L);
                            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.53.1
                                {
                                    C664853.this = this;
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationStart(Animator animator2) {
                                    PhotoViewer.this.pickerView.setVisibility(0);
                                    if (PhotoViewer.this.useFullWidthSendButton()) {
                                        PhotoViewer.this.doneButtonFullWidth.setVisibility(0);
                                    } else {
                                        PhotoViewer.this.pickerViewSendButton.setVisibility(0);
                                    }
                                    PhotoViewer.this.actionBar.setVisibility(0);
                                    if (PhotoViewer.this.needCaptionLayout) {
                                        PhotoViewer.this.captionTextViewSwitcher.setVisibility(PhotoViewer.this.captionTextViewSwitcher.getTag() != null ? 0 : 4);
                                    }
                                    if (PhotoViewer.this.sendPhotoType == 0 || PhotoViewer.this.sendPhotoType == 4 || ((PhotoViewer.this.sendPhotoType == 2 || PhotoViewer.this.sendPhotoType == 5) && PhotoViewer.this.imagesArrLocals.size() > 1)) {
                                        PhotoViewer.this.checkImageView.setVisibility(0);
                                        PhotoViewer.this.photosCounterView.setVisibility(0);
                                        PhotoViewer.this.updateActionBarTitlePadding();
                                    }
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator2) {
                                    if (PhotoViewer.this.videoConvertSupported && PhotoViewer.this.isCurrentVideo) {
                                        PhotoViewer.this.updateVideoInfo();
                                    }
                                }
                            });
                            animatorSet.start();
                        }
                    });
                    this.imageMoveAnimation.start();
                } else {
                    if (i == 1) {
                        startVideoPlayer();
                        createCropView();
                        this.previousHasTransform = this.cropTransform.hasViewTransform();
                        this.previousCropPx = this.cropTransform.getCropPx();
                        this.previousCropPy = this.cropTransform.getCropPy();
                        this.previousCropScale = this.cropTransform.getScale();
                        this.previousCropRotation = this.cropTransform.getRotation();
                        this.previousCropOrientation = this.cropTransform.getOrientation();
                        this.previousCropPw = this.cropTransform.getCropPw();
                        this.previousCropPh = this.cropTransform.getCropPh();
                        this.previousCropMirrored = this.cropTransform.isMirrored();
                        this.photoCropView.onAppear();
                        this.editorDoneLayout.doneButton.setText(LocaleController.getString("Crop", C3630R.string.Crop));
                        this.editorDoneLayout.doneButton.setTextColor(getThemedColor(Theme.key_dialogFloatingButton));
                        this.changeModeAnimation = new AnimatorSet();
                        ArrayList arrayList2 = new ArrayList();
                        FrameLayout frameLayout = this.pickerView;
                        Property property = View.TRANSLATION_Y;
                        float[] fArr = new float[2];
                        fArr[0] = 0.0f;
                        fArr[1] = frameLayout.getHeight() + this.captionEdit.getEditTextHeight() + (this.isCurrentVideo ? AndroidUtilities.m102dp(58) : 0);
                        arrayList2.add(ObjectAnimator.ofFloat(frameLayout, property, fArr));
                        arrayList2.add(ObjectAnimator.ofFloat(this.pickerView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                        ImageView imageView = this.pickerViewSendButton;
                        Property property2 = View.TRANSLATION_Y;
                        float[] fArr2 = new float[2];
                        fArr2[0] = 0.0f;
                        fArr2[1] = AndroidUtilities.m102dp(this.isCurrentVideo ? 154 : 96);
                        arrayList2.add(ObjectAnimator.ofFloat(imageView, property2, fArr2));
                        arrayList2.add(ObjectAnimator.ofFloat(this.actionBar, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED, -c3702ActionBar3.getHeight()));
                        arrayList2.add(ObjectAnimator.ofObject(this.navigationBar, TtmlNode.ATTR_TTS_BACKGROUND_COLOR, new ArgbEvaluator(), Integer.valueOf(color), Integer.valueOf(i12)));
                        if (this.needCaptionLayout) {
                            CaptionTextViewSwitcher captionTextViewSwitcher = this.captionTextViewSwitcher;
                            Property property3 = View.TRANSLATION_Y;
                            float[] fArr3 = new float[2];
                            fArr3[0] = 0.0f;
                            fArr3[1] = AndroidUtilities.m102dp(this.isCurrentVideo ? 154 : 96);
                            arrayList2.add(ObjectAnimator.ofFloat(captionTextViewSwitcher, property3, fArr3));
                        }
                        int i19 = this.sendPhotoType;
                        if (i19 == 0 || i19 == 4) {
                            i7 = 2;
                            arrayList2.add(ObjectAnimator.ofFloat(this.checkImageView, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                            arrayList2.add(ObjectAnimator.ofFloat(this.photosCounterView, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                        } else {
                            i7 = 2;
                        }
                        if (this.selectedPhotosListView.getVisibility() == 0) {
                            float[] fArr4 = new float[i7];
                            // fill-array-data instruction
                            fArr4[0] = 1.0f;
                            fArr4[1] = 0.0f;
                            arrayList2.add(ObjectAnimator.ofFloat(this.selectedPhotosListView, View.ALPHA, fArr4));
                        }
                        if (this.muteItem.getTag() != null) {
                            float[] fArr5 = new float[i7];
                            // fill-array-data instruction
                            fArr5[0] = 1.0f;
                            fArr5[1] = 0.0f;
                            arrayList2.add(ObjectAnimator.ofFloat(this.muteItem, View.ALPHA, fArr5));
                        }
                        View view2 = this.navigationBar;
                        if (view2 != null) {
                            arrayList2.add(ObjectAnimator.ofFloat(view2, View.ALPHA, 1.0f));
                        }
                        this.changeModeAnimation.playTogether(arrayList2);
                        this.changeModeAnimation.setDuration(200L);
                        this.changeModeAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.54
                            {
                                PhotoViewer.this = this;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                PhotoViewer photoViewer;
                                PhotoViewer.this.changeModeAnimation = null;
                                PhotoViewer.this.pickerView.setVisibility(8);
                                PhotoViewer.this.pickerViewSendButton.setVisibility(8);
                                PhotoViewer.this.doneButtonFullWidth.setVisibility(8);
                                PhotoViewer.this.muteItem.setVisibility(8);
                                PhotoViewer.this.selectedPhotosListView.setVisibility(8);
                                PhotoViewer.this.selectedPhotosListView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                                PhotoViewer.this.selectedPhotosListView.setTranslationY(-AndroidUtilities.m102dp(10));
                                PhotoViewer.this.photosCounterView.setRotationX(BitmapDescriptorFactory.HUE_RED);
                                PhotoViewer.this.selectedPhotosListView.setEnabled(false);
                                PhotoViewer.this.isPhotosListViewVisible = false;
                                if (PhotoViewer.this.needCaptionLayout) {
                                    PhotoViewer.this.captionTextViewSwitcher.setVisibility(4);
                                }
                                if (PhotoViewer.this.sendPhotoType == 0 || PhotoViewer.this.sendPhotoType == 4 || ((PhotoViewer.this.sendPhotoType == 2 || PhotoViewer.this.sendPhotoType == 5) && PhotoViewer.this.imagesArrLocals.size() > 1)) {
                                    PhotoViewer.this.checkImageView.setVisibility(8);
                                    PhotoViewer.this.photosCounterView.setVisibility(8);
                                    PhotoViewer.this.updateActionBarTitlePadding();
                                }
                                Bitmap bitmap2 = PhotoViewer.this.centerImage.getBitmap();
                                if (bitmap2 != null || PhotoViewer.this.isCurrentVideo) {
                                    PhotoViewer.this.photoCropView.setBitmap(bitmap2, PhotoViewer.this.centerImage.getOrientation(), PhotoViewer.this.sendPhotoType != 1, false, PhotoViewer.this.paintingOverlay, PhotoViewer.this.cropTransform, PhotoViewer.this.isCurrentVideo ? (VideoEditTextureView) PhotoViewer.this.videoTextureView : null, PhotoViewer.this.editState.cropState);
                                    PhotoViewer.this.photoCropView.onDisappear();
                                    int bitmapWidth2 = PhotoViewer.this.centerImage.getBitmapWidth();
                                    int bitmapHeight2 = PhotoViewer.this.centerImage.getBitmapHeight();
                                    if (PhotoViewer.this.editState.cropState != null) {
                                        if (PhotoViewer.this.editState.cropState.transformRotation == 90 || PhotoViewer.this.editState.cropState.transformRotation == 270) {
                                            bitmapHeight2 = bitmapWidth2;
                                            bitmapWidth2 = bitmapHeight2;
                                        }
                                        bitmapWidth2 = (int) (bitmapWidth2 * PhotoViewer.this.editState.cropState.cropPw);
                                        bitmapHeight2 = (int) (bitmapHeight2 * PhotoViewer.this.editState.cropState.cropPh);
                                    }
                                    float f11 = bitmapWidth2;
                                    float f12 = bitmapHeight2;
                                    float min3 = Math.min(PhotoViewer.this.getContainerViewWidth() / f11, PhotoViewer.this.getContainerViewHeight() / f12);
                                    float min4 = Math.min(PhotoViewer.this.getContainerViewWidth(1) / f11, PhotoViewer.this.getContainerViewHeight(1) / f12);
                                    if (PhotoViewer.this.sendPhotoType == 1) {
                                        float min5 = Math.min(PhotoViewer.this.getContainerViewWidth(1), PhotoViewer.this.getContainerViewHeight(1));
                                        min4 = Math.max(min5 / f11, min5 / f12);
                                    }
                                    PhotoViewer.this.animateToScale = min4 / min3;
                                    PhotoViewer.this.animateToX = (photoViewer.getLeftInset() / 2) - (PhotoViewer.this.getRightInset() / 2);
                                    PhotoViewer.this.animateToY = (-AndroidUtilities.m102dp(56)) + (PhotoViewer.this.isStatusBarVisible() ? AndroidUtilities.statusBarHeight / 2 : 0);
                                    PhotoViewer.this.animationStartTime = System.currentTimeMillis();
                                    PhotoViewer.this.zoomAnimation = true;
                                }
                                PhotoViewer.this.imageMoveAnimation = new AnimatorSet();
                                PhotoViewer.this.imageMoveAnimation.playTogether(ObjectAnimator.ofFloat(PhotoViewer.this.editorDoneLayout, View.TRANSLATION_Y, AndroidUtilities.m102dp(48), BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(PhotoViewer.this, AnimationProperties.PHOTO_VIEWER_ANIMATION_VALUE, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(PhotoViewer.this.photoCropView, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                                PhotoViewer.this.imageMoveAnimation.setDuration(200L);
                                PhotoViewer.this.imageMoveAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.54.1
                                    {
                                        C665054.this = this;
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationStart(Animator animator2) {
                                        PhotoViewer.this.editorDoneLayout.setVisibility(0);
                                        PhotoViewer.this.photoCropView.setVisibility(0);
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator2) {
                                        PhotoViewer.this.photoCropView.onAppeared();
                                        PhotoViewer.this.photoCropView.onShow();
                                        PhotoViewer.this.imageMoveAnimation = null;
                                        C665054 c665054 = C665054.this;
                                        PhotoViewer.this.currentEditMode = i;
                                        PhotoViewer.this.captionEdit.keyboardNotifier.ignore(PhotoViewer.this.currentEditMode != 0);
                                        if (PhotoViewer.this.paintKeyboardNotifier != null) {
                                            PhotoViewer.this.paintKeyboardNotifier.ignore(PhotoViewer.this.currentEditMode != 3);
                                        }
                                        if (PhotoViewer.this.currentEditMode != 3) {
                                            PhotoViewer.this.translateY = BitmapDescriptorFactory.HUE_RED;
                                        }
                                        PhotoViewer.this.switchingToMode = -1;
                                        PhotoViewer.this.animateToScale = 1.0f;
                                        PhotoViewer.this.animateToX = BitmapDescriptorFactory.HUE_RED;
                                        PhotoViewer.this.animateToY = BitmapDescriptorFactory.HUE_RED;
                                        PhotoViewer.this.scale = 1.0f;
                                        PhotoViewer photoViewer2 = PhotoViewer.this;
                                        photoViewer2.updateMinMax(photoViewer2.scale);
                                        PhotoViewer.this.padImageForHorizontalInsets = true;
                                        PhotoViewer.this.containerView.invalidate();
                                    }
                                });
                                PhotoViewer.this.imageMoveAnimation.start();
                            }
                        });
                        this.changeModeAnimation.start();
                    } else if (i == 2) {
                        startVideoPlayer();
                        if (this.photoFilterView == null) {
                            if (this.imagesArrLocals.isEmpty()) {
                                str = null;
                                savedFilterState = null;
                                i4 = 0;
                            } else {
                                Object obj = this.imagesArrLocals.get(this.currentIndex);
                                i4 = obj instanceof MediaController.PhotoEntry ? ((MediaController.PhotoEntry) obj).orientation : 0;
                                MediaController.MediaEditState mediaEditState = (MediaController.MediaEditState) obj;
                                MediaController.SavedFilterState savedFilterState2 = mediaEditState.savedFilterState;
                                str = mediaEditState.getPath();
                                savedFilterState = savedFilterState2;
                            }
                            if (this.videoTextureView != null) {
                                bitmap = null;
                            } else {
                                if (savedFilterState == null) {
                                    decodeFile = this.centerImage.getBitmap();
                                    i4 = this.centerImage.getOrientation();
                                } else {
                                    decodeFile = BitmapFactory.decodeFile(str);
                                }
                                bitmap = decodeFile;
                            }
                            int i20 = i4;
                            if (this.sendPhotoType == 1) {
                                i5 = 1;
                            } else if (this.isCurrentVideo || (i6 = this.currentImageHasFace) == 2) {
                                i5 = 2;
                            } else {
                                i5 = i6 == 1 ? 1 : 0;
                            }
                            Activity activity = this.parentActivity;
                            TextureView textureView = this.videoTextureView;
                            PhotoFilterView photoFilterView = new PhotoFilterView(activity, textureView != null ? (VideoEditTextureView) textureView : null, bitmap, i20, savedFilterState, this.isCurrentVideo ? null : this.paintingOverlay, i5, textureView == null && (((cropState = this.editState.cropState) != null && cropState.mirrored) || this.cropTransform.isMirrored()), true, null, this.resourcesProvider);
                            this.photoFilterView = photoFilterView;
                            this.containerView.addView(photoFilterView, LayoutHelper.createFrame(-1, -1));
                            this.photoFilterView.getDoneTextView().setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda31
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view3) {
                                    PhotoViewer.this.lambda$switchToEditMode$60(view3);
                                }
                            });
                            this.photoFilterView.getCancelTextView().setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda47
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view3) {
                                    PhotoViewer.this.lambda$switchToEditMode$62(view3);
                                }
                            });
                            this.photoFilterView.getToolsView().setTranslationY(AndroidUtilities.m102dp(186));
                        }
                        this.changeModeAnimation = new AnimatorSet();
                        ArrayList arrayList3 = new ArrayList();
                        FrameLayout frameLayout2 = this.pickerView;
                        Property property4 = View.TRANSLATION_Y;
                        float[] fArr6 = new float[2];
                        fArr6[0] = 0.0f;
                        fArr6[1] = frameLayout2.getHeight() + this.captionEdit.getEditTextHeight() + (this.isCurrentVideo ? AndroidUtilities.m102dp(58) : 0);
                        arrayList3.add(ObjectAnimator.ofFloat(frameLayout2, property4, fArr6));
                        arrayList3.add(ObjectAnimator.ofFloat(this.pickerView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                        ImageView imageView2 = this.pickerViewSendButton;
                        Property property5 = View.TRANSLATION_Y;
                        float[] fArr7 = new float[2];
                        fArr7[0] = 0.0f;
                        fArr7[1] = AndroidUtilities.m102dp(this.isCurrentVideo ? 154 : 96);
                        arrayList3.add(ObjectAnimator.ofFloat(imageView2, property5, fArr7));
                        arrayList3.add(ObjectAnimator.ofFloat(this.actionBar, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED, -c3702ActionBar2.getHeight()));
                        int i21 = this.sendPhotoType;
                        if (i21 == 0 || i21 == 4) {
                            i3 = 2;
                            arrayList3.add(ObjectAnimator.ofFloat(this.checkImageView, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                            arrayList3.add(ObjectAnimator.ofFloat(this.photosCounterView, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                        } else if (i21 == 1) {
                            i3 = 2;
                            arrayList3.add(ObjectAnimator.ofFloat(this.photoCropView, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                        } else {
                            i3 = 2;
                        }
                        if (this.selectedPhotosListView.getVisibility() == 0) {
                            float[] fArr8 = new float[i3];
                            // fill-array-data instruction
                            fArr8[0] = 1.0f;
                            fArr8[1] = 0.0f;
                            arrayList3.add(ObjectAnimator.ofFloat(this.selectedPhotosListView, View.ALPHA, fArr8));
                        }
                        if (this.muteItem.getTag() != null) {
                            float[] fArr9 = new float[i3];
                            // fill-array-data instruction
                            fArr9[0] = 1.0f;
                            fArr9[1] = 0.0f;
                            arrayList3.add(ObjectAnimator.ofFloat(this.muteItem, View.ALPHA, fArr9));
                        }
                        View view3 = this.navigationBar;
                        ArgbEvaluator argbEvaluator2 = new ArgbEvaluator();
                        Object[] objArr2 = new Object[i3];
                        objArr2[0] = Integer.valueOf(color);
                        objArr2[1] = Integer.valueOf(i12);
                        arrayList3.add(ObjectAnimator.ofObject(view3, TtmlNode.ATTR_TTS_BACKGROUND_COLOR, argbEvaluator2, objArr2));
                        this.changeModeAnimation.playTogether(arrayList3);
                        this.changeModeAnimation.setDuration(200L);
                        this.changeModeAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.55
                            {
                                PhotoViewer.this = this;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                float min3;
                                PhotoViewer photoViewer;
                                PhotoViewer.this.changeModeAnimation = null;
                                PhotoViewer.this.pickerView.setVisibility(8);
                                PhotoViewer.this.pickerViewSendButton.setVisibility(8);
                                PhotoViewer.this.doneButtonFullWidth.setVisibility(8);
                                PhotoViewer.this.actionBar.setVisibility(8);
                                PhotoViewer.this.muteItem.setVisibility(8);
                                if (PhotoViewer.this.photoCropView != null) {
                                    PhotoViewer.this.photoCropView.setVisibility(4);
                                }
                                PhotoViewer.this.selectedPhotosListView.setVisibility(8);
                                PhotoViewer.this.selectedPhotosListView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                                PhotoViewer.this.selectedPhotosListView.setTranslationY(-AndroidUtilities.m102dp(10));
                                PhotoViewer.this.photosCounterView.setRotationX(BitmapDescriptorFactory.HUE_RED);
                                PhotoViewer.this.selectedPhotosListView.setEnabled(false);
                                PhotoViewer.this.isPhotosListViewVisible = false;
                                if (PhotoViewer.this.needCaptionLayout) {
                                    PhotoViewer.this.captionTextViewSwitcher.setVisibility(4);
                                }
                                if (PhotoViewer.this.sendPhotoType == 0 || PhotoViewer.this.sendPhotoType == 4 || ((PhotoViewer.this.sendPhotoType == 2 || PhotoViewer.this.sendPhotoType == 5) && PhotoViewer.this.imagesArrLocals.size() > 1)) {
                                    PhotoViewer.this.checkImageView.setVisibility(8);
                                    PhotoViewer.this.photosCounterView.setVisibility(8);
                                    PhotoViewer.this.updateActionBarTitlePadding();
                                }
                                if (PhotoViewer.this.centerImage.getBitmap() != null) {
                                    float bitmapWidth2 = PhotoViewer.this.centerImage.getBitmapWidth();
                                    float bitmapHeight2 = PhotoViewer.this.centerImage.getBitmapHeight();
                                    float min4 = Math.min(PhotoViewer.this.getContainerViewWidth(2) / bitmapWidth2, PhotoViewer.this.getContainerViewHeight(2) / bitmapHeight2);
                                    if (PhotoViewer.this.sendPhotoType == 1) {
                                        PhotoViewer.this.animateToY = -AndroidUtilities.m102dp(36);
                                        min3 = PhotoViewer.this.getCropFillScale(false);
                                    } else {
                                        PhotoViewer.this.animateToY = (-AndroidUtilities.m102dp(93)) + (PhotoViewer.this.isStatusBarVisible() ? AndroidUtilities.statusBarHeight / 2 : 0);
                                        min3 = (PhotoViewer.this.editState.cropState == null || !(PhotoViewer.this.editState.cropState.transformRotation == 90 || PhotoViewer.this.editState.cropState.transformRotation == 270)) ? Math.min(PhotoViewer.this.getContainerViewWidth() / bitmapWidth2, PhotoViewer.this.getContainerViewHeight() / bitmapHeight2) : Math.min(PhotoViewer.this.getContainerViewWidth() / bitmapHeight2, PhotoViewer.this.getContainerViewHeight() / bitmapWidth2);
                                    }
                                    PhotoViewer.this.animateToScale = min4 / min3;
                                    PhotoViewer.this.animateToX = (photoViewer.getLeftInset() / 2) - (PhotoViewer.this.getRightInset() / 2);
                                    PhotoViewer.this.animationStartTime = System.currentTimeMillis();
                                    PhotoViewer.this.zoomAnimation = true;
                                }
                                PhotoViewer.this.imageMoveAnimation = new AnimatorSet();
                                PhotoViewer.this.imageMoveAnimation.playTogether(ObjectAnimator.ofFloat(PhotoViewer.this, AnimationProperties.PHOTO_VIEWER_ANIMATION_VALUE, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(PhotoViewer.this.photoFilterView.getToolsView(), View.TRANSLATION_Y, AndroidUtilities.m102dp(186), BitmapDescriptorFactory.HUE_RED));
                                PhotoViewer.this.imageMoveAnimation.setDuration(200L);
                                PhotoViewer.this.imageMoveAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.55.1
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationStart(Animator animator2) {
                                    }

                                    {
                                        C665255.this = this;
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator2) {
                                        PhotoViewer.this.photoFilterView.init();
                                        PhotoViewer.this.imageMoveAnimation = null;
                                        C665255 c665255 = C665255.this;
                                        PhotoViewer.this.currentEditMode = i;
                                        PhotoViewer.this.captionEdit.keyboardNotifier.ignore(PhotoViewer.this.currentEditMode != 0);
                                        if (PhotoViewer.this.paintKeyboardNotifier != null) {
                                            PhotoViewer.this.paintKeyboardNotifier.ignore(PhotoViewer.this.currentEditMode != 3);
                                        }
                                        if (PhotoViewer.this.currentEditMode != 3) {
                                            PhotoViewer.this.translateY = BitmapDescriptorFactory.HUE_RED;
                                        }
                                        PhotoViewer.this.switchingToMode = -1;
                                        PhotoViewer.this.animateToScale = 1.0f;
                                        PhotoViewer.this.animateToX = BitmapDescriptorFactory.HUE_RED;
                                        PhotoViewer.this.animateToY = BitmapDescriptorFactory.HUE_RED;
                                        PhotoViewer.this.scale = 1.0f;
                                        PhotoViewer photoViewer2 = PhotoViewer.this;
                                        photoViewer2.updateMinMax(photoViewer2.scale);
                                        PhotoViewer.this.padImageForHorizontalInsets = true;
                                        PhotoViewer.this.containerView.invalidate();
                                    }
                                });
                                PhotoViewer.this.imageMoveAnimation.start();
                            }
                        });
                        this.changeModeAnimation.start();
                    } else if (i == 3) {
                        startVideoPlayer();
                        createPaintView();
                        this.changeModeAnimation = new AnimatorSet();
                        ArrayList arrayList4 = new ArrayList();
                        FrameLayout frameLayout3 = this.pickerView;
                        Property property6 = View.TRANSLATION_Y;
                        float[] fArr10 = new float[1];
                        fArr10[0] = frameLayout3.getHeight() + this.captionEdit.getEditTextHeight() + (this.isCurrentVideo ? AndroidUtilities.m102dp(58) : 0);
                        arrayList4.add(ObjectAnimator.ofFloat(frameLayout3, property6, fArr10));
                        arrayList4.add(ObjectAnimator.ofFloat(this.pickerView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                        ImageView imageView3 = this.pickerViewSendButton;
                        Property property7 = View.TRANSLATION_Y;
                        float[] fArr11 = new float[1];
                        fArr11[0] = AndroidUtilities.m102dp(this.isCurrentVideo ? 154 : 96);
                        arrayList4.add(ObjectAnimator.ofFloat(imageView3, property7, fArr11));
                        arrayList4.add(ObjectAnimator.ofFloat(this.actionBar, View.TRANSLATION_Y, -c3702ActionBar.getHeight()));
                        arrayList4.add(ObjectAnimator.ofObject(this.navigationBar, TtmlNode.ATTR_TTS_BACKGROUND_COLOR, new ArgbEvaluator(), Integer.valueOf(color), Integer.valueOf(i12)));
                        if (this.needCaptionLayout) {
                            CaptionTextViewSwitcher captionTextViewSwitcher2 = this.captionTextViewSwitcher;
                            Property property8 = View.TRANSLATION_Y;
                            float[] fArr12 = new float[1];
                            fArr12[0] = AndroidUtilities.m102dp(this.isCurrentVideo ? 154 : 96);
                            arrayList4.add(ObjectAnimator.ofFloat(captionTextViewSwitcher2, property8, fArr12));
                        }
                        int i22 = this.sendPhotoType;
                        if (i22 == 0 || i22 == 4) {
                            i2 = 2;
                            arrayList4.add(ObjectAnimator.ofFloat(this.checkImageView, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                            arrayList4.add(ObjectAnimator.ofFloat(this.photosCounterView, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                        } else if (i22 == 1) {
                            i2 = 2;
                            arrayList4.add(ObjectAnimator.ofFloat(this.photoCropView, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                        } else {
                            i2 = 2;
                        }
                        if (this.selectedPhotosListView.getVisibility() == 0) {
                            float[] fArr13 = new float[i2];
                            // fill-array-data instruction
                            fArr13[0] = 1.0f;
                            fArr13[1] = 0.0f;
                            arrayList4.add(ObjectAnimator.ofFloat(this.selectedPhotosListView, View.ALPHA, fArr13));
                        }
                        if (this.muteItem.getTag() != null) {
                            float[] fArr14 = new float[i2];
                            // fill-array-data instruction
                            fArr14[0] = 1.0f;
                            fArr14[1] = 0.0f;
                            arrayList4.add(ObjectAnimator.ofFloat(this.muteItem, View.ALPHA, fArr14));
                        }
                        this.changeModeAnimation.playTogether(arrayList4);
                        this.changeModeAnimation.setDuration(200L);
                        this.changeModeAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.56
                            {
                                PhotoViewer.this = this;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                PhotoViewer.this.switchToPaintMode();
                            }
                        });
                        this.changeModeAnimation.start();
                    }
                }
                FrameLayoutDrawer frameLayoutDrawer = this.containerView;
                if (frameLayoutDrawer != null) {
                    frameLayoutDrawer.updateExclusionRects();
                }
            }
        }
    }

    public /* synthetic */ void lambda$switchToEditMode$57(ValueAnimator valueAnimator) {
        this.photoCropView.cropView.areaView.setRotationScaleTranslation(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.lerp(this.scale, this.animateToScale, this.animationValue), AndroidUtilities.lerp(this.translationX, this.animateToX, this.animationValue), AndroidUtilities.lerp(this.translationY, this.animateToY, this.animationValue));
    }

    public /* synthetic */ void lambda$switchToEditMode$58(ValueAnimator valueAnimator) {
        this.photoPaintView.setOffsetTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue(), BitmapDescriptorFactory.HUE_RED, 0, false);
    }

    public /* synthetic */ void lambda$switchToEditMode$59(ValueAnimator valueAnimator) {
        this.photoPaintView.setOffsetTranslationX(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public /* synthetic */ void lambda$switchToEditMode$60(View view) {
        applyCurrentEditMode();
        switchToEditMode(0);
    }

    public /* synthetic */ void lambda$switchToEditMode$62(View view) {
        if (this.photoFilterView.hasChanges()) {
            Activity activity = this.parentActivity;
            if (activity == null) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(activity, this.resourcesProvider);
            builder.setMessage(LocaleController.getString("DiscardChanges", C3630R.string.DiscardChanges));
            builder.setTitle(LocaleController.getString("AppName", C3630R.string.AppName));
            builder.setPositiveButton(LocaleController.getString("OK", C3630R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda20
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    PhotoViewer.this.lambda$switchToEditMode$61(dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), null);
            showAlertDialog(builder);
            return;
        }
        switchToEditMode(0);
    }

    public /* synthetic */ void lambda$switchToEditMode$61(DialogInterface dialogInterface, int i) {
        switchToEditMode(0);
    }

    private void createPaintView() {
        int bitmapWidth;
        int bitmapHeight;
        MediaController.CropState cropState;
        if (this.photoPaintView == null) {
            TextureView textureView = this.videoTextureView;
            if (textureView != null) {
                VideoEditTextureView videoEditTextureView = (VideoEditTextureView) textureView;
                bitmapWidth = videoEditTextureView.getVideoWidth();
                bitmapHeight = videoEditTextureView.getVideoHeight();
                while (true) {
                    if (bitmapWidth <= 1280 && bitmapHeight <= 1280) {
                        break;
                    }
                    bitmapWidth /= 2;
                    bitmapHeight /= 2;
                }
            } else {
                bitmapWidth = this.centerImage.getBitmapWidth();
                bitmapHeight = this.centerImage.getBitmapHeight();
            }
            Bitmap bitmap = this.paintingOverlay.getBitmap();
            Bitmap createBitmap = (bitmap != null || bitmapWidth <= 0 || bitmapHeight <= 0) ? bitmap : Bitmap.createBitmap(bitmapWidth, bitmapHeight, Bitmap.Config.ARGB_8888);
            if (this.sendPhotoType == 1) {
                cropState = new MediaController.CropState();
                cropState.transformRotation = this.cropTransform.getOrientation();
            } else {
                cropState = this.editState.cropState;
            }
            MediaController.CropState cropState2 = cropState;
            KeyboardNotifier keyboardNotifier = new KeyboardNotifier(this.windowView, new Utilities.Callback() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda92
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    PhotoViewer.this.lambda$createPaintView$64((Integer) obj);
                }
            });
            this.paintKeyboardNotifier = keyboardNotifier;
            keyboardNotifier.ignore(this.currentEditMode != 3);
            Activity activity = this.parentActivity;
            LPhotoPaintView lPhotoPaintView = new LPhotoPaintView(activity, activity, this.currentAccount, createBitmap, this.isCurrentVideo ? null : this.centerImage.getBitmap(), this.centerImage.getOrientation(), this.editState.mediaEntities, cropState2, new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda59
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.this.lambda$createPaintView$65();
                }
            }, this.resourcesProvider) { // from class: org.telegram.ui.PhotoViewer.57
                {
                    PhotoViewer.this = this;
                }

                @Override // org.telegram.p042ui.Components.Paint.Views.LPhotoPaintView
                protected void onOpenCloseStickersAlert(boolean z) {
                    if (PhotoViewer.this.videoPlayer == null) {
                        return;
                    }
                    PhotoViewer.this.manuallyPaused = false;
                    PhotoViewer.this.cancelVideoPlayRunnable();
                    if (z) {
                        PhotoViewer.this.videoPlayer.pause();
                    } else {
                        PhotoViewer.this.videoPlayer.play();
                    }
                }

                @Override // org.telegram.p042ui.Components.Paint.Views.LPhotoPaintView
                protected int getPKeyboardHeight() {
                    if (PhotoViewer.this.paintKeyboardNotifier != null) {
                        return PhotoViewer.this.paintKeyboardNotifier.getKeyboardHeight();
                    }
                    return 0;
                }

                @Override // org.telegram.p042ui.Components.Paint.Views.LPhotoPaintView
                protected void onEmojiViewCloseByClick() {
                    if (PhotoViewer.this.paintKeyboardNotifier != null) {
                        PhotoViewer.this.paintKeyboardNotifier.awaitKeyboard();
                    }
                }

                @Override // org.telegram.p042ui.Components.Paint.Views.LPhotoPaintView
                protected void updateKeyboard() {
                    if (PhotoViewer.this.paintKeyboardNotifier != null) {
                        PhotoViewer.this.paintKeyboardNotifier.fire();
                    }
                }

                @Override // org.telegram.p042ui.Components.Paint.Views.LPhotoPaintView
                protected void didSetAnimatedSticker(RLottieDrawable rLottieDrawable) {
                    if (PhotoViewer.this.videoPlayer == null) {
                        return;
                    }
                    rLottieDrawable.setProgressMs(PhotoViewer.this.videoPlayer.getCurrentPosition() - (PhotoViewer.this.startTime > 0 ? PhotoViewer.this.startTime / 1000 : 0L));
                }

                @Override // org.telegram.p042ui.Components.Paint.Views.LPhotoPaintView
                protected void onTextAdd() {
                    PhotoViewer.this.windowView.isFocusable();
                }
            };
            this.photoPaintView = lPhotoPaintView;
            this.containerView.addView(lPhotoPaintView.getView(), LayoutHelper.createFrame(-1, -1));
            this.photoPaintView.setOnDoneButtonClickedListener(new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda70
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.this.lambda$createPaintView$66();
                }
            });
            this.photoPaintView.getCancelView().setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda28
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PhotoViewer.this.lambda$createPaintView$67(view);
                }
            });
            this.photoPaintView.setOffsetTranslationY(AndroidUtilities.m102dp(126), BitmapDescriptorFactory.HUE_RED, 0, false);
            this.photoPaintView.setOffsetTranslationX(-AndroidUtilities.m102dp(12));
        }
    }

    public /* synthetic */ void lambda$createPaintView$64(Integer num) {
        this.photoPaintView.keyboardVisible = this.paintKeyboardNotifier.keyboardVisible();
        this.containerView.invalidate();
        Integer valueOf = Integer.valueOf(Math.max(num.intValue(), this.photoPaintView.getEmojiPadding(false)));
        boolean isCurrentText = this.photoPaintView.isCurrentText();
        float f = BitmapDescriptorFactory.HUE_RED;
        translateY((!isCurrentText || valueOf.intValue() <= 0) ? 0.0f : ((AndroidUtilities.displaySize.y - valueOf.intValue()) - AndroidUtilities.m102dp(80)) - this.photoPaintView.getSelectedEntityBottom());
        AnimatorSet animatorSet = this.paintKeyboardAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PhotoViewer.this.lambda$createPaintView$63(valueAnimator);
            }
        });
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.paintKeyboardAnimator = animatorSet2;
        Animator[] animatorArr = new Animator[6];
        animatorArr[0] = ObjectAnimator.ofFloat(this.photoPaintView.weightChooserView, View.TRANSLATION_Y, (-valueOf.intValue()) / 2.5f);
        animatorArr[1] = ObjectAnimator.ofFloat(this.photoPaintView.bottomLayout, View.TRANSLATION_Y, Math.min(0, (-valueOf.intValue()) + AndroidUtilities.m102dp(40)));
        LinearLayout linearLayout = this.photoPaintView.tabsLayout;
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        fArr[0] = valueOf.intValue() > AndroidUtilities.m102dp(20) ? 0.0f : 1.0f;
        animatorArr[2] = ObjectAnimator.ofFloat(linearLayout, property, fArr);
        PaintCancelView paintCancelView = this.photoPaintView.cancelButton;
        Property property2 = View.ALPHA;
        float[] fArr2 = new float[1];
        fArr2[0] = valueOf.intValue() > AndroidUtilities.m102dp(20) ? 0.0f : 1.0f;
        animatorArr[3] = ObjectAnimator.ofFloat(paintCancelView, property2, fArr2);
        PaintDoneView paintDoneView = this.photoPaintView.doneButton;
        Property property3 = View.ALPHA;
        float[] fArr3 = new float[1];
        if (valueOf.intValue() <= AndroidUtilities.m102dp(20)) {
            f = 1.0f;
        }
        fArr3[0] = f;
        animatorArr[4] = ObjectAnimator.ofFloat(paintDoneView, property3, fArr3);
        animatorArr[5] = ofFloat;
        animatorSet2.playTogether(animatorArr);
        animatorSet2.setDuration(320L);
        animatorSet2.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        animatorSet2.start();
        this.photoPaintView.updatePlusEmojiKeyboardButton();
    }

    public /* synthetic */ void lambda$createPaintView$63(ValueAnimator valueAnimator) {
        LPhotoPaintView lPhotoPaintView = this.photoPaintView;
        if (lPhotoPaintView != null) {
            lPhotoPaintView.overlayLayout.invalidate();
        }
    }

    public /* synthetic */ void lambda$createPaintView$65() {
        this.paintingOverlay.hideBitmap();
    }

    public /* synthetic */ void lambda$createPaintView$66() {
        this.savedState = null;
        applyCurrentEditMode();
        switchToEditMode(0);
    }

    public /* synthetic */ void lambda$createPaintView$67(View view) {
        closePaintMode();
    }

    private void translateY(float f) {
        ValueAnimator valueAnimator = this.translateYAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.translateYAnimator = null;
        }
        if (this.currentEditMode != 3) {
            f = BitmapDescriptorFactory.HUE_RED;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.translateY, f);
        this.translateYAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                PhotoViewer.this.lambda$translateY$68(valueAnimator2);
            }
        });
        this.translateYAnimator.setDuration(320L);
        this.translateYAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.translateYAnimator.start();
    }

    public /* synthetic */ void lambda$translateY$68(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.translateY = floatValue;
        LPhotoPaintView lPhotoPaintView = this.photoPaintView;
        if (lPhotoPaintView != null) {
            lPhotoPaintView.translateY(floatValue);
        }
        this.containerView.invalidate();
    }

    private void closePaintMode() {
        this.photoPaintView.maybeShowDismissalAlert(this, this.parentActivity, new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda69
            @Override // java.lang.Runnable
            public final void run() {
                PhotoViewer.this.lambda$closePaintMode$69();
            }
        });
    }

    public /* synthetic */ void lambda$closePaintMode$69() {
        switchToEditMode(0);
    }

    public void switchToPaintMode() {
        LPhotoPaintView lPhotoPaintView;
        LPhotoPaintView lPhotoPaintView2;
        this.changeModeAnimation = null;
        this.pickerView.setVisibility(8);
        this.pickerViewSendButton.setVisibility(8);
        this.doneButtonFullWidth.setVisibility(8);
        this.muteItem.setVisibility(8);
        PhotoCropView photoCropView = this.photoCropView;
        if (photoCropView != null) {
            photoCropView.setVisibility(4);
        }
        this.selectedPhotosListView.setVisibility(8);
        this.selectedPhotosListView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.selectedPhotosListView.setTranslationY(-AndroidUtilities.m102dp(10));
        this.photosCounterView.setRotationX(BitmapDescriptorFactory.HUE_RED);
        this.selectedPhotosListView.setEnabled(false);
        this.isPhotosListViewVisible = false;
        if (this.needCaptionLayout) {
            this.captionTextViewSwitcher.setVisibility(4);
        }
        int i = this.sendPhotoType;
        if (i == 0 || i == 4 || ((i == 2 || i == 5) && this.imagesArrLocals.size() > 1)) {
            this.checkImageView.setVisibility(8);
            this.photosCounterView.setVisibility(8);
            updateActionBarTitlePadding();
        }
        showEditCaption(false, true);
        if (this.centerImage.getBitmap() != null) {
            int bitmapWidth = this.centerImage.getBitmapWidth();
            int bitmapHeight = this.centerImage.getBitmapHeight();
            if (this.sendPhotoType == 1) {
                float m102dp = AndroidUtilities.m102dp(12);
                this.animateToY = m102dp;
                if (this.photoPaintView != null) {
                    this.animateToY = m102dp + (lPhotoPaintView2.getAdditionalTop() / 2.0f);
                }
                if (this.cropTransform.getOrientation() == 90 || this.cropTransform.getOrientation() == 270) {
                    bitmapHeight = bitmapWidth;
                    bitmapWidth = bitmapHeight;
                }
            } else {
                float f = (-AndroidUtilities.m102dp(44)) + (isStatusBarVisible() ? AndroidUtilities.statusBarHeight / 2 : 0);
                this.animateToY = f;
                if (this.photoPaintView != null) {
                    float additionalTop = f + (lPhotoPaintView.getAdditionalTop() / 2.0f);
                    this.animateToY = additionalTop;
                    this.animateToY = additionalTop - (this.photoPaintView.getAdditionalBottom() / 2.0f);
                }
                MediaController.CropState cropState = this.editState.cropState;
                if (cropState != null) {
                    int i2 = cropState.transformRotation;
                    if (i2 == 90 || i2 == 270) {
                        bitmapHeight = bitmapWidth;
                        bitmapWidth = bitmapHeight;
                    }
                    bitmapWidth = (int) (bitmapWidth * cropState.cropPw);
                    bitmapHeight = (int) (bitmapHeight * cropState.cropPh);
                }
            }
            float f2 = bitmapWidth;
            float f3 = bitmapHeight;
            this.animateToScale = Math.min(getContainerViewWidth(3) / f2, getContainerViewHeight(3) / f3) / Math.min(getContainerViewWidth() / f2, getContainerViewHeight() / f3);
            this.animateToX = (getLeftInset() / 2) - (getRightInset() / 2);
            this.animationStartTime = System.currentTimeMillis();
            this.zoomAnimation = true;
        }
        this.windowView.setClipChildren(true);
        this.navigationBar.setVisibility(4);
        this.imageMoveAnimation = new AnimatorSet();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(AndroidUtilities.m102dp(126), BitmapDescriptorFactory.HUE_RED);
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(-AndroidUtilities.m102dp(12), BitmapDescriptorFactory.HUE_RED);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PhotoViewer.this.lambda$switchToPaintMode$70(valueAnimator);
            }
        });
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PhotoViewer.this.lambda$switchToPaintMode$71(valueAnimator);
            }
        });
        this.imageMoveAnimation.playTogether(ObjectAnimator.ofFloat(this, AnimationProperties.PHOTO_VIEWER_ANIMATION_VALUE, BitmapDescriptorFactory.HUE_RED, 1.0f), ofFloat, ofFloat2);
        this.photoPaintView.onAnimationStateChanged(true);
        this.imageMoveAnimation.setDuration(200L);
        this.imageMoveAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.58
            {
                PhotoViewer.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PhotoViewer.this.photoPaintView.onAnimationStateChanged(false);
                PhotoViewer.this.photoPaintView.init();
                PhotoViewer.this.paintingOverlay.hideEntities();
                PhotoViewer.this.imageMoveAnimation = null;
                PhotoViewer.this.currentEditMode = 3;
                PhotoViewer.this.captionEdit.keyboardNotifier.ignore(PhotoViewer.this.currentEditMode != 0);
                if (PhotoViewer.this.paintKeyboardNotifier != null) {
                    PhotoViewer.this.paintKeyboardNotifier.ignore(PhotoViewer.this.currentEditMode != 3);
                }
                PhotoViewer.this.translateY = BitmapDescriptorFactory.HUE_RED;
                PhotoViewer.this.switchingToMode = -1;
                PhotoViewer photoViewer = PhotoViewer.this;
                photoViewer.animateToScale = photoViewer.scale = 1.0f;
                PhotoViewer.this.animateToX = BitmapDescriptorFactory.HUE_RED;
                PhotoViewer.this.animateToY = BitmapDescriptorFactory.HUE_RED;
                PhotoViewer photoViewer2 = PhotoViewer.this;
                photoViewer2.updateMinMax(photoViewer2.scale);
                PhotoViewer.this.padImageForHorizontalInsets = true;
                PhotoViewer.this.containerView.invalidate();
            }
        });
        this.imageMoveAnimation.start();
    }

    public /* synthetic */ void lambda$switchToPaintMode$70(ValueAnimator valueAnimator) {
        this.photoPaintView.setOffsetTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue(), BitmapDescriptorFactory.HUE_RED, 0, false);
    }

    public /* synthetic */ void lambda$switchToPaintMode$71(ValueAnimator valueAnimator) {
        this.photoPaintView.setOffsetTranslationX(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void toggleCheckImageView(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        float dpf2 = AndroidUtilities.dpf2(24.0f);
        FrameLayout frameLayout = this.pickerView;
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        float f = BitmapDescriptorFactory.HUE_RED;
        fArr[0] = z ? 1.0f : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(frameLayout, property, fArr));
        FrameLayout frameLayout2 = this.pickerView;
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        fArr2[0] = z ? 0.0f : dpf2;
        arrayList.add(ObjectAnimator.ofFloat(frameLayout2, property2, fArr2));
        ImageView imageView = this.pickerViewSendButton;
        Property property3 = View.ALPHA;
        float[] fArr3 = new float[1];
        fArr3[0] = z ? 1.0f : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(imageView, property3, fArr3));
        ImageView imageView2 = this.pickerViewSendButton;
        Property property4 = View.TRANSLATION_Y;
        float[] fArr4 = new float[1];
        fArr4[0] = z ? 0.0f : dpf2;
        arrayList.add(ObjectAnimator.ofFloat(imageView2, property4, fArr4));
        int i = this.sendPhotoType;
        if (i == 0 || i == 4) {
            CheckBox checkBox = this.checkImageView;
            Property property5 = View.ALPHA;
            float[] fArr5 = new float[1];
            fArr5[0] = z ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(checkBox, property5, fArr5));
            CheckBox checkBox2 = this.checkImageView;
            Property property6 = View.TRANSLATION_Y;
            float[] fArr6 = new float[1];
            fArr6[0] = z ? 0.0f : -dpf2;
            arrayList.add(ObjectAnimator.ofFloat(checkBox2, property6, fArr6));
            CounterView counterView = this.photosCounterView;
            Property property7 = View.ALPHA;
            float[] fArr7 = new float[1];
            fArr7[0] = z ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(counterView, property7, fArr7));
            CounterView counterView2 = this.photosCounterView;
            Property property8 = View.TRANSLATION_Y;
            float[] fArr8 = new float[1];
            if (!z) {
                f = -dpf2;
            }
            fArr8[0] = f;
            arrayList.add(ObjectAnimator.ofFloat(counterView2, property8, fArr8));
        }
        animatorSet.playTogether(arrayList);
        animatorSet.setDuration(200L);
        animatorSet.start();
        if (z || !isCaptionOpen()) {
            return;
        }
        if (this.captionEdit.editText.isPopupShowing()) {
            this.captionEdit.editText.hidePopup(true);
        }
        this.captionEdit.editText.closeKeyboard();
    }

    private void toggleMiniProgressInternal(final boolean z) {
        if (z) {
            this.miniProgressView.setVisibility(0);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        this.miniProgressAnimator = animatorSet;
        Animator[] animatorArr = new Animator[1];
        RadialProgressView radialProgressView = this.miniProgressView;
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        animatorArr[0] = ObjectAnimator.ofFloat(radialProgressView, property, fArr);
        animatorSet.playTogether(animatorArr);
        this.miniProgressAnimator.setDuration(200L);
        this.miniProgressAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.59
            {
                PhotoViewer.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (animator.equals(PhotoViewer.this.miniProgressAnimator)) {
                    if (!z) {
                        PhotoViewer.this.miniProgressView.setVisibility(4);
                    }
                    PhotoViewer.this.miniProgressAnimator = null;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (animator.equals(PhotoViewer.this.miniProgressAnimator)) {
                    PhotoViewer.this.miniProgressAnimator = null;
                }
            }
        });
        this.miniProgressAnimator.start();
    }

    private void toggleMiniProgress(boolean z, boolean z2) {
        AndroidUtilities.cancelRunOnUIThread(this.miniProgressShowRunnable);
        if (z2) {
            toggleMiniProgressInternal(z);
            if (z) {
                AnimatorSet animatorSet = this.miniProgressAnimator;
                if (animatorSet != null) {
                    animatorSet.cancel();
                    this.miniProgressAnimator = null;
                }
                if (this.firstAnimationDelay) {
                    this.firstAnimationDelay = false;
                    toggleMiniProgressInternal(true);
                    return;
                }
                AndroidUtilities.runOnUIThread(this.miniProgressShowRunnable, 500L);
                return;
            }
            AnimatorSet animatorSet2 = this.miniProgressAnimator;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
                toggleMiniProgressInternal(false);
                return;
            }
            return;
        }
        AnimatorSet animatorSet3 = this.miniProgressAnimator;
        if (animatorSet3 != null) {
            animatorSet3.cancel();
            this.miniProgressAnimator = null;
        }
        this.miniProgressView.setAlpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.miniProgressView.setVisibility(z ? 0 : 4);
    }

    private void updateContainerFlags(boolean z) {
        FrameLayoutDrawer frameLayoutDrawer;
        if (Build.VERSION.SDK_INT < 21 || this.sendPhotoType == 1 || (frameLayoutDrawer = this.containerView) == null) {
            return;
        }
        int i = 1792;
        if (!z) {
            i = 1796;
            if (frameLayoutDrawer.getPaddingLeft() > 0 || this.containerView.getPaddingRight() > 0) {
                i = 5894;
            }
        }
        this.containerView.setSystemUiVisibility(i);
    }

    /* renamed from: org.telegram.ui.PhotoViewer$ActionBarToggleParams */
    /* loaded from: classes5.dex */
    public static class ActionBarToggleParams {
        public static final ActionBarToggleParams DEFAULT = new ActionBarToggleParams();
        public Interpolator animationInterpolator;
        public int animationDuration = 200;
        public boolean enableStatusBarAnimation = true;
        public boolean enableTranslationAnimation = true;

        public ActionBarToggleParams enableStatusBarAnimation(boolean z) {
            this.enableStatusBarAnimation = z;
            return this;
        }

        public ActionBarToggleParams enableTranslationAnimation(boolean z) {
            this.enableTranslationAnimation = z;
            return this;
        }

        public ActionBarToggleParams animationDuration(int i) {
            this.animationDuration = i;
            return this;
        }

        public ActionBarToggleParams animationInterpolator(Interpolator interpolator) {
            this.animationInterpolator = interpolator;
            return this;
        }
    }

    public void toggleActionBar(boolean z, boolean z2) {
        toggleActionBar(z, z2, ActionBarToggleParams.DEFAULT);
    }

    public void toggleActionBar(final boolean z, boolean z2, ActionBarToggleParams actionBarToggleParams) {
        CaptionScrollView captionScrollView;
        CaptionScrollView captionScrollView2;
        if (this.currentEditMode == 0) {
            int i = this.switchingToMode;
            if (i == 0 || i == -1) {
                AnimatorSet animatorSet = this.actionBarAnimator;
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
                if (z) {
                    this.actionBar.setVisibility(0);
                    if (this.bottomLayout.getTag() != null) {
                        this.bottomLayout.setVisibility(0);
                    }
                    if (this.captionTextViewSwitcher.getTag() != null) {
                        this.captionTextViewSwitcher.setVisibility(0);
                        VideoSeekPreviewImage videoSeekPreviewImage = this.videoPreviewFrame;
                        if (videoSeekPreviewImage != null) {
                            videoSeekPreviewImage.requestLayout();
                        }
                    }
                }
                this.isActionBarVisible = z;
                PhotoViewerWebView photoViewerWebView = this.photoViewerWebView;
                if (photoViewerWebView != null) {
                    photoViewerWebView.setTouchDisabled(z);
                }
                if (actionBarToggleParams.enableStatusBarAnimation) {
                    updateContainerFlags(z);
                }
                if (this.videoPlayerControlVisible && this.isPlaying && z) {
                    scheduleActionBarHide();
                } else {
                    AndroidUtilities.cancelRunOnUIThread(this.hideActionBarRunnable);
                }
                if (!z) {
                    Bulletin.hide(this.containerView);
                }
                float dpf2 = AndroidUtilities.dpf2(24.0f);
                this.videoPlayerControlFrameLayout.setSeekBarTransitionEnabled(actionBarToggleParams.enableTranslationAnimation && this.playerLooping);
                this.videoPlayerControlFrameLayout.setTranslationYAnimationEnabled(actionBarToggleParams.enableTranslationAnimation);
                if (z2) {
                    ArrayList arrayList = new ArrayList();
                    C3702ActionBar c3702ActionBar = this.actionBar;
                    Property property = View.ALPHA;
                    float[] fArr = new float[1];
                    fArr[0] = z ? 1.0f : 0.0f;
                    arrayList.add(ObjectAnimator.ofFloat(c3702ActionBar, property, fArr));
                    if (actionBarToggleParams.enableTranslationAnimation) {
                        C3702ActionBar c3702ActionBar2 = this.actionBar;
                        Property property2 = View.TRANSLATION_Y;
                        float[] fArr2 = new float[1];
                        fArr2[0] = z ? 0.0f : -dpf2;
                        arrayList.add(ObjectAnimator.ofFloat(c3702ActionBar2, property2, fArr2));
                    } else {
                        this.actionBar.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }
                    if (this.allowShowFullscreenButton) {
                        ImageView imageView = this.fullscreenButton[0];
                        Property property3 = View.ALPHA;
                        float[] fArr3 = new float[1];
                        fArr3[0] = z ? 1.0f : 0.0f;
                        arrayList.add(ObjectAnimator.ofFloat(imageView, property3, fArr3));
                    }
                    for (int i2 = 1; i2 < 3; i2++) {
                        this.fullscreenButton[i2].setTranslationY(z ? 0.0f : dpf2);
                    }
                    if (actionBarToggleParams.enableTranslationAnimation) {
                        ImageView imageView2 = this.fullscreenButton[0];
                        Property property4 = View.TRANSLATION_Y;
                        float[] fArr4 = new float[1];
                        fArr4[0] = z ? 0.0f : dpf2;
                        arrayList.add(ObjectAnimator.ofFloat(imageView2, property4, fArr4));
                    } else {
                        this.fullscreenButton[0].setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }
                    FrameLayout frameLayout = this.bottomLayout;
                    if (frameLayout != null) {
                        Property property5 = View.ALPHA;
                        float[] fArr5 = new float[1];
                        fArr5[0] = z ? 1.0f : 0.0f;
                        arrayList.add(ObjectAnimator.ofFloat(frameLayout, property5, fArr5));
                        if (actionBarToggleParams.enableTranslationAnimation) {
                            FrameLayout frameLayout2 = this.bottomLayout;
                            Property property6 = View.TRANSLATION_Y;
                            float[] fArr6 = new float[1];
                            fArr6[0] = z ? 0.0f : dpf2;
                            arrayList.add(ObjectAnimator.ofFloat(frameLayout2, property6, fArr6));
                        } else {
                            this.bottomLayout.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        }
                    }
                    PhotoCountView photoCountView = this.countView;
                    if (photoCountView != null) {
                        Property property7 = View.ALPHA;
                        float[] fArr7 = new float[1];
                        fArr7[0] = z ? 1.0f : 0.0f;
                        arrayList.add(ObjectAnimator.ofFloat(photoCountView, property7, fArr7));
                        if (actionBarToggleParams.enableTranslationAnimation) {
                            PhotoCountView photoCountView2 = this.countView;
                            Property property8 = View.TRANSLATION_Y;
                            float[] fArr8 = new float[1];
                            fArr8[0] = z ? 0.0f : -dpf2;
                            arrayList.add(ObjectAnimator.ofFloat(photoCountView2, property8, fArr8));
                        } else {
                            this.countView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        }
                    }
                    View view = this.navigationBar;
                    if (view != null) {
                        Property property9 = View.ALPHA;
                        float[] fArr9 = new float[1];
                        fArr9[0] = z ? 1.0f : 0.0f;
                        arrayList.add(ObjectAnimator.ofFloat(view, property9, fArr9));
                    }
                    if (this.videoPlayerControlVisible) {
                        VideoPlayerControlFrameLayout videoPlayerControlFrameLayout = this.videoPlayerControlFrameLayout;
                        Property<VideoPlayerControlFrameLayout, Float> property10 = VPC_PROGRESS;
                        float[] fArr10 = new float[1];
                        fArr10[0] = z ? 1.0f : 0.0f;
                        arrayList.add(ObjectAnimator.ofFloat(videoPlayerControlFrameLayout, property10, fArr10));
                    } else {
                        this.videoPlayerControlFrameLayout.setProgress(z ? 1.0f : 0.0f);
                    }
                    GroupedPhotosListView groupedPhotosListView = this.groupedPhotosListView;
                    Property property11 = View.ALPHA;
                    float[] fArr11 = new float[1];
                    fArr11[0] = z ? 1.0f : 0.0f;
                    arrayList.add(ObjectAnimator.ofFloat(groupedPhotosListView, property11, fArr11));
                    if (actionBarToggleParams.enableTranslationAnimation) {
                        GroupedPhotosListView groupedPhotosListView2 = this.groupedPhotosListView;
                        Property property12 = View.TRANSLATION_Y;
                        float[] fArr12 = new float[1];
                        fArr12[0] = z ? 0.0f : dpf2;
                        arrayList.add(ObjectAnimator.ofFloat(groupedPhotosListView2, property12, fArr12));
                    } else {
                        this.groupedPhotosListView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }
                    if (!this.needCaptionLayout && (captionScrollView2 = this.captionScrollView) != null) {
                        Property property13 = View.ALPHA;
                        float[] fArr13 = new float[1];
                        fArr13[0] = z ? 1.0f : 0.0f;
                        arrayList.add(ObjectAnimator.ofFloat(captionScrollView2, property13, fArr13));
                        if (actionBarToggleParams.enableTranslationAnimation) {
                            CaptionScrollView captionScrollView3 = this.captionScrollView;
                            Property property14 = View.TRANSLATION_Y;
                            float[] fArr14 = new float[1];
                            if (z) {
                                dpf2 = 0.0f;
                            }
                            fArr14[0] = dpf2;
                            arrayList.add(ObjectAnimator.ofFloat(captionScrollView3, property14, fArr14));
                        } else {
                            this.captionScrollView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        }
                    }
                    if (this.videoPlayerControlVisible && this.isPlaying) {
                        float[] fArr15 = new float[2];
                        fArr15[0] = this.photoProgressViews[0].animAlphas[1];
                        fArr15[1] = z ? 1.0f : 0.0f;
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr15);
                        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda2
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                PhotoViewer.this.lambda$toggleActionBar$72(valueAnimator);
                            }
                        });
                        arrayList.add(ofFloat);
                    }
                    if (this.muteItem.getTag() != null) {
                        ImageView imageView3 = this.muteItem;
                        Property property15 = View.ALPHA;
                        float[] fArr16 = new float[1];
                        fArr16[0] = z ? 1.0f : 0.0f;
                        arrayList.add(ObjectAnimator.ofFloat(imageView3, property15, fArr16));
                    }
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    this.actionBarAnimator = animatorSet2;
                    animatorSet2.playTogether(arrayList);
                    this.actionBarAnimator.setDuration(actionBarToggleParams.animationDuration);
                    this.actionBarAnimator.setInterpolator(actionBarToggleParams.animationInterpolator);
                    this.actionBarAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.60
                        {
                            PhotoViewer.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (animator.equals(PhotoViewer.this.actionBarAnimator)) {
                                if (!z) {
                                    PhotoViewer.this.actionBar.setVisibility(4);
                                    if (PhotoViewer.this.bottomLayout.getTag() != null) {
                                        PhotoViewer.this.bottomLayout.setVisibility(4);
                                    }
                                    if (PhotoViewer.this.captionTextViewSwitcher.getTag() != null) {
                                        PhotoViewer.this.captionTextViewSwitcher.setVisibility(4);
                                    }
                                }
                                PhotoViewer.this.actionBarAnimator = null;
                            }
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                            if (animator.equals(PhotoViewer.this.actionBarAnimator)) {
                                PhotoViewer.this.actionBarAnimator = null;
                            }
                        }
                    });
                    this.actionBarAnimator.start();
                    return;
                }
                this.actionBar.setAlpha(z ? 1.0f : 0.0f);
                if (this.fullscreenButton[0].getTranslationX() != BitmapDescriptorFactory.HUE_RED && this.allowShowFullscreenButton) {
                    this.fullscreenButton[0].setAlpha(z ? 1.0f : 0.0f);
                }
                for (int i3 = 0; i3 < 3; i3++) {
                    this.fullscreenButton[i3].setTranslationY(z ? 0.0f : dpf2);
                }
                this.actionBar.setTranslationY(z ? 0.0f : -dpf2);
                PhotoCountView photoCountView3 = this.countView;
                if (photoCountView3 != null) {
                    photoCountView3.setAlpha(z ? 1.0f : 0.0f);
                    this.countView.setTranslationY(z ? 0.0f : -dpf2);
                }
                this.bottomLayout.setAlpha(z ? 1.0f : 0.0f);
                this.bottomLayout.setTranslationY(z ? 0.0f : dpf2);
                this.navigationBar.setAlpha(z ? 1.0f : 0.0f);
                this.groupedPhotosListView.setAlpha((!z || this.aboutToSwitchTo == 3) ? 0.0f : 1.0f);
                this.groupedPhotosListView.setTranslationY((!z || this.aboutToSwitchTo == 3) ? dpf2 : 0.0f);
                if (!this.needCaptionLayout && (captionScrollView = this.captionScrollView) != null) {
                    captionScrollView.setAlpha(z ? 1.0f : 0.0f);
                    CaptionScrollView captionScrollView4 = this.captionScrollView;
                    if (z) {
                        dpf2 = 0.0f;
                    }
                    captionScrollView4.setTranslationY(dpf2);
                }
                this.videoPlayerControlFrameLayout.setProgress(z ? 1.0f : 0.0f);
                if (this.muteItem.getTag() != null) {
                    this.muteItem.setAlpha(z ? 1.0f : 0.0f);
                }
                if (this.videoPlayerControlVisible && this.isPlaying) {
                    this.photoProgressViews[0].setIndexedAlpha(1, z ? 1.0f : 0.0f, false);
                }
            }
        }
    }

    public /* synthetic */ void lambda$toggleActionBar$72(ValueAnimator valueAnimator) {
        this.photoProgressViews[0].setIndexedAlpha(1, ((Float) valueAnimator.getAnimatedValue()).floatValue(), false);
    }

    private void togglePhotosListView(boolean z, boolean z2) {
        if (z == this.isPhotosListViewVisible) {
            return;
        }
        if (z) {
            this.selectedPhotosListView.setVisibility(0);
        }
        this.isPhotosListViewVisible = z;
        this.selectedPhotosListView.setEnabled(z);
        if (z2) {
            ArrayList arrayList = new ArrayList();
            SelectedPhotosListView selectedPhotosListView = this.selectedPhotosListView;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(selectedPhotosListView, property, fArr));
            SelectedPhotosListView selectedPhotosListView2 = this.selectedPhotosListView;
            Property property2 = View.TRANSLATION_Y;
            float[] fArr2 = new float[1];
            fArr2[0] = z ? 0.0f : -AndroidUtilities.m102dp(10);
            arrayList.add(ObjectAnimator.ofFloat(selectedPhotosListView2, property2, fArr2));
            CounterView counterView = this.photosCounterView;
            Property property3 = View.ROTATION_X;
            float[] fArr3 = new float[1];
            fArr3[0] = z ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(counterView, property3, fArr3));
            AnimatorSet animatorSet = new AnimatorSet();
            this.currentListViewAnimation = animatorSet;
            animatorSet.playTogether(arrayList);
            if (!z) {
                this.currentListViewAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.61
                    {
                        PhotoViewer.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (PhotoViewer.this.currentListViewAnimation == null || !PhotoViewer.this.currentListViewAnimation.equals(animator)) {
                            return;
                        }
                        PhotoViewer.this.selectedPhotosListView.setVisibility(8);
                        PhotoViewer.this.currentListViewAnimation = null;
                    }
                });
            }
            this.currentListViewAnimation.setDuration(200L);
            this.currentListViewAnimation.start();
            return;
        }
        this.selectedPhotosListView.setAlpha(z ? 1.0f : 0.0f);
        this.selectedPhotosListView.setTranslationY(z ? 0.0f : -AndroidUtilities.m102dp(10));
        this.photosCounterView.setRotationX(z ? 1.0f : 0.0f);
        if (z) {
            return;
        }
        this.selectedPhotosListView.setVisibility(8);
    }

    public void toggleVideoPlayer() {
        VideoPlayer videoPlayer;
        VideoPlayer videoPlayer2;
        PhotoViewerWebView photoViewerWebView;
        if (this.videoPlayer != null || ((photoViewerWebView = this.photoViewerWebView) != null && photoViewerWebView.isControllable())) {
            boolean isPlaying = this.videoPlayer != null ? this.isPlaying : this.photoViewerWebView.isPlaying();
            cancelVideoPlayRunnable();
            AndroidUtilities.cancelRunOnUIThread(this.hideActionBarRunnable);
            if (isPlaying) {
                pauseVideoOrWeb();
            } else {
                if (this.isCurrentVideo) {
                    if (Math.abs(this.videoTimelineView.getProgress() - this.videoTimelineView.getRightProgress()) < 0.01f || ((videoPlayer2 = this.videoPlayer) != null && videoPlayer2.getCurrentPosition() == this.videoPlayer.getDuration())) {
                        seekVideoOrWebToProgress(this.videoTimelineView.getLeftProgress());
                    }
                } else {
                    if (Math.abs(this.videoPlayerSeekbar.getProgress() - this.videoTimelineView.getRightProgress()) < 0.01f || ((videoPlayer = this.videoPlayer) != null && videoPlayer.getCurrentPosition() == this.videoPlayer.getDuration())) {
                        seekVideoOrWebToProgress(BitmapDescriptorFactory.HUE_RED);
                    }
                    scheduleActionBarHide();
                }
                playVideoOrWeb();
            }
            this.containerView.invalidate();
        }
    }

    private String getFileName(int i) {
        if (i < 0) {
            return null;
        }
        if (!this.secureDocuments.isEmpty()) {
            if (i >= this.secureDocuments.size()) {
                return null;
            }
            SecureDocument secureDocument = this.secureDocuments.get(i);
            return secureDocument.secureFile.dc_id + "_" + secureDocument.secureFile.f1736id + ".jpg";
        } else if (!this.imagesArrLocations.isEmpty() || !this.imagesArr.isEmpty()) {
            if (!this.imagesArrLocations.isEmpty()) {
                if (i >= this.imagesArrLocations.size()) {
                    return null;
                }
                ImageLocation imageLocation = this.imagesArrLocations.get(i);
                ImageLocation imageLocation2 = this.imagesArrLocationsVideo.get(i);
                if (imageLocation == null) {
                    return null;
                }
                if (imageLocation2 != imageLocation) {
                    return imageLocation2.location.volume_id + "_" + imageLocation2.location.local_id + ".mp4";
                }
                return imageLocation.location.volume_id + "_" + imageLocation.location.local_id + ".jpg";
            } else if (i >= this.imagesArr.size()) {
                return null;
            } else {
                return FileLoader.getMessageFileName(this.imagesArr.get(i).messageOwner);
            }
        } else {
            if (!this.imagesArrLocals.isEmpty()) {
                if (i >= this.imagesArrLocals.size()) {
                    return null;
                }
                Object obj = this.imagesArrLocals.get(i);
                if (obj instanceof MediaController.SearchImage) {
                    return ((MediaController.SearchImage) obj).getAttachName();
                }
                if (obj instanceof TLRPC$BotInlineResult) {
                    TLRPC$BotInlineResult tLRPC$BotInlineResult = (TLRPC$BotInlineResult) obj;
                    TLRPC$Document tLRPC$Document = tLRPC$BotInlineResult.document;
                    if (tLRPC$Document != null) {
                        return FileLoader.getAttachFileName(tLRPC$Document);
                    }
                    TLRPC$Photo tLRPC$Photo = tLRPC$BotInlineResult.photo;
                    if (tLRPC$Photo != null) {
                        return FileLoader.getAttachFileName(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, AndroidUtilities.getPhotoSize()));
                    }
                    if (tLRPC$BotInlineResult.content instanceof TLRPC$TL_webDocument) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(Utilities.MD5(tLRPC$BotInlineResult.content.url));
                        sb.append(".");
                        TLRPC$WebDocument tLRPC$WebDocument = tLRPC$BotInlineResult.content;
                        sb.append(ImageLoader.getHttpUrlExtension(tLRPC$WebDocument.url, FileLoader.getMimeTypePart(tLRPC$WebDocument.mime_type)));
                        return sb.toString();
                    }
                }
            } else {
                PageBlocksAdapter pageBlocksAdapter = this.pageBlocksAdapter;
                if (pageBlocksAdapter != null) {
                    return pageBlocksAdapter.getFileName(i);
                }
            }
            return null;
        }
    }

    private ImageLocation getImageLocation(int i, long[] jArr) {
        if (i < 0) {
            return null;
        }
        if (!this.secureDocuments.isEmpty()) {
            if (i >= this.secureDocuments.size()) {
                return null;
            }
            if (jArr != null) {
                jArr[0] = this.secureDocuments.get(i).secureFile.size;
            }
            return ImageLocation.getForSecureDocument(this.secureDocuments.get(i));
        } else if (!this.imagesArrLocations.isEmpty()) {
            if (i >= this.imagesArrLocations.size()) {
                return null;
            }
            if (jArr != null) {
                jArr[0] = this.imagesArrLocationsSizes.get(i).longValue();
            }
            return this.imagesArrLocationsVideo.get(i);
        } else if (this.imagesArr.isEmpty() || i >= this.imagesArr.size()) {
            return null;
        } else {
            MessageObject messageObject = this.imagesArr.get(i);
            TLRPC$Message tLRPC$Message = messageObject.messageOwner;
            if (tLRPC$Message instanceof TLRPC$TL_messageService) {
                if (tLRPC$Message.action instanceof TLRPC$TL_messageActionUserUpdatedPhoto) {
                    return null;
                }
                TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, AndroidUtilities.getPhotoSize());
                if (closestPhotoSizeWithSize != null) {
                    if (jArr != null) {
                        jArr[0] = closestPhotoSizeWithSize.size;
                        if (jArr[0] == 0) {
                            jArr[0] = -1;
                        }
                    }
                    return ImageLocation.getForObject(closestPhotoSizeWithSize, messageObject.photoThumbsObject);
                } else if (jArr != null) {
                    jArr[0] = -1;
                }
            } else if (((MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaPhoto) && MessageObject.getMedia(messageObject.messageOwner).photo != null) || ((MessageObject.getMedia(messageObject.messageOwner) instanceof TLRPC$TL_messageMediaWebPage) && MessageObject.getMedia(messageObject.messageOwner).webpage != null)) {
                if (messageObject.isGif()) {
                    return ImageLocation.getForDocument(messageObject.getDocument());
                }
                TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, AndroidUtilities.getPhotoSize(), false, null, true);
                if (closestPhotoSizeWithSize2 != null) {
                    if (jArr != null) {
                        jArr[0] = closestPhotoSizeWithSize2.size;
                        if (jArr[0] == 0) {
                            jArr[0] = -1;
                        }
                    }
                    return ImageLocation.getForObject(closestPhotoSizeWithSize2, messageObject.photoThumbsObject);
                } else if (jArr != null) {
                    jArr[0] = -1;
                }
            } else if (MessageObject.getMedia(messageObject.messageOwner) instanceof TLRPC$TL_messageMediaInvoice) {
                return ImageLocation.getForWebFile(WebFile.createWithWebDocument(((TLRPC$TL_messageMediaInvoice) MessageObject.getMedia(messageObject.messageOwner)).webPhoto));
            } else {
                if (messageObject.getDocument() != null) {
                    TLRPC$Document document = messageObject.getDocument();
                    if (this.sharedMediaType == 5) {
                        return ImageLocation.getForDocument(document);
                    }
                    if (MessageObject.isDocumentHasThumb(messageObject.getDocument())) {
                        TLRPC$PhotoSize closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 90);
                        if (jArr != null) {
                            jArr[0] = closestPhotoSizeWithSize3.size;
                            if (jArr[0] == 0) {
                                jArr[0] = -1;
                            }
                        }
                        return ImageLocation.getForDocument(closestPhotoSizeWithSize3, document);
                    }
                }
            }
            return null;
        }
    }

    public TLObject getFileLocation(int i, long[] jArr) {
        if (i < 0) {
            return null;
        }
        if (!this.secureDocuments.isEmpty()) {
            if (i >= this.secureDocuments.size()) {
                return null;
            }
            if (jArr != null) {
                jArr[0] = this.secureDocuments.get(i).secureFile.size;
            }
            return this.secureDocuments.get(i);
        } else if (!this.imagesArrLocations.isEmpty()) {
            if (i >= this.imagesArrLocations.size()) {
                return null;
            }
            if (jArr != null) {
                jArr[0] = this.imagesArrLocationsSizes.get(i).longValue();
            }
            return this.imagesArrLocationsVideo.get(i).location;
        } else if (this.imagesArr.isEmpty() || i >= this.imagesArr.size()) {
            return null;
        } else {
            MessageObject messageObject = this.imagesArr.get(i);
            TLRPC$Message tLRPC$Message = messageObject.messageOwner;
            if (tLRPC$Message instanceof TLRPC$TL_messageService) {
                TLRPC$MessageAction tLRPC$MessageAction = tLRPC$Message.action;
                if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionUserUpdatedPhoto) {
                    return tLRPC$MessageAction.newUserPhoto.photo_big;
                }
                TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, AndroidUtilities.getPhotoSize());
                if (closestPhotoSizeWithSize != null) {
                    if (jArr != null) {
                        jArr[0] = closestPhotoSizeWithSize.size;
                        if (jArr[0] == 0) {
                            jArr[0] = -1;
                        }
                    }
                    return closestPhotoSizeWithSize;
                } else if (jArr != null) {
                    jArr[0] = -1;
                }
            } else if (((MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaPhoto) && MessageObject.getMedia(messageObject.messageOwner).photo != null) || ((MessageObject.getMedia(messageObject.messageOwner) instanceof TLRPC$TL_messageMediaWebPage) && MessageObject.getMedia(messageObject.messageOwner).webpage != null)) {
                TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, AndroidUtilities.getPhotoSize(), false, null, true);
                if (closestPhotoSizeWithSize2 != null) {
                    if (jArr != null) {
                        jArr[0] = closestPhotoSizeWithSize2.size;
                        if (jArr[0] == 0) {
                            jArr[0] = -1;
                        }
                    }
                    return closestPhotoSizeWithSize2;
                } else if (jArr != null) {
                    jArr[0] = -1;
                }
            } else if (MessageObject.getMedia(messageObject.messageOwner) instanceof TLRPC$TL_messageMediaInvoice) {
                return ((TLRPC$TL_messageMediaInvoice) MessageObject.getMedia(messageObject.messageOwner)).photo;
            } else {
                if (messageObject.getDocument() != null && MessageObject.isDocumentHasThumb(messageObject.getDocument())) {
                    TLRPC$PhotoSize closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(messageObject.getDocument().thumbs, 90);
                    if (jArr != null) {
                        jArr[0] = closestPhotoSizeWithSize3.size;
                        if (jArr[0] == 0) {
                            jArr[0] = -1;
                        }
                    }
                    return closestPhotoSizeWithSize3;
                }
            }
            return null;
        }
    }

    public void updateSelectedCount() {
        PhotoViewerProvider photoViewerProvider = this.placeProvider;
        if (photoViewerProvider == null) {
            return;
        }
        int selectedCount = photoViewerProvider.getSelectedCount();
        this.photosCounterView.setCount(selectedCount);
        if (selectedCount == 0) {
            togglePhotosListView(false, true);
        }
    }

    public boolean isCurrentAvatarSet() {
        int i;
        if (this.currentAvatarLocation != null && (i = this.currentIndex) >= 0 && i < this.avatarsArr.size()) {
            TLRPC$Photo tLRPC$Photo = this.avatarsArr.get(this.currentIndex);
            ImageLocation imageLocation = this.imagesArrLocations.get(this.currentIndex);
            if (tLRPC$Photo instanceof TLRPC$TL_photoEmpty) {
                tLRPC$Photo = null;
            }
            if (tLRPC$Photo != null) {
                int size = tLRPC$Photo.sizes.size();
                for (int i2 = 0; i2 < size; i2++) {
                    TLRPC$FileLocation tLRPC$FileLocation = tLRPC$Photo.sizes.get(i2).location;
                    if (tLRPC$FileLocation != null) {
                        int i3 = tLRPC$FileLocation.local_id;
                        TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated = this.currentAvatarLocation.location;
                        if (i3 == tLRPC$TL_fileLocationToBeDeprecated.local_id && tLRPC$FileLocation.volume_id == tLRPC$TL_fileLocationToBeDeprecated.volume_id) {
                            return true;
                        }
                    }
                }
            } else {
                TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated2 = imageLocation.location;
                int i4 = tLRPC$TL_fileLocationToBeDeprecated2.local_id;
                TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated3 = this.currentAvatarLocation.location;
                if (i4 == tLRPC$TL_fileLocationToBeDeprecated3.local_id && tLRPC$TL_fileLocationToBeDeprecated2.volume_id == tLRPC$TL_fileLocationToBeDeprecated3.volume_id) {
                    return true;
                }
            }
        }
        return false;
    }

    private void setItemVisible(View view, boolean z, boolean z2) {
        setItemVisible(view, z, z2, 1.0f);
    }

    private void setItemVisible(final View view, final boolean z, boolean z2, float f) {
        if (view == this.sendItem) {
            setItemVisible(this.forwardCloudItem, z, z2);
        }
        Boolean bool = this.actionBarItemsVisibility.get(view);
        if (bool == null || bool.booleanValue() != z) {
            this.actionBarItemsVisibility.put(view, Boolean.valueOf(z));
            view.animate().cancel();
            float f2 = (z ? 1.0f : BitmapDescriptorFactory.HUE_RED) * f;
            if (z2 && bool != null) {
                if (z) {
                    view.setVisibility(0);
                }
                view.animate().alpha(f2).setDuration(100L).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda13
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        PhotoViewer.this.lambda$setItemVisible$73(valueAnimator);
                    }
                }).setInterpolator(new LinearInterpolator()).withEndAction(new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda82
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhotoViewer.this.lambda$setItemVisible$74(z, view);
                    }
                }).start();
                return;
            }
            view.setVisibility(z ? 0 : 8);
            view.setAlpha(f2);
            updateActionBarTitlePadding();
        }
    }

    public /* synthetic */ void lambda$setItemVisible$73(ValueAnimator valueAnimator) {
        updateActionBarTitlePadding();
    }

    public /* synthetic */ void lambda$setItemVisible$74(boolean z, View view) {
        if (!z) {
            view.setVisibility(8);
        }
        updateActionBarTitlePadding();
    }

    public void onPhotoShow(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, ImageLocation imageLocation, ImageLocation imageLocation2, ArrayList<MessageObject> arrayList, ArrayList<SecureDocument> arrayList2, List<Object> list, int i, PlaceProviderObject placeProviderObject) {
        AnimatorSet animatorSet;
        boolean z;
        int i2;
        MentionsContainerView mentionsContainerView;
        PhotoViewerProvider photoViewerProvider;
        ChatActivity chatActivity;
        ImageLocation imageLocation3;
        TLRPC$BotInlineResult tLRPC$BotInlineResult;
        PageBlocksAdapter pageBlocksAdapter;
        int i3;
        boolean z2;
        ChatActivity chatActivity2;
        MessageObject messageObject2;
        int i4;
        int i5;
        TLRPC$MessageAction tLRPC$MessageAction;
        PhotoViewerWebView photoViewerWebView;
        TLRPC$WebPage tLRPC$WebPage;
        String str;
        TLRPC$Message tLRPC$Message;
        this.classGuid = ConnectionsManager.generateClassGuid();
        this.customTitle = null;
        this.currentMessageObject = null;
        this.currentFileLocation = null;
        this.currentFileLocationVideo = null;
        this.currentSecureDocument = null;
        this.currentPathObject = null;
        this.currentPageBlock = null;
        this.fromCamera = false;
        this.currentBotInlineResult = null;
        this.avatarStartProgress = BitmapDescriptorFactory.HUE_RED;
        this.avatarStartTime = 0L;
        this.currentIndex = -1;
        String[] strArr = this.currentFileNames;
        strArr[0] = null;
        strArr[1] = null;
        strArr[2] = null;
        this.avatarsDialogId = 0L;
        this.canEditAvatar = false;
        this.totalImagesCount = 0;
        this.totalImagesCountMerge = 0;
        this.currentEditMode = 0;
        this.captionEdit.keyboardNotifier.ignore(false);
        KeyboardNotifier keyboardNotifier = this.paintKeyboardNotifier;
        if (keyboardNotifier != null) {
            keyboardNotifier.ignore(this.currentEditMode != 3);
        }
        this.isFirstLoading = true;
        this.needSearchImageInArr = false;
        this.loadingMoreImages = false;
        boolean[] zArr = this.endReached;
        zArr[0] = false;
        zArr[1] = this.mergeDialogId == 0;
        this.opennedFromMedia = false;
        this.openedFromProfile = false;
        this.needCaptionLayout = false;
        this.containerView.setTag(1);
        this.playerAutoStarted = false;
        this.isCurrentVideo = false;
        this.shownControlsByEnd = false;
        this.imagesArr.clear();
        this.imagesArrLocations.clear();
        this.imagesArrLocationsSizes.clear();
        this.imagesArrLocationsVideo.clear();
        this.imagesArrMessages.clear();
        this.avatarsArr.clear();
        this.secureDocuments.clear();
        this.imagesArrLocals.clear();
        BlurringShader.BlurManager blurManager = this.blurManager;
        if (blurManager != null) {
            blurManager.resetBitmap();
        }
        if (Build.VERSION.SDK_INT > 21) {
            this.actionBar.setElevation(BitmapDescriptorFactory.HUE_RED);
        }
        for (int i6 = 0; i6 < 2; i6++) {
            this.imagesByIds[i6].clear();
            this.imagesByIdsTemp[i6].clear();
        }
        this.imagesArrTemp.clear();
        this.currentAvatarLocation = null;
        this.containerView.setPadding(0, 0, 0, 0);
        ImageReceiver.BitmapHolder bitmapHolder = this.currentThumb;
        if (bitmapHolder != null) {
            bitmapHolder.release();
        }
        this.currentThumb = placeProviderObject != null ? placeProviderObject.thumb : null;
        this.isEvent = placeProviderObject != null && placeProviderObject.isEvent;
        this.sharedMediaType = 0;
        this.allMediaItem.setText(LocaleController.getString("ShowAllMedia", C3630R.string.ShowAllMedia));
        setItemVisible(this.sendItem, false, false);
        setItemVisible(this.pipItem, false, true);
        PhotoCropView photoCropView = this.photoCropView;
        if (photoCropView != null) {
            photoCropView.setSubtitle(null);
        }
        this.actionBar.setBackgroundColor(2130706432);
        this.bottomLayout.setVisibility(8);
        this.bottomLayout.setTag(0);
        PhotoCountView photoCountView = this.countView;
        if (photoCountView != null) {
            photoCountView.updateShow(false, false);
        }
        this.bottomLayout.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.captionTextViewSwitcher.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        setItemVisible(this.editItem, false, false);
        QualityChooseView qualityChooseView = this.qualityChooseView;
        if (qualityChooseView != null) {
            qualityChooseView.setVisibility(4);
            this.qualityPicker.setVisibility(4);
            animatorSet = null;
            this.qualityChooseView.setTag(null);
        } else {
            animatorSet = null;
        }
        AnimatorSet animatorSet2 = this.qualityChooseViewAnimation;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
            this.qualityChooseViewAnimation = animatorSet;
        }
        setDoubleTapEnabled(true);
        this.allowShare = false;
        this.slideshowMessageId = 0;
        this.menuItem.hideSubItem(2);
        this.menuItem.hideSubItem(4);
        this.menuItem.hideSubItem(10);
        this.menuItem.hideSubItem(11);
        this.menuItem.hideSubItem(14);
        this.menuItem.hideSubItem(15);
        this.menuItem.hideSubItem(17);
        this.menuItem.hideSubItem(16);
        this.menuItem.hideSubItem(6);
        this.speedItem.setVisibility(8);
        this.speedGap.setVisibility(8);
        this.actionBar.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.checkImageView.setAlpha(1.0f);
        this.checkImageView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.checkImageView.setVisibility(8);
        this.actionBar.setTitleRightMargin(0);
        this.photosCounterView.setAlpha(1.0f);
        this.photosCounterView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.photosCounterView.setVisibility(8);
        updateActionBarTitlePadding();
        this.pickerView.setVisibility(8);
        this.pickerViewSendButton.setVisibility(8);
        this.doneButtonFullWidth.setVisibility(8);
        this.pickerViewSendButton.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.pickerView.setAlpha(1.0f);
        this.pickerViewSendButton.setAlpha(1.0f);
        this.pickerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.paintItem.setVisibility(8);
        this.paintItem.setTag(null);
        this.cropItem.setVisibility(8);
        this.tuneItem.setVisibility(8);
        this.tuneItem.setTag(null);
        this.captionEdit.setTimerVisible(false, false);
        this.rotateItem.setVisibility(8);
        this.mirrorItem.setVisibility(8);
        this.pickerView.getLayoutParams().height = -2;
        this.docInfoTextView.setVisibility(8);
        this.docNameTextView.setVisibility(8);
        showVideoTimeline(false, false);
        showEditCaption(false, false);
        this.videoAvatarTooltip.setVisibility(8);
        this.compressItem.setVisibility(8);
        AndroidUtilities.updateViewVisibilityAnimated(this.muteItem, false, 1.0f, false);
        this.actionBarContainer.setSubtitle(null);
        setItemVisible(this.masksItem, false, true);
        this.muteVideo = false;
        this.muteItem.setImageResource(C3630R.C3632drawable.video_send_unmute);
        this.editorDoneLayout.setVisibility(8);
        this.captionTextViewSwitcher.setTag(null);
        this.captionTextViewSwitcher.setVisibility(4);
        PhotoCropView photoCropView2 = this.photoCropView;
        if (photoCropView2 != null) {
            photoCropView2.setVisibility(8);
        }
        PhotoFilterView photoFilterView = this.photoFilterView;
        if (photoFilterView != null) {
            photoFilterView.setVisibility(8);
        }
        for (int i7 = 0; i7 < 3; i7++) {
            PhotoProgressView[] photoProgressViewArr = this.photoProgressViews;
            if (photoProgressViewArr[i7] != null) {
                photoProgressViewArr[i7].setBackgroundState(-1, false, true);
            }
        }
        GroupedPhotosListView groupedPhotosListView = this.groupedPhotosListView;
        if (groupedPhotosListView != null) {
            groupedPhotosListView.reset();
            this.groupedPhotosListView.setAnimateBackground(!ApplicationLoader.isNetworkOnline());
        }
        PhotoViewerProvider photoViewerProvider2 = this.placeProvider;
        if (photoViewerProvider2 != null && photoViewerProvider2.getTotalImageCount() > 0) {
            this.totalImagesCount = this.placeProvider.getTotalImageCount();
        }
        if (messageObject != null) {
            this.currentVideoSpeed = ApplicationLoader.applicationContext.getSharedPreferences("playback_speed", 0).getFloat("speed" + messageObject.getDialogId() + "_" + messageObject.getId(), 1.0f);
        } else {
            this.currentVideoSpeed = 1.0f;
        }
        setMenuItemIcon(false, true);
        boolean z3 = messageObject != null && (MessagesController.getInstance(this.currentAccount).isChatNoForwards(messageObject.getChatId()) || (((tLRPC$Message = messageObject.messageOwner) != null && tLRPC$Message.noforwards) || messageObject.hasRevealedExtendedMedia()));
        if (messageObject != null && arrayList == null) {
            TLRPC$Message tLRPC$Message2 = messageObject.messageOwner;
            if (tLRPC$Message2 != null && (MessageObject.getMedia(tLRPC$Message2) instanceof TLRPC$TL_messageMediaWebPage) && MessageObject.getMedia(messageObject.messageOwner).webpage != null && (str = (tLRPC$WebPage = MessageObject.getMedia(messageObject.messageOwner).webpage).site_name) != null) {
                String lowerCase = str.toLowerCase();
                if (lowerCase.equals("instagram") || lowerCase.equals("twitter") || "telegram_album".equals(tLRPC$WebPage.type)) {
                    TextUtils.isEmpty(tLRPC$WebPage.author);
                    if (tLRPC$WebPage.cached_page instanceof TLRPC$TL_page) {
                        int i8 = 0;
                        while (true) {
                            if (i8 >= tLRPC$WebPage.cached_page.blocks.size()) {
                                break;
                            }
                            TLRPC$PageBlock tLRPC$PageBlock = tLRPC$WebPage.cached_page.blocks.get(i8);
                            if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockAuthorDate) {
                                int i9 = ((TLRPC$TL_pageBlockAuthorDate) tLRPC$PageBlock).published_date;
                                break;
                            }
                            i8++;
                        }
                    }
                    ArrayList<MessageObject> webPagePhotos = messageObject.getWebPagePhotos(null, null);
                    if (!webPagePhotos.isEmpty()) {
                        this.slideshowMessageId = messageObject.getId();
                        this.needSearchImageInArr = false;
                        this.imagesArr.addAll(webPagePhotos);
                        this.totalImagesCount = this.imagesArr.size();
                        int indexOf = this.imagesArr.indexOf(messageObject);
                        if (indexOf < 0) {
                            indexOf = 0;
                        }
                        setImageIndex(indexOf);
                    }
                }
            }
            if (messageObject.canPreviewDocument()) {
                this.sharedMediaType = 1;
                this.allMediaItem.setText(LocaleController.getString("ShowAllFiles", C3630R.string.ShowAllFiles));
            } else if (messageObject.isGif()) {
                this.sharedMediaType = 5;
                this.allMediaItem.setText(LocaleController.getString("ShowAllGIFs", C3630R.string.ShowAllGIFs));
            }
            if (this.isEmbedVideo && ((photoViewerWebView = this.photoViewerWebView) == null || !photoViewerWebView.isControllable())) {
                this.bottomLayout.setTag(null);
                this.bottomLayout.setVisibility(8);
            }
            if (this.slideshowMessageId == 0) {
                this.imagesArr.add(messageObject);
                if (messageObject.eventId != 0) {
                    i4 = 0;
                    this.needSearchImageInArr = false;
                } else {
                    i4 = 0;
                    if (this.currentAnimation != null) {
                        this.needSearchImageInArr = false;
                        if (messageObject.canForwardMessage() && !z3) {
                            setItemVisible(this.sendItem, true, false);
                        }
                    } else {
                        if (!messageObject.scheduled && !(MessageObject.getMedia(messageObject.messageOwner) instanceof TLRPC$TL_messageMediaInvoice) && !(MessageObject.getMedia(messageObject.messageOwner) instanceof TLRPC$TL_messageMediaWebPage) && ((tLRPC$MessageAction = messageObject.messageOwner.action) == null || (tLRPC$MessageAction instanceof TLRPC$TL_messageActionEmpty))) {
                            this.needSearchImageInArr = true;
                            this.imagesByIds[0].put(messageObject.getId(), messageObject);
                            ChatActivity chatActivity3 = this.parentChatActivity;
                            if (chatActivity3 == null || !chatActivity3.isThreadChat()) {
                                this.menuItem.showSubItem(4);
                                this.menuItem.showSubItem(2);
                            }
                            i5 = 0;
                            setItemVisible(this.sendItem, !z3, false);
                        } else {
                            i5 = 0;
                            if (this.isEmbedVideo && messageObject.eventId == 0) {
                                setItemVisible(this.sendItem, true, false);
                            }
                        }
                        setImageIndex(i5);
                    }
                }
                i5 = i4;
                setImageIndex(i5);
            }
        } else if (arrayList2 != null) {
            this.secureDocuments.addAll(arrayList2);
            setImageIndex(i);
        } else if (tLRPC$FileLocation != null) {
            long j = placeProviderObject != null ? placeProviderObject.dialogId : 0L;
            this.avatarsDialogId = j;
            this.canEditAvatar = placeProviderObject != null && placeProviderObject.canEdit;
            if (imageLocation != null || j == 0) {
                imageLocation3 = imageLocation;
            } else if (j > 0) {
                imageLocation3 = ImageLocation.getForUserOrChat(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.avatarsDialogId)), 0);
            } else {
                imageLocation3 = ImageLocation.getForUserOrChat(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.avatarsDialogId)), 0);
            }
            if (imageLocation3 == null) {
                return;
            }
            this.imagesArrLocations.add(imageLocation3);
            this.imagesArrLocationsVideo.add(imageLocation2 != null ? imageLocation2 : imageLocation3);
            this.currentAvatarLocation = imageLocation3;
            this.imagesArrLocationsSizes.add(Long.valueOf(placeProviderObject != null ? placeProviderObject.size : 0L));
            this.imagesArrMessages.add(null);
            this.avatarsArr.add(new TLRPC$TL_photoEmpty());
            this.allowShare = true;
            this.menuItem.hideSubItem(2);
            this.menuItem.showSubItem(10);
            setImageIndex(0);
            if (this.sendPhotoType == 1) {
                if (useFullWidthSendButton()) {
                    this.doneButtonFullWidth.setVisibility(0);
                } else {
                    this.pickerViewSendButton.setVisibility(0);
                }
                this.pickerViewSendButton.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                this.pickerViewSendButton.setAlpha(1.0f);
                View view = this.navigationBar;
                if (view != null) {
                    view.setVisibility(0);
                    this.navigationBar.setAlpha(1.0f);
                }
                this.bottomLayout.setVisibility(8);
                this.bottomLayout.setTag(null);
                this.containerView.setTag(null);
            }
        } else if (arrayList != null) {
            this.imagesArr.addAll(arrayList);
            int i10 = 0;
            while (i10 < this.imagesArr.size()) {
                MessageObject messageObject3 = this.imagesArr.get(i10);
                boolean z4 = z3;
                this.imagesByIds[messageObject3.getDialogId() == this.currentDialogId ? (char) 0 : (char) 1].put(messageObject3.getId(), messageObject3);
                i10++;
                z3 = z4;
            }
            boolean z5 = z3;
            MessageObject messageObject4 = this.imagesArr.get(i);
            if (!messageObject4.scheduled && ((chatActivity = this.parentChatActivity) == null || !chatActivity.isThreadChat())) {
                this.opennedFromMedia = this.parentChatActivity == null;
                if (this.parentFragment instanceof ProfileActivity) {
                    this.openedFromProfile = true;
                }
                if (placeProviderObject != null) {
                    this.startOffset = placeProviderObject.starOffset;
                }
                this.menuItem.showSubItem(4);
                if (messageObject4.canForwardMessage() && !z5) {
                    setItemVisible(this.sendItem, true, false);
                }
                if (messageObject4.canPreviewDocument()) {
                    this.sharedMediaType = 1;
                    this.allMediaItem.setText(LocaleController.getString("ShowAllFiles", C3630R.string.ShowAllFiles));
                } else if (messageObject4.isGif()) {
                    this.sharedMediaType = 5;
                    this.allMediaItem.setText(LocaleController.getString("ShowAllGIFs", C3630R.string.ShowAllGIFs));
                }
            } else {
                this.totalImagesCount = this.imagesArr.size();
            }
            setImageIndex(i);
        } else if (list != null) {
            int i11 = this.sendPhotoType;
            if (i11 != -1 && (i11 == 0 || i11 == 4 || ((i11 == 2 || i11 == 5) && list.size() > 1))) {
                this.checkImageView.setVisibility(0);
                this.photosCounterView.setVisibility(0);
                updateActionBarTitlePadding();
            }
            CaptionPhotoViewer captionPhotoViewer = this.captionEdit;
            int i12 = this.sendPhotoType;
            captionPhotoViewer.setAddPhotoVisible(i12 != -1 && (i12 == 2 || i12 == 5) && this.placeProvider.canCaptureMorePhotos(), false);
            this.menuItem.setVisibility(8);
            this.imagesArrLocals.addAll(list);
            Object obj = this.imagesArrLocals.get(i);
            int i13 = this.sendPhotoType;
            if (i13 != -1 && (obj instanceof MediaController.PhotoEntry)) {
                if (i13 == 10) {
                    this.cropItem.setVisibility(8);
                    this.rotateItem.setVisibility(8);
                    this.mirrorItem.setVisibility(8);
                } else if (this.isDocumentsPicker) {
                    this.cropItem.setVisibility(8);
                    this.rotateItem.setVisibility(8);
                    this.mirrorItem.setVisibility(8);
                    this.docInfoTextView.setVisibility(0);
                    this.docNameTextView.setVisibility(0);
                    this.pickerView.getLayoutParams().height = AndroidUtilities.m102dp(84);
                } else if (((MediaController.PhotoEntry) obj).isVideo) {
                    this.cropItem.setVisibility(8);
                    this.rotateItem.setVisibility(8);
                    this.mirrorItem.setVisibility(8);
                    this.bottomLayout.setVisibility(0);
                    this.bottomLayout.setTag(1);
                    this.bottomLayout.setTranslationY(-AndroidUtilities.m102dp(48));
                } else {
                    this.cropItem.setVisibility(i13 != 1 ? 0 : 8);
                    this.rotateItem.setVisibility(this.sendPhotoType != 1 ? 8 : 0);
                    this.mirrorItem.setVisibility(this.sendPhotoType != 1 ? 8 : 0);
                }
                z = !this.isDocumentsPicker;
            } else {
                if (obj instanceof TLRPC$BotInlineResult) {
                    this.cropItem.setVisibility(8);
                    this.rotateItem.setVisibility(8);
                    this.mirrorItem.setVisibility(8);
                } else {
                    this.cropItem.setVisibility(((obj instanceof MediaController.SearchImage) && ((MediaController.SearchImage) obj).type == 0) ? 0 : 8);
                    this.rotateItem.setVisibility(8);
                    this.mirrorItem.setVisibility(8);
                    if (this.cropItem.getVisibility() == 0) {
                        z = true;
                    }
                }
                z = false;
            }
            this.needCaptionLayout = z && ((photoViewerProvider = this.placeProvider) == null || photoViewerProvider.allowCaption());
            if (this.parentChatActivity == null || (mentionsContainerView = this.captionEdit.mentionContainer) == null) {
                i2 = 0;
            } else {
                mentionsContainerView.getAdapter().setChatInfo(this.parentChatActivity.chatInfo);
                this.captionEdit.mentionContainer.getAdapter().setNeedUsernames(this.parentChatActivity.currentChat != null);
                i2 = 0;
                this.captionEdit.mentionContainer.getAdapter().setNeedBotContext(false);
            }
            if (this.sendPhotoType != -1) {
                this.pickerView.setVisibility(i2);
                if (useFullWidthSendButton()) {
                    this.doneButtonFullWidth.setVisibility(i2);
                } else {
                    this.pickerViewSendButton.setVisibility(i2);
                    this.pickerViewSendButton.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    this.pickerViewSendButton.setAlpha(1.0f);
                }
                View view2 = this.navigationBar;
                if (view2 != null && !this.fancyShadows) {
                    view2.setVisibility(i2);
                    this.navigationBar.setAlpha(1.0f);
                }
                this.bottomLayout.setVisibility(8);
                this.bottomLayout.setTag(null);
                this.containerView.setTag(null);
            }
            setImageIndex(i);
            int i14 = this.sendPhotoType;
            if (i14 == 1) {
                this.paintItem.setVisibility(0);
                this.tuneItem.setVisibility(0);
            } else if (i14 != 4 && i14 != 5) {
                ImageView imageView = this.paintItem;
                imageView.setVisibility(imageView.getTag() != null ? 0 : 8);
                ImageView imageView2 = this.tuneItem;
                imageView2.setVisibility(imageView2.getTag() != null ? 0 : 8);
            } else {
                this.paintItem.setVisibility(8);
                this.tuneItem.setVisibility(8);
            }
            updateSelectedCount();
        } else {
            setImageIndex(i);
        }
        if (this.currentAnimation == null && !this.isEvent) {
            if (this.currentDialogId != 0 && this.totalImagesCount == 0 && (messageObject2 = this.currentMessageObject) != null && !messageObject2.scheduled) {
                if (MediaDataController.getMediaType(messageObject2.messageOwner) == this.sharedMediaType) {
                    MediaDataController.getInstance(this.currentAccount).getMediaCount(this.currentDialogId, this.topicId, this.sharedMediaType, this.classGuid, true);
                    if (this.mergeDialogId != 0) {
                        MediaDataController.getInstance(this.currentAccount).getMediaCount(this.mergeDialogId, this.topicId, this.sharedMediaType, this.classGuid, true);
                    }
                }
            } else if (this.avatarsDialogId != 0 && this.placeProvider.canLoadMoreAvatars()) {
                MessagesController.getInstance(this.currentAccount).loadDialogPhotos(this.avatarsDialogId, 80, 0, true, this.classGuid);
            }
        }
        MessageObject messageObject5 = this.currentMessageObject;
        if ((messageObject5 != null && messageObject5.isVideo()) || (((tLRPC$BotInlineResult = this.currentBotInlineResult) != null && (tLRPC$BotInlineResult.type.equals("video") || MessageObject.isVideoDocument(this.currentBotInlineResult.document))) || (((pageBlocksAdapter = this.pageBlocksAdapter) != null && (pageBlocksAdapter.isVideo(i) || this.pageBlocksAdapter.isHardwarePlayer(i))) || (this.sendPhotoType == -1 && ((MediaController.PhotoEntry) this.imagesArrLocals.get(i)).isVideo)))) {
            this.playerAutoStarted = true;
            i3 = 0;
            onActionClick(false);
        } else {
            i3 = 0;
            if (!this.imagesArrLocals.isEmpty()) {
                Object obj2 = this.imagesArrLocals.get(i);
                ChatActivity chatActivity4 = this.parentChatActivity;
                TLRPC$User currentUser = chatActivity4 != null ? chatActivity4.getCurrentUser() : null;
                boolean z6 = (this.isDocumentsPicker || (chatActivity2 = this.parentChatActivity) == null || chatActivity2.isSecretChat() || this.parentChatActivity.isInScheduleMode() || currentUser == null || currentUser.bot || UserObject.isUserSelf(currentUser) || this.parentChatActivity.isEditingMessageMedia()) ? false : true;
                PhotoViewerProvider photoViewerProvider3 = this.placeProvider;
                if (photoViewerProvider3 != null && photoViewerProvider3.getEditingMessageObject() != null) {
                    z6 = false;
                }
                if (!(obj2 instanceof TLRPC$BotInlineResult)) {
                    if ((obj2 instanceof MediaController.PhotoEntry) || !z6 || !(obj2 instanceof MediaController.SearchImage)) {
                        z2 = z6;
                    } else if (((MediaController.SearchImage) obj2).type == 0) {
                        z2 = true;
                    }
                    this.captionEdit.setTimerVisible(z2, true);
                }
                z2 = false;
                this.captionEdit.setTimerVisible(z2, true);
            }
        }
        checkFullscreenButton();
        updateForwardCloudItem(messageObject);
        updatePhotoOptionsSubItems(messageObject);
        updateVideoOptionsSubItems(messageObject);
        updateForwardToMessengersSubItems(messageObject);
        this.actionBar.createMenu().setVisibility((messageObject == null || !messageObject.isForwardingEditor) ? i3 : 8);
        if (messageObject == null || !messageObject.isForwardingEditor) {
            return;
        }
        this.bottomLayout.setTag(null);
        this.bottomLayout.setVisibility(8);
    }

    private boolean canSendMediaToParentChatActivity() {
        TLRPC$Chat tLRPC$Chat;
        ChatActivity chatActivity = this.parentChatActivity;
        return (chatActivity == null || (chatActivity.currentUser == null && ((tLRPC$Chat = chatActivity.currentChat) == null || ChatObject.isNotInChat(tLRPC$Chat) || (!ChatObject.canSendPhoto(this.parentChatActivity.currentChat) && !ChatObject.canSendVideo(this.parentChatActivity.currentChat))))) ? false : true;
    }

    private void setDoubleTapEnabled(boolean z) {
        this.doubleTapEnabled = z;
        this.gestureDetector.setOnDoubleTapListener(z ? this : null);
    }

    public void setImages() {
        if (this.animationInProgress == 0) {
            setIndexToImage(this.centerImage, this.currentIndex, null);
            setIndexToPaintingOverlay(this.currentIndex, this.paintingOverlay);
            setIndexToImage(this.rightImage, this.currentIndex + 1, this.rightCropTransform);
            setIndexToPaintingOverlay(this.currentIndex + 1, this.rightPaintingOverlay);
            setIndexToImage(this.leftImage, this.currentIndex - 1, this.leftCropTransform);
            setIndexToPaintingOverlay(this.currentIndex - 1, this.leftPaintingOverlay);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1019:0x0613  */
    /* JADX WARN: Removed duplicated region for block: B:1064:0x0728  */
    /* JADX WARN: Removed duplicated region for block: B:1065:0x072f  */
    /* JADX WARN: Removed duplicated region for block: B:1365:0x0d38  */
    /* JADX WARN: Removed duplicated region for block: B:1366:0x0d3a  */
    /* JADX WARN: Removed duplicated region for block: B:1369:0x0d40  */
    /* JADX WARN: Removed duplicated region for block: B:867:0x0340  */
    /* JADX WARN: Type inference failed for: r1v123 */
    /* JADX WARN: Type inference failed for: r1v124, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v139 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setIsAboutToSwitchToIndex(final int r37, boolean r38, boolean r39) {
        /*
            Method dump skipped, instructions count: 3430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.setIsAboutToSwitchToIndex(int, boolean, boolean):void");
    }

    public /* synthetic */ void lambda$setIsAboutToSwitchToIndex$75(int i, TranslateController translateController, MessageObject messageObject, String str) {
        if (i != this.switchingToIndex) {
            return;
        }
        this.captionDetectedLanguage = str;
        if (translateController.isContextTranslateEnabled() && translateController.canTranslatePhoto(messageObject, this.captionDetectedLanguage)) {
            if (this.captionTranslated) {
                this.menuItem.showSubItem(22);
                this.menuItem.hideSubItem(21);
                return;
            }
            this.menuItem.showSubItem(21);
            this.menuItem.hideSubItem(22);
            return;
        }
        this.menuItem.hideSubItem(21);
        this.menuItem.hideSubItem(22);
    }

    public void updateCaptionTranslated() {
        int i;
        MessageObject messageObject;
        TLRPC$Message tLRPC$Message;
        if (this.imagesArr.isEmpty() || (i = this.switchingToIndex) < 0 || i >= this.imagesArr.size() || (messageObject = this.imagesArr.get(this.switchingToIndex)) == null) {
            return;
        }
        if (this.captionTranslated && (tLRPC$Message = messageObject.messageOwner) != null && tLRPC$Message.translatedText != null && TextUtils.equals(tLRPC$Message.translatedToLanguage, TranslateAlert2.getToLanguage())) {
            setCurrentCaption(messageObject, postProcessTranslated(messageObject), false, true);
        } else {
            setCurrentCaption(messageObject, messageObject.caption, this.captionTranslated, true);
        }
    }

    private CharSequence postProcessTranslated(MessageObject messageObject) {
        if (messageObject == null || messageObject.messageOwner == null) {
            return "";
        }
        Spannable replaceAnimatedEmoji = MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji(new SpannableStringBuilder(messageObject.messageOwner.translatedText.text), Theme.chat_msgTextPaint.getFontMetricsInt(), AndroidUtilities.m102dp(20), false), messageObject.messageOwner.translatedText.entities, Theme.chat_msgTextPaint.getFontMetricsInt(), false);
        if (MessageObject.containsUrls(replaceAnimatedEmoji)) {
            try {
                AndroidUtilities.addLinks(replaceAnimatedEmoji, 5);
            } catch (Exception e) {
                FileLog.m97e(e);
            }
        }
        MessageObject.addUrlsByPattern(messageObject.isOutOwner(), replaceAnimatedEmoji, true, 0, 0, true);
        MessageObject.addEntitiesToText(replaceAnimatedEmoji, messageObject.messageOwner.translatedText.entities, messageObject.isOutOwner(), true, true, true);
        if (messageObject.isVideo()) {
            MessageObject.addUrlsByPattern(messageObject.isOutOwner(), replaceAnimatedEmoji, true, 3, (int) messageObject.getDuration(), false);
        } else if (messageObject.isMusic() || messageObject.isVoice()) {
            MessageObject.addUrlsByPattern(messageObject.isOutOwner(), replaceAnimatedEmoji, true, 4, (int) messageObject.getDuration(), false);
        }
        return replaceAnimatedEmoji;
    }

    private void showEditCaption(boolean z, boolean z2) {
        if (!z2) {
            this.captionEdit.animate().setListener(null).cancel();
            this.captionEdit.setVisibility(z ? 0 : 8);
            this.captionEdit.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.captionEdit.setAlpha(this.pickerView.getAlpha());
        } else if (z && this.captionEdit.getTag() == null) {
            if (this.captionEdit.getVisibility() != 0) {
                this.captionEdit.setVisibility(0);
                this.captionEdit.setAlpha(this.pickerView.getAlpha());
                this.captionEdit.setTranslationY(AndroidUtilities.m102dp(58));
            }
            ObjectAnimator objectAnimator = this.captionAnimator;
            if (objectAnimator != null) {
                objectAnimator.removeAllListeners();
                this.captionAnimator.cancel();
            }
            CaptionPhotoViewer captionPhotoViewer = this.captionEdit;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(captionPhotoViewer, View.TRANSLATION_Y, captionPhotoViewer.getTranslationY(), BitmapDescriptorFactory.HUE_RED);
            this.captionAnimator = ofFloat;
            ofFloat.setDuration(220L);
            this.captionAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.captionAnimator.start();
        } else if (!z && this.captionEdit.getTag() != null) {
            ObjectAnimator objectAnimator2 = this.captionAnimator;
            if (objectAnimator2 != null) {
                objectAnimator2.removeAllListeners();
                this.captionAnimator.cancel();
            }
            CaptionPhotoViewer captionPhotoViewer2 = this.captionEdit;
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(captionPhotoViewer2, View.TRANSLATION_Y, captionPhotoViewer2.getTranslationY(), AndroidUtilities.m102dp(58));
            this.captionAnimator = ofFloat2;
            ofFloat2.addListener(new HideViewAfterAnimation(this.captionEdit));
            this.captionAnimator.setDuration(220L);
            this.captionAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.captionAnimator.start();
        }
        this.captionEdit.setTag(z ? 1 : null);
    }

    private void showVideoTimeline(boolean z, boolean z2) {
        if (!z2) {
            this.videoTimelineViewContainer.animate().setListener(null).cancel();
            this.videoTimelineViewContainer.setVisibility(z ? 0 : 8);
            this.videoTimelineView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.videoTimelineViewContainer.setAlpha(this.pickerView.getAlpha());
        } else if (z && this.videoTimelineViewContainer.getTag() == null) {
            if (this.videoTimelineViewContainer.getVisibility() != 0) {
                this.videoTimelineViewContainer.setVisibility(0);
                this.videoTimelineViewContainer.setAlpha(this.pickerView.getAlpha());
                this.videoTimelineView.setTranslationY(AndroidUtilities.m102dp(58));
            }
            ObjectAnimator objectAnimator = this.videoTimelineAnimator;
            if (objectAnimator != null) {
                objectAnimator.removeAllListeners();
                this.videoTimelineAnimator.cancel();
            }
            VideoTimelinePlayView videoTimelinePlayView = this.videoTimelineView;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(videoTimelinePlayView, View.TRANSLATION_Y, videoTimelinePlayView.getTranslationY(), BitmapDescriptorFactory.HUE_RED);
            this.videoTimelineAnimator = ofFloat;
            ofFloat.setDuration(220L);
            this.videoTimelineAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.videoTimelineAnimator.start();
        } else if (!z && this.videoTimelineViewContainer.getTag() != null) {
            ObjectAnimator objectAnimator2 = this.videoTimelineAnimator;
            if (objectAnimator2 != null) {
                objectAnimator2.removeAllListeners();
                this.videoTimelineAnimator.cancel();
            }
            VideoTimelinePlayView videoTimelinePlayView2 = this.videoTimelineView;
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(videoTimelinePlayView2, View.TRANSLATION_Y, videoTimelinePlayView2.getTranslationY(), AndroidUtilities.m102dp(58));
            this.videoTimelineAnimator = ofFloat2;
            ofFloat2.addListener(new HideViewAfterAnimation(this.videoTimelineViewContainer));
            this.videoTimelineAnimator.setDuration(220L);
            this.videoTimelineAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.videoTimelineAnimator.start();
        }
        this.videoTimelineViewContainer.setTag(z ? 1 : null);
    }

    public static TLRPC$FileLocation getFileLocation(ImageLocation imageLocation) {
        if (imageLocation == null) {
            return null;
        }
        return imageLocation.location;
    }

    public static String getFileLocationExt(ImageLocation imageLocation) {
        if (imageLocation == null || imageLocation.imageType != 2) {
            return null;
        }
        return "mp4";
    }

    public void setImageIndex(int i) {
        setImageIndex(i, true, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v7 */
    private void setImageIndex(int i, boolean z, boolean z2) {
        int i2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        Uri uri;
        Uri uri2;
        boolean equals;
        boolean z8;
        boolean z9;
        boolean z10;
        char c;
        ?? r5;
        char c2;
        MessageObject messageObject;
        MediaController.CropState cropState;
        ImageReceiver.BitmapHolder bitmapHolder;
        if (this.currentIndex == i || this.placeProvider == null) {
            return;
        }
        Uri uri3 = null;
        if (!z && (bitmapHolder = this.currentThumb) != null) {
            bitmapHolder.release();
            this.currentThumb = null;
        }
        this.currentFileNames[0] = getFileName(i);
        this.currentFileNames[1] = getFileName(i + 1);
        this.currentFileNames[2] = getFileName(i - 1);
        this.placeProvider.willSwitchFromPhoto(this.currentMessageObject, getFileLocation(this.currentFileLocation), this.currentIndex);
        this.lastPhotoSetTime = SystemClock.elapsedRealtime();
        int i3 = this.currentIndex;
        this.currentIndex = i;
        setIsAboutToSwitchToIndex(i, z, z2);
        CropTransform clone = this.cropTransform.clone();
        EditState editState = this.editState;
        MediaController.CropState clone2 = (editState == null || (cropState = editState.cropState) == null) ? null : cropState.clone();
        boolean z11 = this.centerImageIsVideo;
        this.editState.reset();
        if (!this.imagesArr.isEmpty()) {
            int i4 = this.currentIndex;
            if (i4 < 0 || i4 >= this.imagesArr.size()) {
                closePhoto(false, false);
                return;
            }
            MessageObject messageObject2 = this.imagesArr.get(this.currentIndex);
            z4 = z && (messageObject = this.currentMessageObject) != null && messageObject.getId() == messageObject2.getId();
            if (z4) {
                messageObject2.putInDownloadsStore = this.currentMessageObject.putInDownloadsStore;
            }
            this.currentMessageObject = messageObject2;
            z5 = messageObject2.isVideo();
            if (this.sharedMediaType == 1) {
                boolean canPreviewDocument = messageObject2.canPreviewDocument();
                this.canZoom = canPreviewDocument;
                if (canPreviewDocument) {
                    if (this.allowShare) {
                        this.menuItem.showSubItem(1);
                    } else {
                        this.menuItem.hideSubItem(1);
                    }
                    setDoubleTapEnabled(true);
                } else {
                    this.menuItem.hideSubItem(1);
                    setDoubleTapEnabled(false);
                }
            }
            updateVideoOptionsSubItems(this.currentMessageObject);
            if (z5 || this.isEmbedVideo) {
                this.speedItem.setVisibility(0);
                this.menuItem.showSubItem(19);
                this.speedGap.setVisibility(this.menuItem.getVisibleSubItemsCount() > 1 ? 0 : 8);
            } else {
                this.speedItem.setVisibility(8);
                this.speedGap.setVisibility(8);
                this.menuItem.checkHideMenuItem();
            }
            i2 = i3;
            z3 = false;
            z9 = true;
        } else {
            if (!this.secureDocuments.isEmpty()) {
                if (i < 0 || i >= this.secureDocuments.size()) {
                    closePhoto(false, false);
                    return;
                }
                this.currentSecureDocument = this.secureDocuments.get(i);
                i2 = i3;
                z3 = false;
            } else if (!this.imagesArrLocations.isEmpty()) {
                if (i < 0 || i >= this.imagesArrLocations.size()) {
                    closePhoto(false, false);
                    return;
                }
                ImageLocation imageLocation = this.currentFileLocation;
                ImageLocation imageLocation2 = this.imagesArrLocations.get(i);
                if (z && imageLocation != null && imageLocation2 != null) {
                    TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated = imageLocation.location;
                    int i5 = tLRPC$TL_fileLocationToBeDeprecated.local_id;
                    TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated2 = imageLocation2.location;
                    if (i5 == tLRPC$TL_fileLocationToBeDeprecated2.local_id) {
                        i2 = i3;
                        if (tLRPC$TL_fileLocationToBeDeprecated.volume_id == tLRPC$TL_fileLocationToBeDeprecated2.volume_id) {
                            z8 = true;
                            this.currentFileLocation = this.imagesArrLocations.get(i);
                            this.currentFileLocationVideo = this.imagesArrLocationsVideo.get(i);
                            z4 = z8;
                            z3 = false;
                            z5 = false;
                            z9 = true;
                            uri3 = null;
                        }
                        z8 = false;
                        this.currentFileLocation = this.imagesArrLocations.get(i);
                        this.currentFileLocationVideo = this.imagesArrLocationsVideo.get(i);
                        z4 = z8;
                        z3 = false;
                        z5 = false;
                        z9 = true;
                        uri3 = null;
                    }
                }
                i2 = i3;
                z8 = false;
                this.currentFileLocation = this.imagesArrLocations.get(i);
                this.currentFileLocationVideo = this.imagesArrLocationsVideo.get(i);
                z4 = z8;
                z3 = false;
                z5 = false;
                z9 = true;
                uri3 = null;
            } else {
                i2 = i3;
                if (!this.imagesArrLocals.isEmpty()) {
                    if (i < 0 || i >= this.imagesArrLocals.size()) {
                        closePhoto(false, false);
                        return;
                    }
                    Object obj = this.imagesArrLocals.get(i);
                    if (obj instanceof TLRPC$BotInlineResult) {
                        TLRPC$BotInlineResult tLRPC$BotInlineResult = (TLRPC$BotInlineResult) obj;
                        this.currentBotInlineResult = tLRPC$BotInlineResult;
                        if (tLRPC$BotInlineResult.document != null) {
                            this.currentPathObject = FileLoader.getInstance(this.currentAccount).getPathToAttach(tLRPC$BotInlineResult.document).getAbsolutePath();
                            equals = MessageObject.isVideoDocument(tLRPC$BotInlineResult.document);
                        } else {
                            if (tLRPC$BotInlineResult.photo != null) {
                                this.currentPathObject = FileLoader.getInstance(this.currentAccount).getPathToAttach(FileLoader.getClosestPhotoSizeWithSize(tLRPC$BotInlineResult.photo.sizes, AndroidUtilities.getPhotoSize())).getAbsolutePath();
                            } else {
                                TLRPC$WebDocument tLRPC$WebDocument = tLRPC$BotInlineResult.content;
                                if (tLRPC$WebDocument instanceof TLRPC$TL_webDocument) {
                                    this.currentPathObject = tLRPC$WebDocument.url;
                                    equals = tLRPC$BotInlineResult.type.equals("video");
                                }
                            }
                            equals = false;
                        }
                        z5 = equals;
                        z4 = false;
                        uri2 = null;
                    } else {
                        if (obj instanceof MediaController.PhotoEntry) {
                            MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                            String str = photoEntry.path;
                            this.currentPathObject = str;
                            if (str == null) {
                                closePhoto(false, false);
                                return;
                            }
                            z7 = photoEntry.isVideo;
                            EditState editState2 = this.editState;
                            editState2.savedFilterState = photoEntry.savedFilterState;
                            editState2.paintPath = photoEntry.paintPath;
                            editState2.croppedPaintPath = photoEntry.croppedPaintPath;
                            editState2.croppedMediaEntities = photoEntry.croppedMediaEntities;
                            editState2.averageDuration = photoEntry.averageDuration;
                            editState2.mediaEntities = photoEntry.mediaEntities;
                            editState2.cropState = photoEntry.cropState;
                            File file = new File(photoEntry.path);
                            Uri fromFile = Uri.fromFile(file);
                            if (this.isDocumentsPicker) {
                                StringBuilder sb = new StringBuilder();
                                if (photoEntry.width != 0 && photoEntry.height != 0) {
                                    if (sb.length() > 0) {
                                        sb.append(", ");
                                    }
                                    sb.append(String.format(Locale.US, "%dx%d", Integer.valueOf(photoEntry.width), Integer.valueOf(photoEntry.height)));
                                }
                                if (photoEntry.isVideo) {
                                    if (sb.length() > 0) {
                                        sb.append(", ");
                                    }
                                    sb.append(AndroidUtilities.formatShortDuration(photoEntry.duration));
                                }
                                if (photoEntry.size != 0) {
                                    if (sb.length() > 0) {
                                        sb.append(", ");
                                    }
                                    sb.append(AndroidUtilities.formatFileSize(photoEntry.size));
                                }
                                this.docNameTextView.setText(file.getName());
                                this.docInfoTextView.setText(sb);
                            }
                            z6 = this.savedState != null;
                            uri = fromFile;
                        } else {
                            if (obj instanceof MediaController.SearchImage) {
                                MediaController.SearchImage searchImage = (MediaController.SearchImage) obj;
                                this.currentPathObject = searchImage.getPathToAttach();
                                EditState editState3 = this.editState;
                                editState3.savedFilterState = searchImage.savedFilterState;
                                editState3.paintPath = searchImage.paintPath;
                                editState3.croppedPaintPath = searchImage.croppedPaintPath;
                                editState3.croppedMediaEntities = searchImage.croppedMediaEntities;
                                editState3.averageDuration = searchImage.averageDuration;
                                editState3.mediaEntities = searchImage.mediaEntities;
                                editState3.cropState = searchImage.cropState;
                            }
                            z6 = false;
                            z7 = false;
                            uri = null;
                        }
                        if (obj instanceof MediaController.MediaEditState) {
                            MediaController.MediaEditState mediaEditState = (MediaController.MediaEditState) obj;
                            if (hasAnimatedMediaEntities()) {
                                this.currentImagePath = mediaEditState.imagePath;
                            } else {
                                String str2 = mediaEditState.filterPath;
                                if (str2 != null) {
                                    this.currentImagePath = str2;
                                } else {
                                    this.currentImagePath = this.currentPathObject;
                                }
                            }
                        }
                        z5 = z7;
                        uri2 = uri;
                        z4 = z6;
                    }
                    MediaController.CropState cropState2 = this.editState.cropState;
                    if (cropState2 != null) {
                        this.previousHasTransform = true;
                        float f = cropState2.cropPx;
                        this.previousCropPx = f;
                        float f2 = cropState2.cropPy;
                        this.previousCropPy = f2;
                        float f3 = cropState2.cropScale;
                        this.previousCropScale = f3;
                        float f4 = cropState2.cropRotate;
                        this.previousCropRotation = f4;
                        int i6 = cropState2.transformRotation;
                        this.previousCropOrientation = i6;
                        float f5 = cropState2.cropPw;
                        this.previousCropPw = f5;
                        float f6 = cropState2.cropPh;
                        this.previousCropPh = f6;
                        boolean z12 = cropState2.mirrored;
                        this.previousCropMirrored = z12;
                        this.cropTransform.setViewTransform(true, f, f2, f4, i6, f3, 1.0f, 1.0f, f5, f6, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, z12);
                    } else {
                        this.previousHasTransform = false;
                        this.cropTransform.setViewTransform(false, this.previousCropPx, this.previousCropPy, this.previousCropRotation, this.previousCropOrientation, this.previousCropScale, 1.0f, 1.0f, this.previousCropPw, this.previousCropPh, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.previousCropMirrored);
                    }
                    uri3 = uri2;
                    z3 = false;
                    z9 = true;
                } else {
                    PageBlocksAdapter pageBlocksAdapter = this.pageBlocksAdapter;
                    if (pageBlocksAdapter != null) {
                        int i7 = this.currentIndex;
                        if (i7 < 0 || i7 >= pageBlocksAdapter.getItemsCount()) {
                            closePhoto(false, false);
                            return;
                        }
                        TLRPC$PageBlock tLRPC$PageBlock = this.pageBlocksAdapter.get(this.currentIndex);
                        TLRPC$PageBlock tLRPC$PageBlock2 = this.currentPageBlock;
                        z4 = tLRPC$PageBlock2 != null && tLRPC$PageBlock2 == tLRPC$PageBlock;
                        this.currentPageBlock = tLRPC$PageBlock;
                        z5 = this.pageBlocksAdapter.isVideo(this.currentIndex) || this.pageBlocksAdapter.isHardwarePlayer(this.currentIndex);
                        z3 = false;
                        uri3 = null;
                        z9 = true;
                    } else {
                        z3 = false;
                    }
                }
            }
            z4 = z3;
            z5 = z4;
            uri3 = null;
            z9 = true;
        }
        setMenuItemIcon(z3, z9);
        PlaceProviderObject placeProviderObject = this.currentPlaceObject;
        if (placeProviderObject != null) {
            if (this.animationInProgress == 0) {
                placeProviderObject.imageReceiver.setVisible(z9, z9);
            } else {
                this.showAfterAnimation = placeProviderObject;
            }
        }
        PlaceProviderObject placeForPhoto = this.placeProvider.getPlaceForPhoto(this.currentMessageObject, getFileLocation(this.currentFileLocation), this.currentIndex, false);
        this.currentPlaceObject = placeForPhoto;
        if (placeForPhoto != null) {
            if (this.animationInProgress == 0) {
                placeForPhoto.imageReceiver.setVisible(false, true);
            } else {
                this.hideAfterAnimation = placeForPhoto;
            }
        }
        if (z4) {
            z10 = false;
        } else {
            this.draggingDown = false;
            this.translationX = BitmapDescriptorFactory.HUE_RED;
            this.translationY = BitmapDescriptorFactory.HUE_RED;
            this.scale = 1.0f;
            this.animateToX = BitmapDescriptorFactory.HUE_RED;
            this.animateToY = BitmapDescriptorFactory.HUE_RED;
            this.animateToScale = 1.0f;
            this.animateToRotate = BitmapDescriptorFactory.HUE_RED;
            this.animationStartTime = 0L;
            this.zoomAnimation = false;
            this.imageMoveAnimation = null;
            this.changeModeAnimation = null;
            AspectRatioFrameLayout aspectRatioFrameLayout = this.aspectRatioFrameLayout;
            if (aspectRatioFrameLayout != null) {
                aspectRatioFrameLayout.setVisibility(4);
            }
            this.pinchStartDistance = BitmapDescriptorFactory.HUE_RED;
            this.pinchStartScale = 1.0f;
            this.pinchCenterX = BitmapDescriptorFactory.HUE_RED;
            this.pinchCenterY = BitmapDescriptorFactory.HUE_RED;
            this.pinchStartX = BitmapDescriptorFactory.HUE_RED;
            this.pinchStartY = BitmapDescriptorFactory.HUE_RED;
            this.moveStartX = BitmapDescriptorFactory.HUE_RED;
            this.moveStartY = BitmapDescriptorFactory.HUE_RED;
            this.zooming = false;
            this.moving = false;
            this.paintViewTouched = 0;
            this.doubleTap = false;
            this.invalidCoords = false;
            this.canDragDown = true;
            this.changingPage = false;
            this.switchImageAfterAnimation = 0;
            if (this.sharedMediaType != 1) {
                this.canZoom = (this.isEmbedVideo || (this.imagesArrLocals.isEmpty() && (this.currentFileNames[0] == null || this.photoProgressViews[0].backgroundState == 0))) ? false : true;
            }
            updateMinMax(this.scale);
            z10 = false;
            releasePlayer(false);
        }
        if (z5 && uri3 != null) {
            this.isStreaming = z10;
            preparePlayer(uri3, this.sendPhotoType == 1 ? true : z10, z10, this.editState.savedFilterState);
        }
        if (this.imagesArrLocals.isEmpty()) {
            this.editState.reset();
        }
        this.centerImageIsVideo = z5;
        int i8 = i2;
        if (i8 == -1) {
            setImages();
            for (int i9 = 0; i9 < 3; i9++) {
                checkProgress(i9, false, false);
            }
        } else {
            checkProgress(0, true, false);
            int i10 = this.currentIndex;
            if (i8 > i10) {
                ImageReceiver imageReceiver = this.rightImage;
                this.rightImage = this.centerImage;
                this.centerImage = this.leftImage;
                this.leftImage = imageReceiver;
                BlurringShader.ThumbBlurer thumbBlurer = this.rightBlur;
                this.rightBlur = this.centerBlur;
                this.centerBlur = this.leftBlur;
                this.leftBlur = thumbBlurer;
                AnimatedFloat[] animatedFloatArr = this.centerImageInsideBlur;
                if (animatedFloatArr != null) {
                    AnimatedFloat animatedFloat = animatedFloatArr[0];
                    animatedFloatArr[0] = animatedFloatArr[1];
                    c2 = 2;
                    animatedFloatArr[1] = animatedFloatArr[2];
                    animatedFloatArr[2] = animatedFloat;
                } else {
                    c2 = 2;
                }
                this.rightImageIsVideo = z11;
                this.rightCropTransform = clone;
                this.rightCropState = clone2;
                PhotoProgressView[] photoProgressViewArr = this.photoProgressViews;
                PhotoProgressView photoProgressView = photoProgressViewArr[0];
                photoProgressViewArr[0] = photoProgressViewArr[c2];
                photoProgressViewArr[c2] = photoProgressView;
                ImageView[] imageViewArr = this.fullscreenButton;
                ImageView imageView = imageViewArr[0];
                imageViewArr[0] = imageViewArr[c2];
                imageViewArr[c2] = imageView;
                imageViewArr[0].setTranslationY(imageView.getTranslationY());
                this.leftCropState = null;
                setIndexToPaintingOverlay(this.currentIndex - 1, this.leftPaintingOverlay);
                setIndexToPaintingOverlay(this.currentIndex, this.paintingOverlay);
                setIndexToPaintingOverlay(this.currentIndex + 1, this.rightPaintingOverlay);
                setIndexToImage(this.leftImage, this.currentIndex - 1, this.leftCropTransform);
                resetIndexForDeferredImageLoading();
                updateAccessibilityOverlayVisibility();
                checkProgress(1, true, false);
                checkProgress(2, true, false);
            } else if (i8 < i10) {
                ImageReceiver imageReceiver2 = this.leftImage;
                this.leftImage = this.centerImage;
                this.centerImage = this.rightImage;
                this.rightImage = imageReceiver2;
                BlurringShader.ThumbBlurer thumbBlurer2 = this.leftBlur;
                this.leftBlur = this.centerBlur;
                this.centerBlur = this.rightBlur;
                this.rightBlur = thumbBlurer2;
                AnimatedFloat[] animatedFloatArr2 = this.centerImageInsideBlur;
                if (animatedFloatArr2 != null) {
                    AnimatedFloat animatedFloat2 = animatedFloatArr2[2];
                    r5 = 1;
                    animatedFloatArr2[2] = animatedFloatArr2[1];
                    c = 0;
                    animatedFloatArr2[1] = animatedFloatArr2[0];
                    animatedFloatArr2[0] = animatedFloat2;
                } else {
                    c = 0;
                    r5 = 1;
                }
                this.leftImageIsVideo = z11;
                this.leftCropTransform = clone;
                this.leftCropState = clone2;
                PhotoProgressView[] photoProgressViewArr2 = this.photoProgressViews;
                PhotoProgressView photoProgressView2 = photoProgressViewArr2[c];
                photoProgressViewArr2[c] = photoProgressViewArr2[r5];
                photoProgressViewArr2[r5] = photoProgressView2;
                ImageView[] imageViewArr2 = this.fullscreenButton;
                ImageView imageView2 = imageViewArr2[c];
                imageViewArr2[c] = imageViewArr2[r5];
                imageViewArr2[r5] = imageView2;
                imageViewArr2[c].setTranslationY(imageView2.getTranslationY());
                this.rightCropState = null;
                setIndexToPaintingOverlay(this.currentIndex - r5, this.leftPaintingOverlay);
                setIndexToPaintingOverlay(this.currentIndex, this.paintingOverlay);
                setIndexToPaintingOverlay(this.currentIndex + r5, this.rightPaintingOverlay);
                setIndexToImage(this.rightImage, this.currentIndex + r5, this.rightCropTransform);
                resetIndexForDeferredImageLoading();
                updateAccessibilityOverlayVisibility();
                checkProgress(r5, r5, false);
                checkProgress(2, r5, false);
            }
            Bitmap bitmap = this.videoFrameBitmap;
            if (bitmap != null) {
                bitmap.recycle();
                this.videoFrameBitmap = null;
            }
        }
        detectFaces();
    }

    private void resetIndexForDeferredImageLoading() {
        Object mark = this.centerImage.getMark();
        if (mark == null || !mark.equals(1)) {
            return;
        }
        setIndexToImage(this.centerImage, this.currentIndex, null);
    }

    private void setCurrentCaption(MessageObject messageObject, CharSequence charSequence, boolean z, boolean z2) {
        int i;
        boolean z3;
        boolean z4;
        TLRPC$Message tLRPC$Message;
        int i2;
        CharSequence cloneSpans = AnimatedEmojiSpan.cloneSpans(charSequence, 3);
        showEditCaption(this.editing, z2);
        if (this.editing || this.sendPhotoType == 1) {
            this.captionEdit.setText(cloneSpans);
            this.captionTextViewSwitcher.setVisibility(8);
            return;
        }
        this.captionEdit.setVisibility(8);
        if (this.needCaptionLayout) {
            if (this.captionTextViewSwitcher.getParent() != this.pickerView) {
                FrameLayout frameLayout = this.captionContainer;
                if (frameLayout != null) {
                    frameLayout.removeView(this.captionTextViewSwitcher);
                }
                this.captionTextViewSwitcher.setMeasureAllChildren(false);
                this.pickerView.addView(this.captionTextViewSwitcher, LayoutHelper.createFrame(-1, -2, 83, 0, 0, 76, 48));
            }
        } else {
            if (this.captionScrollView == null) {
                FrameLayout frameLayout2 = new FrameLayout(this.containerView.getContext());
                this.captionContainer = frameLayout2;
                this.captionTextViewSwitcher.setContainer(frameLayout2);
                CaptionScrollView captionScrollView = new CaptionScrollView(this.containerView.getContext(), this.captionTextViewSwitcher, this.captionContainer) { // from class: org.telegram.ui.PhotoViewer.62
                    {
                        PhotoViewer.this = this;
                    }

                    @Override // org.telegram.p042ui.PhotoViewer.CaptionScrollView
                    protected boolean isStatusBarVisible() {
                        return Build.VERSION.SDK_INT >= 21 && !PhotoViewer.this.inBubbleMode;
                    }

                    @Override // android.view.View
                    public void invalidate() {
                        super.invalidate();
                        if (PhotoViewer.this.isActionBarVisible) {
                            int scrollY = getScrollY();
                            float translationY = PhotoViewer.this.captionTextViewSwitcher.getTranslationY();
                            float f = BitmapDescriptorFactory.HUE_RED;
                            boolean z5 = scrollY == 0 && translationY == BitmapDescriptorFactory.HUE_RED;
                            boolean z6 = scrollY == 0 && translationY == BitmapDescriptorFactory.HUE_RED;
                            if (!z5) {
                                int y = PhotoViewer.this.photoProgressViews[0].getY() + PhotoViewer.this.photoProgressViews[0].size;
                                int top = (((PhotoViewer.this.captionContainer.getTop() + ((int) translationY)) - scrollY) + ((isStatusBarVisible() ? AndroidUtilities.statusBarHeight : 0) + C3702ActionBar.getCurrentActionBarHeight())) - AndroidUtilities.m102dp(12);
                                z6 = top > ((int) PhotoViewer.this.fullscreenButton[0].getY()) + AndroidUtilities.m102dp(32);
                                z5 = top > y;
                            }
                            if (PhotoViewer.this.allowShowFullscreenButton) {
                                if (PhotoViewer.this.fullscreenButton[0].getTag() == null || ((Integer) PhotoViewer.this.fullscreenButton[0].getTag()).intValue() != 3 || !z6) {
                                    if (PhotoViewer.this.fullscreenButton[0].getTag() == null && !z6) {
                                        PhotoViewer.this.fullscreenButton[0].setTag(3);
                                        PhotoViewer.this.fullscreenButton[0].animate().alpha(BitmapDescriptorFactory.HUE_RED).setListener(null).setDuration(150L).start();
                                    }
                                } else {
                                    PhotoViewer.this.fullscreenButton[0].setTag(2);
                                    PhotoViewer.this.fullscreenButton[0].animate().alpha(1.0f).setDuration(150L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.62.1
                                        {
                                            C666162.this = this;
                                        }

                                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                        public void onAnimationEnd(Animator animator) {
                                            PhotoViewer.this.fullscreenButton[0].setTag(null);
                                        }
                                    }).start();
                                }
                            }
                            PhotoProgressView photoProgressView = PhotoViewer.this.photoProgressViews[0];
                            if (z5) {
                                f = 1.0f;
                            }
                            photoProgressView.setIndexedAlpha(2, f, true);
                        }
                    }
                };
                this.captionScrollView = captionScrollView;
                this.captionTextViewSwitcher.setScrollView(captionScrollView);
                this.captionContainer.setClipChildren(false);
                this.captionScrollView.addView(this.captionContainer, new ViewGroup.LayoutParams(-1, -2));
                this.containerView.addView(this.captionScrollView, LayoutHelper.createFrame(-1, -1, 80));
            }
            if (this.captionTextViewSwitcher.getParent() != this.captionContainer) {
                this.pickerView.removeView(this.captionTextViewSwitcher);
                this.captionTextViewSwitcher.setMeasureAllChildren(true);
                this.captionContainer.addView(this.captionTextViewSwitcher, -1, -2);
                this.videoPreviewFrame.bringToFront();
            }
        }
        boolean isEmpty = TextUtils.isEmpty(cloneSpans);
        boolean isEmpty2 = TextUtils.isEmpty(this.captionTextViewSwitcher.getCurrentView().getText());
        CaptionTextViewSwitcher captionTextViewSwitcher = this.captionTextViewSwitcher;
        TextView nextView = z2 ? captionTextViewSwitcher.getNextView() : captionTextViewSwitcher.getCurrentView();
        if (this.isCurrentVideo) {
            if (nextView.getMaxLines() != 1) {
                this.captionTextViewSwitcher.getCurrentView().setMaxLines(1);
                this.captionTextViewSwitcher.getNextView().setMaxLines(1);
                this.captionTextViewSwitcher.getCurrentView().setSingleLine(true);
                this.captionTextViewSwitcher.getNextView().setSingleLine(true);
                this.captionTextViewSwitcher.getCurrentView().setEllipsize(TextUtils.TruncateAt.END);
                this.captionTextViewSwitcher.getNextView().setEllipsize(TextUtils.TruncateAt.END);
            }
        } else {
            int maxLines = nextView.getMaxLines();
            if (maxLines == 1) {
                this.captionTextViewSwitcher.getCurrentView().setSingleLine(false);
                this.captionTextViewSwitcher.getNextView().setSingleLine(false);
            }
            if (this.needCaptionLayout) {
                Point point = AndroidUtilities.displaySize;
                i = point.x > point.y ? 5 : 10;
            } else {
                i = Integer.MAX_VALUE;
            }
            if (maxLines != i) {
                this.captionTextViewSwitcher.getCurrentView().setMaxLines(i);
                this.captionTextViewSwitcher.getNextView().setMaxLines(i);
                this.captionTextViewSwitcher.getCurrentView().setEllipsize(null);
                this.captionTextViewSwitcher.getNextView().setEllipsize(null);
            }
        }
        nextView.setScrollX(0);
        boolean z5 = this.needCaptionLayout;
        this.dontChangeCaptionPosition = !z5 && z2 && isEmpty;
        if (!z5) {
            this.captionScrollView.dontChangeTopMargin = false;
        }
        if (z2 && (i2 = Build.VERSION.SDK_INT) >= 19) {
            if (i2 >= 23) {
                TransitionManager.endTransitions(z5 ? this.pickerView : this.captionScrollView);
            }
            if (this.needCaptionLayout) {
                TransitionSet transitionSet = new TransitionSet();
                transitionSet.setOrdering(0);
                transitionSet.addTransition(new ChangeBounds());
                transitionSet.addTransition(new Fade(2));
                transitionSet.addTransition(new Fade(1));
                transitionSet.setDuration(200L);
                TransitionManager.beginDelayedTransition(this.pickerView, transitionSet);
            } else {
                TransitionSet duration = new TransitionSet().addTransition(new C666564(2, isEmpty2, isEmpty)).addTransition(new C666363(1, isEmpty2, isEmpty)).setDuration(200L);
                if (!isEmpty2) {
                    this.captionScrollView.dontChangeTopMargin = true;
                    duration.addTransition(new C666765());
                }
                if (isEmpty2 && !isEmpty) {
                    duration.addTarget((View) this.captionTextViewSwitcher);
                }
                TransitionManager.beginDelayedTransition(this.captionScrollView, duration);
            }
            z3 = true;
        } else {
            this.captionTextViewSwitcher.getCurrentView().setText((CharSequence) null);
            CaptionScrollView captionScrollView2 = this.captionScrollView;
            if (captionScrollView2 != null) {
                captionScrollView2.scrollTo(0, 0);
            }
            z3 = false;
        }
        if (!isEmpty) {
            Theme.createChatResources(null, true);
            if (messageObject == null || !this.captionTranslated || (tLRPC$Message = messageObject.messageOwner) == null || tLRPC$Message.translatedText == null || !TextUtils.equals(tLRPC$Message.translatedToLanguage, TranslateAlert2.getToLanguage())) {
                if (messageObject != null && !messageObject.messageOwner.entities.isEmpty()) {
                    SpannableString spannableString = new SpannableString(cloneSpans);
                    messageObject.addEntitiesToText(spannableString, true, false);
                    if (messageObject.isVideo()) {
                        MessageObject.addUrlsByPattern(messageObject.isOutOwner(), spannableString, false, 3, (int) messageObject.getDuration(), false);
                    }
                    cloneSpans = Emoji.replaceEmoji(spannableString, nextView.getPaint().getFontMetricsInt(), AndroidUtilities.m102dp(20), false);
                } else {
                    cloneSpans = Emoji.replaceEmoji(new SpannableStringBuilder(cloneSpans), nextView.getPaint().getFontMetricsInt(), AndroidUtilities.m102dp(20), false);
                }
            }
            this.captionTextViewSwitcher.setTag(cloneSpans);
            try {
                this.captionTextViewSwitcher.setText(cloneSpans, z2, this.lastCaptionTranslating != z);
                CaptionScrollView captionScrollView3 = this.captionScrollView;
                if (captionScrollView3 != null) {
                    captionScrollView3.updateTopMargin();
                }
            } catch (Exception e) {
                FileLog.m97e(e);
            }
            nextView.setScrollY(0);
            nextView.setTextColor(-1);
            this.captionTextViewSwitcher.setVisibility(this.isActionBarVisible && (!this.isCurrentVideo || this.pickerView.getVisibility() == 0 || this.pageBlocksAdapter != null) ? 0 : 4);
            z4 = false;
        } else if (this.needCaptionLayout) {
            this.captionTextViewSwitcher.setText(LocaleController.getString("AddCaption", C3630R.string.AddCaption), z2);
            this.captionTextViewSwitcher.getCurrentView().setTextColor(-1291845633);
            this.captionTextViewSwitcher.setTag("empty");
            z4 = false;
            this.captionTextViewSwitcher.setVisibility(0);
        } else {
            z4 = false;
            this.captionTextViewSwitcher.setText(null, z2);
            this.captionTextViewSwitcher.getCurrentView().setTextColor(-1);
            this.captionTextViewSwitcher.setVisibility(4, !z3 || isEmpty2);
            this.captionTextViewSwitcher.setTag(null);
        }
        if (this.captionTextViewSwitcher.getCurrentView() instanceof CaptionTextView) {
            ((CaptionTextView) this.captionTextViewSwitcher.getCurrentView()).setLoading(z);
        }
        if (!isEmpty && z) {
            z4 = true;
        }
        this.lastCaptionTranslating = z4;
    }

    /* renamed from: org.telegram.ui.PhotoViewer$64 */
    /* loaded from: classes5.dex */
    public class C666564 extends Fade {
        final /* synthetic */ boolean val$isCaptionEmpty;
        final /* synthetic */ boolean val$isCurrentCaptionEmpty;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C666564(int i, boolean z, boolean z2) {
            super(i);
            PhotoViewer.this = r1;
            this.val$isCurrentCaptionEmpty = z;
            this.val$isCaptionEmpty = z2;
        }

        @Override // android.transition.Fade, android.transition.Visibility
        public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
            Animator onDisappear = super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
            if (!this.val$isCurrentCaptionEmpty && this.val$isCaptionEmpty && view == PhotoViewer.this.captionTextViewSwitcher) {
                if (onDisappear != null) {
                    onDisappear.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.64.1
                        {
                            C666564.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            PhotoViewer.this.captionScrollView.setVisibility(4);
                            PhotoViewer.this.captionScrollView.backgroundAlpha = 1.0f;
                        }
                    });
                }
                ((ObjectAnimator) onDisappear).addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$64$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        PhotoViewer.C666564.this.lambda$onDisappear$0(valueAnimator);
                    }
                });
            }
            return onDisappear;
        }

        public /* synthetic */ void lambda$onDisappear$0(ValueAnimator valueAnimator) {
            PhotoViewer.this.captionScrollView.backgroundAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            PhotoViewer.this.captionScrollView.invalidate();
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$63 */
    /* loaded from: classes5.dex */
    public class C666363 extends Fade {
        final /* synthetic */ boolean val$isCaptionEmpty;
        final /* synthetic */ boolean val$isCurrentCaptionEmpty;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C666363(int i, boolean z, boolean z2) {
            super(i);
            PhotoViewer.this = r1;
            this.val$isCurrentCaptionEmpty = z;
            this.val$isCaptionEmpty = z2;
        }

        @Override // android.transition.Fade, android.transition.Visibility
        public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
            Animator onAppear = super.onAppear(viewGroup, view, transitionValues, transitionValues2);
            if (this.val$isCurrentCaptionEmpty && !this.val$isCaptionEmpty && view == PhotoViewer.this.captionTextViewSwitcher) {
                onAppear.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.63.1
                    {
                        C666363.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        PhotoViewer.this.captionScrollView.backgroundAlpha = 1.0f;
                    }
                });
                ((ObjectAnimator) onAppear).addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$63$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        PhotoViewer.C666363.this.lambda$onAppear$0(valueAnimator);
                    }
                });
            }
            return onAppear;
        }

        public /* synthetic */ void lambda$onAppear$0(ValueAnimator valueAnimator) {
            PhotoViewer.this.captionScrollView.backgroundAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            PhotoViewer.this.captionScrollView.invalidate();
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$65 */
    /* loaded from: classes5.dex */
    public class C666765 extends Transition {
        C666765() {
            PhotoViewer.this = r1;
        }

        @Override // android.transition.Transition
        public void captureStartValues(TransitionValues transitionValues) {
            if (transitionValues.view == PhotoViewer.this.captionScrollView) {
                transitionValues.values.put("scrollY", Integer.valueOf(PhotoViewer.this.captionScrollView.getScrollY()));
            }
        }

        @Override // android.transition.Transition
        public void captureEndValues(TransitionValues transitionValues) {
            if (transitionValues.view == PhotoViewer.this.captionTextViewSwitcher) {
                transitionValues.values.put("translationY", Integer.valueOf(PhotoViewer.this.captionScrollView.getPendingMarginTopDiff()));
            }
        }

        @Override // android.transition.Transition
        public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
            int intValue;
            if (transitionValues.view != PhotoViewer.this.captionScrollView) {
                if (transitionValues2.view != PhotoViewer.this.captionTextViewSwitcher || (intValue = ((Integer) transitionValues2.values.get("translationY")).intValue()) == 0) {
                    return null;
                }
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(PhotoViewer.this.captionTextViewSwitcher, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED, intValue);
                ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.65.2
                    {
                        C666765.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        PhotoViewer.this.captionTextViewSwitcher.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }
                });
                return ofFloat;
            }
            ValueAnimator ofInt = ValueAnimator.ofInt(((Integer) transitionValues.values.get("scrollY")).intValue(), 0);
            ofInt.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.65.1
                {
                    C666765.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    PhotoViewer.this.captionTextViewSwitcher.getNextView().setText((CharSequence) null);
                    PhotoViewer.this.captionScrollView.applyPendingTopMargin();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    PhotoViewer.this.captionScrollView.stopScrolling();
                }
            });
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$65$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PhotoViewer.C666765.this.lambda$createAnimator$0(valueAnimator);
                }
            });
            return ofInt;
        }

        public /* synthetic */ void lambda$createAnimator$0(ValueAnimator valueAnimator) {
            PhotoViewer.this.captionScrollView.scrollTo(0, ((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public void setCaptionHwLayerEnabled(boolean z) {
        if (this.captionHwLayerEnabled != z) {
            this.captionHwLayerEnabled = z;
            this.captionTextViewSwitcher.setLayerType(2, null);
            this.captionTextViewSwitcher.getCurrentView().setLayerType(2, null);
            this.captionTextViewSwitcher.getNextView().setLayerType(2, null);
        }
    }

    public void checkProgress(final int i, boolean z, final boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5;
        final File file;
        File file2;
        MessageObject messageObject;
        File pathToAttach;
        File pathToAttach2;
        File file3;
        boolean z6;
        FileLoader.FileResolver fileResolver;
        AnimatedFileDrawable animatedFileDrawable;
        int i2 = this.currentIndex;
        int i3 = i == 1 ? i2 + 1 : i == 2 ? i2 - 1 : i2;
        boolean z7 = false;
        if (this.currentFileNames[i] != null) {
            boolean hasBitmap = (i == 0 && i2 == 0 && (animatedFileDrawable = this.currentAnimation) != null) ? animatedFileDrawable.hasBitmap() : false;
            FileLoader.FileResolver fileResolver2 = null;
            if (this.currentMessageObject != null) {
                if (i3 < 0 || i3 >= this.imagesArr.size()) {
                    this.photoProgressViews[i].setBackgroundState(-1, z2, true);
                    return;
                }
                MessageObject messageObject2 = this.imagesArr.get(i3);
                boolean shouldMessageObjectAutoPlayed = shouldMessageObjectAutoPlayed(messageObject2);
                if (this.sharedMediaType == 1 && !messageObject2.canPreviewDocument()) {
                    this.photoProgressViews[i].setBackgroundState(-1, z2, true);
                    return;
                }
                file2 = !TextUtils.isEmpty(messageObject2.messageOwner.attachPath) ? new File(messageObject2.messageOwner.attachPath) : null;
                if ((MessageObject.getMedia(messageObject2.messageOwner) instanceof TLRPC$TL_messageMediaWebPage) && MessageObject.getMedia(messageObject2.messageOwner).webpage != null && MessageObject.getMedia(messageObject2.messageOwner).webpage.document == null) {
                    final TLObject fileLocation = getFileLocation(i3, null);
                    fileResolver = new FileLoader.FileResolver() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda84
                        @Override // org.telegram.messenger.FileLoader.FileResolver
                        public final File getFile() {
                            File lambda$checkProgress$76;
                            lambda$checkProgress$76 = PhotoViewer.this.lambda$checkProgress$76(fileLocation);
                            return lambda$checkProgress$76;
                        }
                    };
                } else {
                    final TLRPC$Message tLRPC$Message = messageObject2.messageOwner;
                    fileResolver = new FileLoader.FileResolver() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda85
                        @Override // org.telegram.messenger.FileLoader.FileResolver
                        public final File getFile() {
                            File lambda$checkProgress$77;
                            lambda$checkProgress$77 = PhotoViewer.this.lambda$checkProgress$77(tLRPC$Message);
                            return lambda$checkProgress$77;
                        }
                    };
                }
                if (messageObject2.isVideo()) {
                    z5 = true;
                    z4 = SharedConfig.streamMedia && messageObject2.canStreamVideo() && !DialogObject.isEncryptedDialog(messageObject2.getDialogId());
                    z3 = shouldMessageObjectAutoPlayed;
                } else {
                    z3 = shouldMessageObjectAutoPlayed;
                    z4 = false;
                    z5 = false;
                }
                file = null;
                fileResolver2 = fileResolver;
                messageObject = messageObject2;
            } else {
                if (this.currentBotInlineResult != null) {
                    if (i3 < 0 || i3 >= this.imagesArrLocals.size()) {
                        this.photoProgressViews[i].setBackgroundState(-1, z2, true);
                        return;
                    }
                    TLRPC$BotInlineResult tLRPC$BotInlineResult = (TLRPC$BotInlineResult) this.imagesArrLocals.get(i3);
                    if (tLRPC$BotInlineResult.type.equals("video") || MessageObject.isVideoDocument(tLRPC$BotInlineResult.document)) {
                        if (tLRPC$BotInlineResult.document != null) {
                            file3 = FileLoader.getInstance(this.currentAccount).getPathToAttach(tLRPC$BotInlineResult.document);
                        } else if (tLRPC$BotInlineResult.content instanceof TLRPC$TL_webDocument) {
                            file3 = new File(FileLoader.getDirectory(4), Utilities.MD5(tLRPC$BotInlineResult.content.url) + "." + ImageLoader.getHttpUrlExtension(tLRPC$BotInlineResult.content.url, "mp4"));
                        } else {
                            file3 = null;
                        }
                        z6 = true;
                    } else {
                        if (tLRPC$BotInlineResult.document != null) {
                            file3 = new File(FileLoader.getDirectory(3), this.currentFileNames[i]);
                        } else if (tLRPC$BotInlineResult.photo != null) {
                            file3 = new File(FileLoader.getDirectory(0), this.currentFileNames[i]);
                        } else {
                            z6 = false;
                            file3 = null;
                        }
                        z6 = false;
                    }
                    file = new File(FileLoader.getDirectory(4), this.currentFileNames[i]);
                    file2 = file3;
                    z5 = z6;
                    z3 = false;
                    z4 = false;
                } else {
                    if (this.currentFileLocation != null) {
                        if (i3 < 0 || i3 >= this.imagesArrLocationsVideo.size()) {
                            this.photoProgressViews[i].setBackgroundState(-1, z2, true);
                            return;
                        }
                        ImageLocation imageLocation = this.imagesArrLocationsVideo.get(i3);
                        pathToAttach = FileLoader.getInstance(this.currentAccount).getPathToAttach(imageLocation.location, getFileLocationExt(imageLocation), false);
                        pathToAttach2 = FileLoader.getInstance(this.currentAccount).getPathToAttach(imageLocation.location, getFileLocationExt(imageLocation), true);
                    } else if (this.currentSecureDocument != null) {
                        if (i3 < 0 || i3 >= this.secureDocuments.size()) {
                            this.photoProgressViews[i].setBackgroundState(-1, z2, true);
                            return;
                        }
                        SecureDocument secureDocument = this.secureDocuments.get(i3);
                        pathToAttach = FileLoader.getInstance(this.currentAccount).getPathToAttach(secureDocument, true);
                        pathToAttach2 = FileLoader.getInstance(this.currentAccount).getPathToAttach(secureDocument, false);
                    } else if (this.currentPathObject != null) {
                        file2 = new File(FileLoader.getDirectory(3), this.currentFileNames[i]);
                        file = new File(FileLoader.getDirectory(4), this.currentFileNames[i]);
                        z3 = false;
                        z4 = false;
                        z5 = false;
                    } else {
                        PageBlocksAdapter pageBlocksAdapter = this.pageBlocksAdapter;
                        if (pageBlocksAdapter != null) {
                            File file4 = pageBlocksAdapter.getFile(i3);
                            boolean z8 = this.pageBlocksAdapter.isVideo(i3) || this.pageBlocksAdapter.isHardwarePlayer(i3);
                            z3 = shouldIndexAutoPlayed(i3);
                            file2 = file4;
                            z5 = z8;
                            z4 = false;
                            file = null;
                            messageObject = null;
                        } else {
                            z3 = false;
                            z4 = false;
                            z5 = false;
                            file = null;
                            file2 = null;
                            messageObject = null;
                        }
                    }
                    file = pathToAttach2;
                    file2 = pathToAttach;
                    z3 = false;
                    z4 = false;
                    z5 = false;
                }
                messageObject = null;
            }
            boolean z9 = !(i == 0 && this.dontAutoPlay) && z3;
            final boolean z10 = hasBitmap;
            final File file5 = file2;
            final FileLoader.FileResolver fileResolver3 = fileResolver2;
            final MessageObject messageObject3 = messageObject;
            final boolean z11 = z4;
            final boolean z12 = z5;
            final boolean z13 = z9;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda83
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.this.lambda$checkProgress$79(z10, file5, file, fileResolver3, i, messageObject3, z11, z12, z13, z2);
                }
            });
            return;
        }
        if (!this.imagesArrLocals.isEmpty() && i3 >= 0 && i3 < this.imagesArrLocals.size()) {
            Object obj = this.imagesArrLocals.get(i3);
            if (obj instanceof MediaController.PhotoEntry) {
                z7 = ((MediaController.PhotoEntry) obj).isVideo;
            }
        }
        if (z7) {
            this.photoProgressViews[i].setBackgroundState(3, z2, true);
        } else {
            this.photoProgressViews[i].setBackgroundState(-1, z2, true);
        }
    }

    public /* synthetic */ File lambda$checkProgress$76(TLObject tLObject) {
        return FileLoader.getInstance(this.currentAccount).getPathToAttach(tLObject, true);
    }

    public /* synthetic */ File lambda$checkProgress$77(TLRPC$Message tLRPC$Message) {
        return FileLoader.getInstance(this.currentAccount).getPathToMessage(tLRPC$Message);
    }

    public /* synthetic */ void lambda$checkProgress$79(boolean z, final File file, File file2, FileLoader.FileResolver fileResolver, final int i, MessageObject messageObject, final boolean z2, final boolean z3, final boolean z4, final boolean z5) {
        final File file3;
        ChatActivity chatActivity;
        TLRPC$Document document;
        boolean exists = (z || file == null) ? z : file.exists();
        if (file2 == null && fileResolver != null) {
            file3 = fileResolver.getFile();
        } else {
            r2 = fileResolver != null ? fileResolver.getFile() : null;
            file3 = file2;
        }
        if (!exists && file3 != null) {
            exists = file3.exists();
        }
        if (!exists && r2 != null) {
            exists = r2.exists();
        }
        final boolean z6 = exists;
        if (!z6 && i != 0 && messageObject != null && z2 && DownloadController.getInstance(this.currentAccount).canDownloadMedia(messageObject.messageOwner) != 0 && (((chatActivity = this.parentChatActivity) == null || chatActivity.getCurrentEncryptedChat() == null) && !messageObject.shouldEncryptPhotoOrVideo() && (document = messageObject.getDocument()) != null)) {
            FileLoader.getInstance(this.currentAccount).loadFile(document, messageObject, 0, 10);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda75
            @Override // java.lang.Runnable
            public final void run() {
                PhotoViewer.this.lambda$checkProgress$78(i, file, file3, z6, z2, z3, z4, z5);
            }
        });
    }

    public /* synthetic */ void lambda$checkProgress$78(int i, File file, File file2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        boolean z6 = false;
        if (this.shownControlsByEnd && !this.actionBarWasShownBeforeByEnd && this.isPlaying) {
            this.photoProgressViews[i].setBackgroundState(3, false, false);
            return;
        }
        if ((file != null || file2 != null) && (z || z2)) {
            if (i != 0 || !this.isPlaying) {
                if (z3 && (!z4 || (i == 0 && this.playerWasPlaying))) {
                    this.photoProgressViews[i].setBackgroundState(3, z5, true);
                } else {
                    this.photoProgressViews[i].setBackgroundState(-1, z5, true);
                }
            }
            if (i == 0 && !this.menuItem.isSubMenuShowing()) {
                this.menuItem.setSubItemVisible(IdFabric$Menu.MESSAGE_DELETE_FROM_CACHE, z && !this.isEmbedVideo && SharedConfig.selectedPhotoViewerMenuItems.contains(PhotoViewerMenuItem.CLEAR_CACHE));
                if (!z) {
                    if (!FileLoader.getInstance(this.currentAccount).isLoadingFile(this.currentFileNames[i])) {
                        this.menuItem.hideSubItem(7);
                    } else {
                        this.menuItem.showSubItem(7);
                    }
                } else {
                    this.menuItem.hideSubItem(7);
                }
            }
        } else {
            if (z3) {
                if (!FileLoader.getInstance(this.currentAccount).isLoadingFile(this.currentFileNames[i])) {
                    this.photoProgressViews[i].setBackgroundState(2, false, true);
                } else {
                    this.photoProgressViews[i].setBackgroundState(1, false, true);
                }
            } else {
                this.photoProgressViews[i].setBackgroundState(0, z5, true);
            }
            Float fileProgress = ImageLoader.getInstance().getFileProgress(this.currentFileNames[i]);
            if (fileProgress == null) {
                fileProgress = Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
            }
            this.photoProgressViews[i].setProgress(fileProgress.floatValue(), false);
        }
        if (i == 0) {
            if (!this.isEmbedVideo && (!this.imagesArrLocals.isEmpty() || (this.currentFileNames[0] != null && this.photoProgressViews[0].backgroundState != 0))) {
                z6 = true;
            }
            this.canZoom = z6;
        }
    }

    public int getSelectionLength() {
        CaptionPhotoViewer captionPhotoViewer = this.captionEdit;
        if (captionPhotoViewer.editText != null) {
            return captionPhotoViewer.getSelectionLength();
        }
        return 0;
    }

    private void setIndexToPaintingOverlay(int i, PaintingOverlay paintingOverlay) {
        ArrayList<VideoEditedInfo.MediaEntity> arrayList;
        boolean z;
        if (paintingOverlay == null) {
            return;
        }
        paintingOverlay.reset();
        paintingOverlay.setVisibility(8);
        if (this.imagesArrLocals.isEmpty() || i < 0 || i >= this.imagesArrLocals.size()) {
            return;
        }
        Object obj = this.imagesArrLocals.get(i);
        String str = null;
        if (obj instanceof MediaController.PhotoEntry) {
            MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
            z = photoEntry.isVideo;
            str = photoEntry.paintPath;
            arrayList = photoEntry.mediaEntities;
        } else {
            if (obj instanceof MediaController.SearchImage) {
                MediaController.SearchImage searchImage = (MediaController.SearchImage) obj;
                str = searchImage.paintPath;
                arrayList = searchImage.mediaEntities;
            } else {
                arrayList = null;
            }
            z = false;
        }
        paintingOverlay.setVisibility(0);
        paintingOverlay.setData(str, arrayList, z, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:877:0x07db, code lost:
        if (r4.imageType == 2) goto L392;
     */
    /* JADX WARN: Removed duplicated region for block: B:631:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:636:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:637:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:837:0x072a  */
    /* JADX WARN: Removed duplicated region for block: B:846:0x0745  */
    /* JADX WARN: Removed duplicated region for block: B:862:0x0793  */
    /* JADX WARN: Removed duplicated region for block: B:874:0x07ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setIndexToImage(org.telegram.messenger.ImageReceiver r35, int r36, org.telegram.p042ui.Components.Crop.CropTransform r37) {
        /*
            Method dump skipped, instructions count: 2144
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.setIndexToImage(org.telegram.messenger.ImageReceiver, int, org.telegram.ui.Components.Crop.CropTransform):void");
    }

    public static boolean isShowingImage(MessageObject messageObject) {
        boolean z;
        boolean z2 = true;
        if (Instance != null && !Instance.pipAnimationInProgress && Instance.isVisible && !Instance.disableShowCheck && messageObject != null) {
            MessageObject messageObject2 = Instance.currentMessageObject;
            if (messageObject2 == null && Instance.placeProvider != null) {
                messageObject2 = Instance.placeProvider.getEditingMessageObject();
            }
            if (messageObject2 != null && messageObject2.getId() == messageObject.getId() && messageObject2.getDialogId() == messageObject.getDialogId()) {
                z = true;
                if (z && PipInstance != null) {
                    if (!PipInstance.isVisible || PipInstance.disableShowCheck || messageObject == null || PipInstance.currentMessageObject == null || PipInstance.currentMessageObject.getId() != messageObject.getId() || PipInstance.currentMessageObject.getDialogId() != messageObject.getDialogId()) {
                        z2 = false;
                    }
                    return z2;
                }
            }
        }
        z = false;
        return z ? z : z;
    }

    public static boolean isPlayingMessageInPip(MessageObject messageObject) {
        return (PipInstance == null || messageObject == null || PipInstance.currentMessageObject == null || PipInstance.currentMessageObject.getId() != messageObject.getId() || PipInstance.currentMessageObject.getDialogId() != messageObject.getDialogId()) ? false : true;
    }

    public static boolean isPlayingMessage(MessageObject messageObject) {
        return (Instance == null || Instance.pipAnimationInProgress || !Instance.isVisible || messageObject == null || Instance.currentMessageObject == null || Instance.currentMessageObject.getId() != messageObject.getId() || Instance.currentMessageObject.getDialogId() != messageObject.getDialogId()) ? false : true;
    }

    public static boolean isShowingImage(TLRPC$FileLocation tLRPC$FileLocation) {
        if (Instance == null || !Instance.isVisible || Instance.disableShowCheck || tLRPC$FileLocation == null) {
            return false;
        }
        return (Instance.currentFileLocation != null && tLRPC$FileLocation.local_id == Instance.currentFileLocation.location.local_id && tLRPC$FileLocation.volume_id == Instance.currentFileLocation.location.volume_id && tLRPC$FileLocation.dc_id == Instance.currentFileLocation.dc_id) || (Instance.currentFileLocationVideo != null && tLRPC$FileLocation.local_id == Instance.currentFileLocationVideo.location.local_id && tLRPC$FileLocation.volume_id == Instance.currentFileLocationVideo.location.volume_id && tLRPC$FileLocation.dc_id == Instance.currentFileLocationVideo.dc_id);
    }

    public static boolean isShowingImage(TLRPC$BotInlineResult tLRPC$BotInlineResult) {
        return (Instance == null || !Instance.isVisible || Instance.disableShowCheck || tLRPC$BotInlineResult == null || Instance.currentBotInlineResult == null || tLRPC$BotInlineResult.f1598id != Instance.currentBotInlineResult.f1598id) ? false : true;
    }

    public static boolean isShowingImage(String str) {
        return (Instance == null || !Instance.isVisible || Instance.disableShowCheck || str == null || !str.equals(Instance.currentPathObject)) ? false : true;
    }

    public void setParentChatActivity(ChatActivity chatActivity) {
        this.parentChatActivity = chatActivity;
    }

    public void setMaxSelectedPhotos(int i, boolean z) {
        this.maxSelectedPhotos = i;
        this.allowOrder = z;
    }

    public void checkCurrentImageVisibility() {
        PlaceProviderObject placeProviderObject = this.currentPlaceObject;
        if (placeProviderObject != null) {
            placeProviderObject.imageReceiver.setVisible(true, true);
        }
        PhotoViewerProvider photoViewerProvider = this.placeProvider;
        PlaceProviderObject placeForPhoto = photoViewerProvider == null ? null : photoViewerProvider.getPlaceForPhoto(this.currentMessageObject, getFileLocation(this.currentFileLocation), this.currentIndex, false);
        this.currentPlaceObject = placeForPhoto;
        if (placeForPhoto != null) {
            placeForPhoto.imageReceiver.setVisible(false, true);
        }
    }

    public boolean openPhoto(MessageObject messageObject, ChatActivity chatActivity, long j, long j2, int i, PhotoViewerProvider photoViewerProvider) {
        return openPhoto(messageObject, null, null, null, null, null, null, 0, photoViewerProvider, chatActivity, j, j2, i, true, null, null);
    }

    public boolean openPhoto(MessageObject messageObject, int i, ChatActivity chatActivity, long j, long j2, int i2, PhotoViewerProvider photoViewerProvider) {
        return openPhoto(messageObject, null, null, null, null, null, null, 0, photoViewerProvider, chatActivity, j, j2, i2, true, null, Integer.valueOf(i));
    }

    public boolean openPhoto(MessageObject messageObject, long j, long j2, int i, PhotoViewerProvider photoViewerProvider, boolean z) {
        return openPhoto(messageObject, null, null, null, null, null, null, 0, photoViewerProvider, null, j, j2, i, z, null, null);
    }

    public boolean openPhoto(TLRPC$FileLocation tLRPC$FileLocation, PhotoViewerProvider photoViewerProvider) {
        return openPhoto(null, tLRPC$FileLocation, null, null, null, null, null, 0, photoViewerProvider, null, 0L, 0L, 0, true, null, null);
    }

    public boolean openPhotoWithVideo(TLRPC$FileLocation tLRPC$FileLocation, ImageLocation imageLocation, PhotoViewerProvider photoViewerProvider) {
        return openPhoto(null, tLRPC$FileLocation, null, imageLocation, null, null, null, 0, photoViewerProvider, null, 0L, 0L, 0, true, null, null);
    }

    public boolean openPhoto(TLRPC$FileLocation tLRPC$FileLocation, ImageLocation imageLocation, PhotoViewerProvider photoViewerProvider) {
        return openPhoto(null, tLRPC$FileLocation, imageLocation, null, null, null, null, 0, photoViewerProvider, null, 0L, 0L, 0, true, null, null);
    }

    public boolean openPhoto(ArrayList<MessageObject> arrayList, int i, long j, long j2, int i2, PhotoViewerProvider photoViewerProvider) {
        return openPhoto(arrayList.get(i), null, null, null, arrayList, null, null, i, photoViewerProvider, null, j, j2, i2, true, null, null);
    }

    public boolean openPhoto(ArrayList<SecureDocument> arrayList, int i, PhotoViewerProvider photoViewerProvider) {
        return openPhoto(null, null, null, null, null, arrayList, null, i, photoViewerProvider, null, 0L, 0L, 0, true, null, null);
    }

    public boolean openPhoto(int i, PageBlocksAdapter pageBlocksAdapter, PhotoViewerProvider photoViewerProvider) {
        return openPhoto(null, null, null, null, null, null, null, i, photoViewerProvider, null, 0L, 0L, 0, true, pageBlocksAdapter, null);
    }

    public boolean openPhotoForSelect(ArrayList<Object> arrayList, int i, int i2, boolean z, PhotoViewerProvider photoViewerProvider, ChatActivity chatActivity) {
        return openPhotoForSelect(null, null, arrayList, i, i2, z, photoViewerProvider, chatActivity);
    }

    public boolean openPhotoForSelect(TLRPC$FileLocation tLRPC$FileLocation, ImageLocation imageLocation, ArrayList<Object> arrayList, int i, int i2, boolean z, PhotoViewerProvider photoViewerProvider, ChatActivity chatActivity) {
        this.isDocumentsPicker = z;
        ImageView imageView = this.pickerViewSendButton;
        if (imageView != null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView.getLayoutParams();
            if (i2 == 4 || i2 == 5) {
                this.pickerViewSendButton.setImageResource(C3630R.C3632drawable.msg_input_send_mini);
                layoutParams.bottomMargin = AndroidUtilities.m103dp(7.33f);
            } else if (i2 == 1 || i2 == 3 || i2 == 10) {
                this.pickerViewSendButton.setImageResource(C3630R.C3632drawable.floating_check);
                this.pickerViewSendButton.setPadding(0, AndroidUtilities.m102dp(1), 0, 0);
                layoutParams.bottomMargin = AndroidUtilities.m103dp(7.33f);
            } else {
                this.pickerViewSendButton.setImageResource(C3630R.C3632drawable.msg_input_send_mini);
                layoutParams.bottomMargin = AndroidUtilities.m103dp(2.33f);
            }
            this.pickerViewSendButton.setLayoutParams(layoutParams);
        }
        if (this.sendPhotoType != 1 && i2 == 1 && this.isVisible) {
            this.sendPhotoType = i2;
            this.doneButtonPressed = false;
            this.actionBarContainer.setTitle("");
            this.actionBarContainer.setSubtitle("", false);
            this.placeProvider = photoViewerProvider;
            this.mergeDialogId = 0L;
            this.currentDialogId = 0L;
            this.selectedPhotosAdapter.notifyDataSetChanged();
            this.pageBlocksAdapter = null;
            if (this.velocityTracker == null) {
                this.velocityTracker = VelocityTracker.obtain();
            }
            this.isVisible = true;
            this.isVisibleOrAnimating = true;
            togglePhotosListView(false, false);
            this.openedFullScreenVideo = false;
            createCropView();
            toggleActionBar(false, false);
            this.seekToProgressPending2 = BitmapDescriptorFactory.HUE_RED;
            this.skipFirstBufferingProgress = false;
            this.playerInjected = false;
            makeFocusable();
            this.backgroundDrawable.setAlpha(255);
            this.containerView.setAlpha(1.0f);
            onPhotoShow(null, tLRPC$FileLocation, imageLocation, null, null, null, arrayList, i, null);
            initCropView();
            setCropBitmap();
            return true;
        }
        this.sendPhotoType = i2;
        return openPhoto(null, tLRPC$FileLocation, imageLocation, null, null, null, arrayList, i, photoViewerProvider, chatActivity, 0L, 0L, 0, true, null, null);
    }

    public void setTitle(CharSequence charSequence) {
        PhotoViewerActionBarContainer photoViewerActionBarContainer = this.actionBarContainer;
        this.customTitle = charSequence;
        photoViewerActionBarContainer.setTitle(charSequence);
        toggleActionBar(true, false);
    }

    public void openCurrentPhotoInPaintModeForSelect() {
        final File file;
        final MessageObject messageObject;
        final boolean z;
        final boolean z2;
        ActionBarToggleParams enableStatusBarAnimation;
        if (canSendMediaToParentChatActivity()) {
            MessageObject messageObject2 = this.currentMessageObject;
            File file2 = null;
            if (messageObject2 != null) {
                boolean z3 = messageObject2.canEditMedia() && !this.currentMessageObject.isDocument();
                boolean isVideo = this.currentMessageObject.isVideo();
                if (!TextUtils.isEmpty(this.currentMessageObject.messageOwner.attachPath)) {
                    File file3 = new File(this.currentMessageObject.messageOwner.attachPath);
                    if (file3.exists()) {
                        file2 = file3;
                    }
                }
                if (file2 == null) {
                    file2 = FileLoader.getInstance(this.currentAccount).getPathToMessage(this.currentMessageObject.messageOwner);
                }
                messageObject = messageObject2;
                file = file2;
                z2 = z3;
                z = isVideo;
            } else {
                file = null;
                messageObject = null;
                z = false;
                z2 = false;
            }
            if (file != null && file.exists()) {
                this.savedState = new SavedState(this.currentIndex, new ArrayList(this.imagesArr), this.placeProvider);
                toggleActionBar(false, true, new ActionBarToggleParams().enableStatusBarAnimation(false));
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda76
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhotoViewer.this.lambda$openCurrentPhotoInPaintModeForSelect$80(file, z, messageObject, z2);
                    }
                }, enableStatusBarAnimation.animationDuration);
                return;
            }
            showDownloadAlert();
        }
    }

    public /* synthetic */ void lambda$openCurrentPhotoInPaintModeForSelect$80(File file, boolean z, final MessageObject messageObject, final boolean z2) {
        Pair<Integer, Integer> imageOrientation = AndroidUtilities.getImageOrientation(file);
        int i = this.lastImageId;
        this.lastImageId = i - 1;
        final MediaController.PhotoEntry orientation = new MediaController.PhotoEntry(0, i, 0L, file.getAbsolutePath(), z ? 0 : ((Integer) imageOrientation.first).intValue(), z, 0, 0, 0L).setOrientation(imageOrientation);
        this.sendPhotoType = 2;
        this.doneButtonPressed = false;
        final PhotoViewerProvider photoViewerProvider = this.placeProvider;
        this.placeProvider = new EmptyPhotoViewerProvider() { // from class: org.telegram.ui.PhotoViewer.66
            private final ImageReceiver.BitmapHolder thumbHolder;

            @Override // org.telegram.p042ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
            public boolean canCaptureMorePhotos() {
                return false;
            }

            {
                PhotoViewer.this = this;
                this.thumbHolder = this.centerImage.getBitmapSafe();
            }

            @Override // org.telegram.p042ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
            public PlaceProviderObject getPlaceForPhoto(MessageObject messageObject2, TLRPC$FileLocation tLRPC$FileLocation, int i2, boolean z3) {
                PhotoViewerProvider photoViewerProvider2 = photoViewerProvider;
                if (photoViewerProvider2 != null) {
                    return photoViewerProvider2.getPlaceForPhoto(messageObject, null, 0, z3);
                }
                return null;
            }

            @Override // org.telegram.p042ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
            public ImageReceiver.BitmapHolder getThumbForPhoto(MessageObject messageObject2, TLRPC$FileLocation tLRPC$FileLocation, int i2) {
                return this.thumbHolder;
            }

            @Override // org.telegram.p042ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
            public void sendButtonPressed(int i2, VideoEditedInfo videoEditedInfo, boolean z3, int i3, boolean z4, String str, boolean z5) {
                sendMedia(videoEditedInfo, z3, i3, false, z4, str);
            }

            @Override // org.telegram.p042ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
            public void replaceButtonPressed(int i2, VideoEditedInfo videoEditedInfo) {
                MediaController.PhotoEntry photoEntry = orientation;
                if (photoEntry.isCropped || photoEntry.isPainted || photoEntry.isFiltered || videoEditedInfo != null || !TextUtils.isEmpty(photoEntry.caption)) {
                    sendMedia(videoEditedInfo, false, 0, true, false, null);
                }
            }

            @Override // org.telegram.p042ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
            public boolean canReplace(int i2) {
                return photoViewerProvider != null && z2;
            }

            @Override // org.telegram.p042ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p042ui.PhotoViewer.PhotoViewerProvider
            public MessageObject getEditingMessageObject() {
                return messageObject;
            }

            private void sendMedia(VideoEditedInfo videoEditedInfo, boolean z3, int i2, boolean z4, boolean z5, String str) {
                if (PhotoViewer.this.parentChatActivity != null) {
                    MessageObject messageObject2 = z4 ? messageObject : null;
                    if (messageObject2 != null && !TextUtils.isEmpty(orientation.caption)) {
                        MediaController.PhotoEntry photoEntry = orientation;
                        messageObject2.editingMessage = photoEntry.caption;
                        messageObject2.editingMessageEntities = photoEntry.entities;
                    }
                    MediaController.PhotoEntry photoEntry2 = orientation;
                    if (photoEntry2.isVideo) {
                        if (videoEditedInfo != null) {
                            AccountInstance accountInstance = PhotoViewer.this.parentChatActivity.getAccountInstance();
                            String str2 = orientation.path;
                            long dialogId = PhotoViewer.this.parentChatActivity.getDialogId();
                            MessageObject replyMessage = PhotoViewer.this.parentChatActivity.getReplyMessage();
                            MessageObject threadMessage = PhotoViewer.this.parentChatActivity.getThreadMessage();
                            MediaController.PhotoEntry photoEntry3 = orientation;
                            SendMessagesHelper.prepareSendingVideo(accountInstance, str2, videoEditedInfo, dialogId, replyMessage, threadMessage, null, photoEntry3.entities, photoEntry3.ttl, messageObject2, z3, i2, z5, photoEntry3.hasSpoiler, photoEntry3.caption, str);
                            return;
                        }
                        AccountInstance accountInstance2 = PhotoViewer.this.parentChatActivity.getAccountInstance();
                        String str3 = orientation.path;
                        long dialogId2 = PhotoViewer.this.parentChatActivity.getDialogId();
                        MessageObject replyMessage2 = PhotoViewer.this.parentChatActivity.getReplyMessage();
                        MessageObject threadMessage2 = PhotoViewer.this.parentChatActivity.getThreadMessage();
                        MediaController.PhotoEntry photoEntry4 = orientation;
                        SendMessagesHelper.prepareSendingVideo(accountInstance2, str3, null, dialogId2, replyMessage2, threadMessage2, null, photoEntry4.entities, photoEntry4.ttl, messageObject2, z3, i2, z5, photoEntry4.hasSpoiler, photoEntry4.caption, str);
                    } else if (photoEntry2.imagePath != null) {
                        AccountInstance accountInstance3 = PhotoViewer.this.parentChatActivity.getAccountInstance();
                        MediaController.PhotoEntry photoEntry5 = orientation;
                        String str4 = photoEntry5.imagePath;
                        String str5 = photoEntry5.thumbPath;
                        long dialogId3 = PhotoViewer.this.parentChatActivity.getDialogId();
                        MessageObject replyMessage3 = PhotoViewer.this.parentChatActivity.getReplyMessage();
                        MessageObject threadMessage3 = PhotoViewer.this.parentChatActivity.getThreadMessage();
                        MediaController.PhotoEntry photoEntry6 = orientation;
                        SendMessagesHelper.prepareSendingPhoto(accountInstance3, str4, str5, null, dialogId3, replyMessage3, threadMessage3, null, photoEntry6.entities, photoEntry6.stickers, null, photoEntry6.ttl, messageObject2, videoEditedInfo, z3, i2, z5, photoEntry6.caption, str);
                    } else if (photoEntry2.path != null) {
                        AccountInstance accountInstance4 = PhotoViewer.this.parentChatActivity.getAccountInstance();
                        MediaController.PhotoEntry photoEntry7 = orientation;
                        String str6 = photoEntry7.path;
                        String str7 = photoEntry7.thumbPath;
                        long dialogId4 = PhotoViewer.this.parentChatActivity.getDialogId();
                        MessageObject replyMessage4 = PhotoViewer.this.parentChatActivity.getReplyMessage();
                        MessageObject threadMessage4 = PhotoViewer.this.parentChatActivity.getThreadMessage();
                        MediaController.PhotoEntry photoEntry8 = orientation;
                        SendMessagesHelper.prepareSendingPhoto(accountInstance4, str6, str7, null, dialogId4, replyMessage4, threadMessage4, null, photoEntry8.entities, photoEntry8.stickers, null, photoEntry8.ttl, messageObject2, videoEditedInfo, z3, i2, z5, photoEntry8.caption, str);
                    }
                }
            }
        };
        this.selectedPhotosAdapter.notifyDataSetChanged();
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.aboutToSwitchTo = 3;
        togglePhotosListView(false, false);
        toggleActionBar(true, false);
        ChatActivity chatActivity = this.parentChatActivity;
        if (chatActivity != null && chatActivity.getChatActivityEnterView() != null && this.parentChatActivity.isKeyboardVisible()) {
            this.parentChatActivity.getChatActivityEnterView().closeKeyboard();
        } else {
            makeFocusable();
        }
        this.backgroundDrawable.setAlpha(255);
        this.containerView.setAlpha(1.0f);
        onPhotoShow(null, null, null, null, null, null, Collections.singletonList(orientation), 0, null);
        this.pickerView.setTranslationY(AndroidUtilities.m102dp(this.isCurrentVideo ? 154 : 96));
        this.pickerViewSendButton.setTranslationY(AndroidUtilities.m102dp(this.isCurrentVideo ? 154 : 96));
        C3702ActionBar c3702ActionBar = this.actionBar;
        c3702ActionBar.setTranslationY(-c3702ActionBar.getHeight());
        this.captionTextViewSwitcher.setTranslationY(AndroidUtilities.m102dp(this.isCurrentVideo ? 154 : 96));
        createPaintView();
        switchToPaintMode();
        this.aboutToSwitchTo = 0;
    }

    private boolean checkAnimation() {
        if (this.animationInProgress != 0 && Math.abs(this.transitionAnimationStartTime - System.currentTimeMillis()) >= 500) {
            Runnable runnable = this.animationEndRunnable;
            if (runnable != null) {
                runnable.run();
                this.animationEndRunnable = null;
            }
            this.animationInProgress = 0;
            invalidateBlur();
        }
        return this.animationInProgress != 0;
    }

    public void setCropBitmap() {
        VideoEditTextureView videoEditTextureView;
        if (this.cropInitied || this.sendPhotoType != 1) {
            return;
        }
        if (!this.isCurrentVideo || ((videoEditTextureView = (VideoEditTextureView) this.videoTextureView) != null && videoEditTextureView.getVideoWidth() > 0 && videoEditTextureView.getVideoHeight() > 0)) {
            this.cropInitied = true;
            Bitmap bitmap = this.centerImage.getBitmap();
            int orientation = this.centerImage.getOrientation();
            if (bitmap == null) {
                bitmap = this.animatingImageView.getBitmap();
                orientation = this.animatingImageView.getOrientation();
            }
            Bitmap bitmap2 = bitmap;
            int i = orientation;
            if (bitmap2 == null && this.videoTextureView == null) {
                return;
            }
            this.photoCropView.setBitmap(bitmap2, i, false, false, this.paintingOverlay, this.cropTransform, this.isCurrentVideo ? (VideoEditTextureView) this.videoTextureView : null, this.editState.cropState);
        }
    }

    private void initCropView() {
        PhotoCropView photoCropView = this.photoCropView;
        if (photoCropView == null) {
            return;
        }
        photoCropView.setBitmap(null, 0, false, false, null, null, null, null);
        if (this.sendPhotoType != 1) {
            return;
        }
        this.photoCropView.onAppear();
        this.photoCropView.setVisibility(0);
        this.photoCropView.setAlpha(1.0f);
        this.photoCropView.onAppeared();
        this.padImageForHorizontalInsets = true;
    }

    public boolean openPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, ImageLocation imageLocation, ImageLocation imageLocation2, ArrayList<MessageObject> arrayList, ArrayList<SecureDocument> arrayList2, ArrayList<Object> arrayList3, int i, final PhotoViewerProvider photoViewerProvider, ChatActivity chatActivity, long j, long j2, int i2, boolean z, PageBlocksAdapter pageBlocksAdapter, final Integer num) {
        TLRPC$Message tLRPC$Message;
        boolean z2;
        PhotoViewerProvider photoViewerProvider2;
        float f;
        if (this.parentActivity != null && !this.isVisible && ((photoViewerProvider != null || !checkAnimation()) && (messageObject != null || tLRPC$FileLocation != null || arrayList != null || arrayList3 != null || arrayList2 != null || imageLocation != null || pageBlocksAdapter != null))) {
            PlaceProviderObject placeForPhoto = photoViewerProvider.getPlaceForPhoto(messageObject, tLRPC$FileLocation, i, true);
            if (Build.VERSION.SDK_INT < 21) {
                Rect rect = this.insets;
                rect.top = AndroidUtilities.statusBarHeight;
                rect.bottom = AndroidUtilities.navigationBarHeight;
            }
            WindowManager windowManager = (WindowManager) this.parentActivity.getSystemService("window");
            if (this.attachedToWindow) {
                try {
                    windowManager.removeView(this.windowView);
                    onHideView();
                } catch (Exception unused) {
                }
            }
            try {
                WindowManager.LayoutParams layoutParams = this.windowLayoutParams;
                layoutParams.type = 99;
                if (Build.VERSION.SDK_INT >= 21) {
                    layoutParams.flags = -2147417856;
                }
                if (!(chatActivity == null || chatActivity.getCurrentEncryptedChat() == null) || ((this.avatarsDialogId != 0 && MessagesController.getInstance(this.currentAccount).isChatNoForwards(-this.avatarsDialogId)) || ((messageObject != null && (MessagesController.getInstance(this.currentAccount).isChatNoForwards(messageObject.getChatId()) || ((tLRPC$Message = messageObject.messageOwner) != null && tLRPC$Message.noforwards))) || (messageObject != null && messageObject.hasRevealedExtendedMedia())))) {
                    this.windowLayoutParams.flags |= 8192;
                } else {
                    this.windowLayoutParams.flags &= -8193;
                }
                this.windowLayoutParams.softInputMode = 272;
                this.windowView.setFocusable(false);
                this.containerView.setFocusable(false);
                windowManager.addView(this.windowView, this.windowLayoutParams);
                onShowView();
                this.hasCaptionForAllMedia = false;
                this.doneButtonPressed = false;
                this.closePhotoAfterSelect = true;
                this.allowShowFullscreenButton = true;
                this.usedSurfaceView = false;
                this.parentChatActivity = chatActivity;
                this.lastTitle = null;
                this.isEmbedVideo = num != null;
                this.actionBarContainer.setTitle("");
                this.actionBarContainer.setSubtitle("", false);
                PhotoCountView photoCountView = this.countView;
                if (photoCountView != null) {
                    photoCountView.set(0, 0, false);
                    this.countView.updateShow(false, false);
                }
                this.actionBar.setTitleScrollNonFitText(false);
                NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoadFailed);
                NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoaded);
                NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoadProgressChanged);
                NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.mediaCountDidLoad);
                NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.mediaDidLoad);
                NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.dialogPhotosLoaded);
                NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagesDeleted);
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
                NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.filePreparingFailed);
                NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileNewChunkAvailable);
                this.placeProvider = photoViewerProvider;
                this.mergeDialogId = j2;
                this.currentDialogId = j;
                this.topicId = i2;
                this.selectedPhotosAdapter.notifyDataSetChanged();
                this.pageBlocksAdapter = pageBlocksAdapter;
                this.setAvatarFor = null;
                if (this.velocityTracker == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                }
                this.isVisible = true;
                this.isVisibleOrAnimating = true;
                togglePhotosListView(false, false);
                boolean z3 = !z;
                this.openedFullScreenVideo = z3;
                if (z3) {
                    toggleActionBar(false, false);
                } else if (this.sendPhotoType == 1) {
                    createCropView();
                    toggleActionBar(false, false);
                } else {
                    toggleActionBar(true, false);
                }
                this.windowView.setClipChildren(false);
                this.navigationBar.setVisibility(0);
                this.seekToProgressPending2 = BitmapDescriptorFactory.HUE_RED;
                this.skipFirstBufferingProgress = false;
                this.playerInjected = false;
                if (placeForPhoto != null) {
                    this.disableShowCheck = true;
                    this.animationInProgress = 1;
                    if (messageObject != null) {
                        AnimatedFileDrawable animation = placeForPhoto.allowTakeAnimation ? placeForPhoto.imageReceiver.getAnimation() : null;
                        this.currentAnimation = animation;
                        if (animation != null) {
                            if (messageObject.isVideo()) {
                                placeForPhoto.imageReceiver.setAllowStartAnimation(false);
                                placeForPhoto.imageReceiver.stopAnimation();
                                if (MediaController.getInstance().isPlayingMessage(messageObject)) {
                                    this.seekToProgressPending2 = messageObject.audioProgress;
                                }
                                this.skipFirstBufferingProgress = this.injectingVideoPlayer == null && !FileLoader.getInstance(messageObject.currentAccount).isLoadingVideo(messageObject.getDocument(), true) && (this.currentAnimation.hasBitmap() || !FileLoader.getInstance(messageObject.currentAccount).isLoadingVideo(messageObject.getDocument(), false));
                                this.currentAnimation = null;
                            } else if (messageObject.getWebPagePhotos(null, null).size() > 1) {
                                this.currentAnimation = null;
                            }
                        }
                    } else if (pageBlocksAdapter != null) {
                        this.currentAnimation = placeForPhoto.imageReceiver.getAnimation();
                    }
                    z2 = true;
                    onPhotoShow(messageObject, tLRPC$FileLocation, imageLocation, imageLocation2, arrayList, arrayList2, arrayList3, i, placeForPhoto);
                    if (this.sendPhotoType == 1) {
                        this.photoCropView.setVisibility(0);
                        this.photoCropView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        this.photoCropView.setFreeform(false);
                    }
                    RectF drawRegion = placeForPhoto.imageReceiver.getDrawRegion();
                    float f2 = drawRegion.left;
                    float f3 = drawRegion.top;
                    int orientation = placeForPhoto.imageReceiver.getOrientation();
                    int animatedOrientation = placeForPhoto.imageReceiver.getAnimatedOrientation();
                    if (animatedOrientation != 0) {
                        orientation = animatedOrientation;
                    }
                    ClippingImageView[] animatingImageViews = getAnimatingImageViews(placeForPhoto);
                    this.clippingImageProgress = 1.0f;
                    for (int i3 = 0; i3 < animatingImageViews.length; i3++) {
                        animatingImageViews[i3].setAnimationValues(this.animationValues);
                        animatingImageViews[i3].setVisibility(0);
                        animatingImageViews[i3].setRadius(placeForPhoto.radius);
                        animatingImageViews[i3].setOrientation(orientation, placeForPhoto.imageReceiver.getInvert());
                        animatingImageViews[i3].setImageBitmap(placeForPhoto.thumb);
                    }
                    initCropView();
                    if (this.sendPhotoType == 1) {
                        this.photoCropView.setAspectRatio(1.0f);
                    }
                    ViewGroup.LayoutParams layoutParams2 = this.animatingImageView.getLayoutParams();
                    layoutParams2.width = (int) drawRegion.width();
                    int height = (int) drawRegion.height();
                    layoutParams2.height = height;
                    if (layoutParams2.width <= 0) {
                        layoutParams2.width = 100;
                    }
                    if (height <= 0) {
                        layoutParams2.height = 100;
                    }
                    for (int i4 = 0; i4 < animatingImageViews.length; i4++) {
                        if (animatingImageViews.length > 1) {
                            ClippingImageView clippingImageView = animatingImageViews[i4];
                            f = BitmapDescriptorFactory.HUE_RED;
                            clippingImageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        } else {
                            f = BitmapDescriptorFactory.HUE_RED;
                            animatingImageViews[i4].setAlpha(1.0f);
                        }
                        animatingImageViews[i4].setPivotX(f);
                        animatingImageViews[i4].setPivotY(f);
                        animatingImageViews[i4].setScaleX(placeForPhoto.scale);
                        animatingImageViews[i4].setScaleY(placeForPhoto.scale);
                        animatingImageViews[i4].setTranslationX(placeForPhoto.viewX + (drawRegion.left * placeForPhoto.scale));
                        animatingImageViews[i4].setTranslationY(placeForPhoto.viewY + (drawRegion.top * placeForPhoto.scale));
                        animatingImageViews[i4].setLayoutParams(layoutParams2);
                    }
                    this.windowView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC667167(animatingImageViews, layoutParams2, f2, placeForPhoto, f3, pageBlocksAdapter, photoViewerProvider, arrayList3, num));
                } else {
                    z2 = true;
                    if (arrayList3 != null && this.sendPhotoType != 3 && ((photoViewerProvider2 = this.placeProvider) == null || !photoViewerProvider2.closeKeyboard())) {
                        makeFocusable();
                    }
                    this.containerView.setAlpha(1.0f);
                    onPhotoShow(messageObject, tLRPC$FileLocation, imageLocation, imageLocation2, arrayList, arrayList2, arrayList3, i, placeForPhoto);
                    initCropView();
                    setCropBitmap();
                    ChatActivity chatActivity2 = this.parentChatActivity;
                    if (chatActivity2 != null) {
                        UndoView undoView = chatActivity2.getUndoView();
                        if (undoView != null) {
                            undoView.hide(false, 1);
                        }
                        this.parentChatActivity.getFragmentView().invalidate();
                    }
                    this.windowView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.PhotoViewer.68
                        {
                            PhotoViewer.this = this;
                        }

                        @Override // android.view.ViewTreeObserver.OnPreDrawListener
                        public boolean onPreDraw() {
                            PhotoViewer.this.windowView.getViewTreeObserver().removeOnPreDrawListener(this);
                            PhotoViewer.this.actionBar.setTranslationY(-AndroidUtilities.m102dp(32));
                            ViewPropertyAnimator duration = PhotoViewer.this.actionBar.animate().alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(150L);
                            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
                            duration.setInterpolator(cubicBezierInterpolator).start();
                            PhotoViewer.this.checkImageView.setTranslationY(-AndroidUtilities.m102dp(32));
                            PhotoViewer.this.checkImageView.animate().alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
                            PhotoViewer.this.photosCounterView.setTranslationY(-AndroidUtilities.m102dp(32));
                            PhotoViewer.this.photosCounterView.animate().alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
                            PhotoViewer.this.pickerView.setTranslationY(AndroidUtilities.m102dp(32));
                            PhotoViewer.this.pickerView.animate().alpha(1.0f).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
                            PhotoViewer.this.pickerViewSendButton.setTranslationY(AndroidUtilities.m102dp(32));
                            PhotoViewer.this.pickerViewSendButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                            PhotoViewer.this.pickerViewSendButton.animate().alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
                            PhotoViewer.this.videoPreviewFrame.setTranslationY(AndroidUtilities.m102dp(32));
                            PhotoViewer.this.videoPreviewFrame.animate().alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(cubicBezierInterpolator).start();
                            PhotoViewer.this.containerView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                            PhotoViewer.this.backgroundDrawable.setAlpha(0);
                            PhotoViewer.this.animationInProgress = 4;
                            PhotoViewer.this.containerView.invalidate();
                            AnimatorSet animatorSet = new AnimatorSet();
                            ObjectAnimator duration2 = ObjectAnimator.ofFloat(PhotoViewer.this.pickerView, View.TRANSLATION_Y, PhotoViewer.this.pickerView.getTranslationY(), BitmapDescriptorFactory.HUE_RED).setDuration(220L);
                            duration2.setInterpolator(cubicBezierInterpolator);
                            ObjectAnimator.ofFloat(PhotoViewer.this.pickerView, View.ALPHA, 1.0f).setDuration(220L).setInterpolator(cubicBezierInterpolator);
                            animatorSet.playTogether(ObjectAnimator.ofFloat(PhotoViewer.this.containerView, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(220L), ObjectAnimator.ofFloat(PhotoViewer.this.navigationBar, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(220L), duration2);
                            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.68.1
                                {
                                    ViewTreeObserver$OnPreDrawListenerC667368.this = this;
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationStart(Animator animator) {
                                    super.onAnimationStart(animator);
                                    PhotoViewerProvider photoViewerProvider3 = photoViewerProvider;
                                    if (photoViewerProvider3 != null) {
                                        photoViewerProvider3.onPreOpen();
                                    }
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    super.onAnimationEnd(animator);
                                    PhotoViewer.this.animationInProgress = 0;
                                    PhotoViewer.this.invalidateBlur();
                                    PhotoViewer.this.backgroundDrawable.setAlpha(255);
                                    PhotoViewer.this.containerView.invalidate();
                                    PhotoViewer.this.pickerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                                    if (PhotoViewer.this.isEmbedVideo) {
                                        ViewTreeObserver$OnPreDrawListenerC667368 viewTreeObserver$OnPreDrawListenerC667368 = ViewTreeObserver$OnPreDrawListenerC667368.this;
                                        PhotoViewer.this.initEmbedVideo(num.intValue());
                                    }
                                    PhotoViewerProvider photoViewerProvider3 = photoViewerProvider;
                                    if (photoViewerProvider3 != null) {
                                        photoViewerProvider3.onOpen();
                                    }
                                }
                            });
                            animatorSet.start();
                            return true;
                        }
                    });
                }
                AccessibilityManager accessibilityManager = (AccessibilityManager) this.parentActivity.getSystemService("accessibility");
                if (accessibilityManager.isTouchExplorationEnabled()) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    obtain.setEventType(16384);
                    obtain.getText().add(LocaleController.getString("AccDescrPhotoViewer", C3630R.string.AccDescrPhotoViewer));
                    accessibilityManager.sendAccessibilityEvent(obtain);
                }
                return z2;
            } catch (Exception e) {
                FileLog.m97e(e);
            }
        }
        return false;
    }

    /* renamed from: org.telegram.ui.PhotoViewer$67 */
    /* loaded from: classes5.dex */
    public class ViewTreeObserver$OnPreDrawListenerC667167 implements ViewTreeObserver.OnPreDrawListener {
        final /* synthetic */ ClippingImageView[] val$animatingImageViews;
        final /* synthetic */ Integer val$embedSeekTime;
        final /* synthetic */ ViewGroup.LayoutParams val$layoutParams;
        final /* synthetic */ float val$left;
        final /* synthetic */ PlaceProviderObject val$object;
        final /* synthetic */ PageBlocksAdapter val$pageBlocksAdapter;
        final /* synthetic */ ArrayList val$photos;
        final /* synthetic */ PhotoViewerProvider val$provider;
        final /* synthetic */ float val$top;

        ViewTreeObserver$OnPreDrawListenerC667167(ClippingImageView[] clippingImageViewArr, ViewGroup.LayoutParams layoutParams, float f, PlaceProviderObject placeProviderObject, float f2, PageBlocksAdapter pageBlocksAdapter, PhotoViewerProvider photoViewerProvider, ArrayList arrayList, Integer num) {
            PhotoViewer.this = r1;
            this.val$animatingImageViews = clippingImageViewArr;
            this.val$layoutParams = layoutParams;
            this.val$left = f;
            this.val$object = placeProviderObject;
            this.val$top = f2;
            this.val$pageBlocksAdapter = pageBlocksAdapter;
            this.val$provider = photoViewerProvider;
            this.val$photos = arrayList;
            this.val$embedSeekTime = num;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            float min;
            float f;
            float measuredWidth;
            PlaceProviderObject placeProviderObject;
            ClippingImageView[] clippingImageViewArr;
            int i;
            ClippingImageView[] clippingImageViewArr2 = this.val$animatingImageViews;
            if (clippingImageViewArr2.length > 1) {
                clippingImageViewArr2[1].setAlpha(1.0f);
                this.val$animatingImageViews[1].setAdditionalTranslationX(-PhotoViewer.this.getLeftInset());
            }
            ClippingImageView[] clippingImageViewArr3 = this.val$animatingImageViews;
            clippingImageViewArr3[0].setTranslationX(clippingImageViewArr3[0].getTranslationX() + PhotoViewer.this.getLeftInset());
            PhotoViewer.this.windowView.getViewTreeObserver().removeOnPreDrawListener(this);
            if (PhotoViewer.this.sendPhotoType == 1) {
                float f2 = PhotoViewer.this.isStatusBarVisible() ? AndroidUtilities.statusBarHeight : 0;
                float measuredHeight = (PhotoViewer.this.photoCropView.getMeasuredHeight() - AndroidUtilities.m102dp(64)) - f2;
                float measuredWidth2 = PhotoViewer.this.photoCropView.getMeasuredWidth() / 2.0f;
                float f3 = f2 + (measuredHeight / 2.0f);
                float min2 = (Math.min(PhotoViewer.this.photoCropView.getMeasuredWidth(), measuredHeight) - (AndroidUtilities.m102dp(16) * 2)) / 2.0f;
                float f4 = f3 - min2;
                ViewGroup.LayoutParams layoutParams = this.val$layoutParams;
                float f5 = (f3 + min2) - f4;
                min = Math.max(((measuredWidth2 + min2) - (measuredWidth2 - min2)) / layoutParams.width, f5 / layoutParams.height);
                f = f4 + ((f5 - (this.val$layoutParams.height * min)) / 2.0f);
                measuredWidth = ((((PhotoViewer.this.windowView.getMeasuredWidth() - PhotoViewer.this.getLeftInset()) - PhotoViewer.this.getRightInset()) - (this.val$layoutParams.width * min)) / 2.0f) + PhotoViewer.this.getLeftInset();
            } else {
                min = Math.min(PhotoViewer.this.windowView.getMeasuredWidth() / this.val$layoutParams.width, (AndroidUtilities.displaySize.y + (PhotoViewer.this.isStatusBarVisible() ? AndroidUtilities.statusBarHeight : 0)) / this.val$layoutParams.height);
                f = ((AndroidUtilities.displaySize.y + (PhotoViewer.this.isStatusBarVisible() ? AndroidUtilities.statusBarHeight : 0)) - (this.val$layoutParams.height * min)) / 2.0f;
                measuredWidth = (PhotoViewer.this.windowView.getMeasuredWidth() - (this.val$layoutParams.width * min)) / 2.0f;
            }
            int abs = (int) Math.abs(this.val$left - this.val$object.imageReceiver.getImageX());
            int abs2 = (int) Math.abs(this.val$top - this.val$object.imageReceiver.getImageY());
            if (this.val$pageBlocksAdapter != null && this.val$object.imageReceiver.isAspectFit()) {
                abs = 0;
            }
            int[] iArr = new int[2];
            this.val$object.parentView.getLocationInWindow(iArr);
            int i2 = iArr[1];
            int i3 = Build.VERSION.SDK_INT;
            int i4 = (i3 >= 21 || PhotoViewer.this.inBubbleMode) ? 0 : AndroidUtilities.statusBarHeight;
            int i5 = this.val$object.viewY;
            float f6 = this.val$top;
            int i6 = (int) (((i2 - i4) - (i5 + f6)) + placeProviderObject.clipTopAddition);
            if (i6 < 0) {
                i6 = 0;
            }
            int height = (int) ((((i5 + f6) + this.val$layoutParams.height) - ((iArr[1] + placeProviderObject.parentView.getHeight()) - ((i3 >= 21 || PhotoViewer.this.inBubbleMode) ? 0 : AndroidUtilities.statusBarHeight))) + this.val$object.clipBottomAddition);
            if (height < 0) {
                height = 0;
            }
            int max = Math.max(i6, abs2);
            int max2 = Math.max(height, abs2);
            PhotoViewer.this.animationValues[0][0] = PhotoViewer.this.animatingImageView.getScaleX();
            PhotoViewer.this.animationValues[0][1] = PhotoViewer.this.animatingImageView.getScaleY();
            PhotoViewer.this.animationValues[0][2] = PhotoViewer.this.animatingImageView.getTranslationX();
            PhotoViewer.this.animationValues[0][3] = PhotoViewer.this.animatingImageView.getTranslationY();
            float f7 = abs;
            PhotoViewer.this.animationValues[0][4] = this.val$object.scale * f7;
            PhotoViewer.this.animationValues[0][5] = max * this.val$object.scale;
            PhotoViewer.this.animationValues[0][6] = max2 * this.val$object.scale;
            int[] radius = PhotoViewer.this.animatingImageView.getRadius();
            int i7 = 0;
            while (true) {
                float f8 = BitmapDescriptorFactory.HUE_RED;
                if (i7 >= 4) {
                    break;
                }
                float[] fArr = PhotoViewer.this.animationValues[0];
                int i8 = i7 + 7;
                if (radius != null) {
                    f8 = radius[i7];
                }
                fArr[i8] = f8;
                i7++;
            }
            PhotoViewer.this.animationValues[0][11] = abs2 * this.val$object.scale;
            PhotoViewer.this.animationValues[0][12] = f7 * this.val$object.scale;
            PhotoViewer.this.animationValues[1][0] = min;
            PhotoViewer.this.animationValues[1][1] = min;
            PhotoViewer.this.animationValues[1][2] = measuredWidth;
            PhotoViewer.this.animationValues[1][3] = f;
            PhotoViewer.this.animationValues[1][4] = 0.0f;
            PhotoViewer.this.animationValues[1][5] = 0.0f;
            PhotoViewer.this.animationValues[1][6] = 0.0f;
            PhotoViewer.this.animationValues[1][7] = 0.0f;
            PhotoViewer.this.animationValues[1][8] = 0.0f;
            PhotoViewer.this.animationValues[1][9] = 0.0f;
            PhotoViewer.this.animationValues[1][10] = 0.0f;
            PhotoViewer.this.animationValues[1][11] = 0.0f;
            PhotoViewer.this.animationValues[1][12] = 0.0f;
            int i9 = 0;
            while (true) {
                ClippingImageView[] clippingImageViewArr4 = this.val$animatingImageViews;
                if (i9 >= clippingImageViewArr4.length) {
                    break;
                }
                clippingImageViewArr4[i9].setAnimationProgress(BitmapDescriptorFactory.HUE_RED);
                i9++;
            }
            PhotoViewer.this.backgroundDrawable.setAlpha(0);
            PhotoViewer.this.containerView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            PhotoViewer.this.navigationBar.setAlpha(BitmapDescriptorFactory.HUE_RED);
            PhotoViewerProvider photoViewerProvider = this.val$provider;
            if (photoViewerProvider != null) {
                photoViewerProvider.onPreOpen();
            }
            PhotoViewer photoViewer = PhotoViewer.this;
            final ClippingImageView[] clippingImageViewArr5 = this.val$animatingImageViews;
            final ArrayList arrayList = this.val$photos;
            final Integer num = this.val$embedSeekTime;
            final PhotoViewerProvider photoViewerProvider2 = this.val$provider;
            photoViewer.animationEndRunnable = new Runnable() { // from class: org.telegram.ui.PhotoViewer$67$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.ViewTreeObserver$OnPreDrawListenerC667167.this.lambda$onPreDraw$0(clippingImageViewArr5, arrayList, num, photoViewerProvider2);
                }
            };
            if (PhotoViewer.this.openedFullScreenVideo) {
                if (PhotoViewer.this.animationEndRunnable != null) {
                    PhotoViewer.this.animationEndRunnable.run();
                    PhotoViewer.this.animationEndRunnable = null;
                }
                PhotoViewer.this.containerView.setAlpha(1.0f);
                PhotoViewer.this.backgroundDrawable.setAlpha(255);
                int i10 = 0;
                while (true) {
                    ClippingImageView[] clippingImageViewArr6 = this.val$animatingImageViews;
                    if (i10 >= clippingImageViewArr6.length) {
                        break;
                    }
                    clippingImageViewArr6[i10].setAnimationProgress(1.0f);
                    i10++;
                }
                if (PhotoViewer.this.sendPhotoType == 1) {
                    PhotoViewer.this.photoCropView.setAlpha(1.0f);
                }
            } else {
                final AnimatorSet animatorSet = new AnimatorSet();
                int i11 = PhotoViewer.this.sendPhotoType != 1 ? 2 : 3;
                ClippingImageView[] clippingImageViewArr7 = this.val$animatingImageViews;
                ArrayList arrayList2 = new ArrayList(i11 + clippingImageViewArr7.length + (clippingImageViewArr7.length > 1 ? 1 : 0));
                int i12 = 0;
                while (true) {
                    clippingImageViewArr = this.val$animatingImageViews;
                    if (i12 >= clippingImageViewArr.length) {
                        break;
                    }
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(clippingImageViewArr[i12], AnimationProperties.CLIPPING_IMAGE_VIEW_PROGRESS, BitmapDescriptorFactory.HUE_RED, 1.0f);
                    if (i12 == 0) {
                        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$67$$ExternalSyntheticLambda0
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                PhotoViewer.ViewTreeObserver$OnPreDrawListenerC667167.this.lambda$onPreDraw$1(valueAnimator);
                            }
                        });
                    }
                    arrayList2.add(ofFloat);
                    i12++;
                }
                if (clippingImageViewArr.length > 1) {
                    i = 2;
                    arrayList2.add(ObjectAnimator.ofFloat(PhotoViewer.this.animatingImageView, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                } else {
                    i = 2;
                }
                int[] iArr2 = new int[i];
                // fill-array-data instruction
                iArr2[0] = 0;
                iArr2[1] = 255;
                arrayList2.add(ObjectAnimator.ofInt(PhotoViewer.this.backgroundDrawable, (Property<BackgroundDrawable, Integer>) AnimationProperties.COLOR_DRAWABLE_ALPHA, iArr2));
                float[] fArr2 = new float[i];
                // fill-array-data instruction
                fArr2[0] = 0.0f;
                fArr2[1] = 1.0f;
                arrayList2.add(ObjectAnimator.ofFloat(PhotoViewer.this.containerView, View.ALPHA, fArr2));
                float[] fArr3 = new float[i];
                // fill-array-data instruction
                fArr3[0] = 0.0f;
                fArr3[1] = 1.0f;
                arrayList2.add(ObjectAnimator.ofFloat(PhotoViewer.this.navigationBar, View.ALPHA, fArr3));
                if (PhotoViewer.this.sendPhotoType == 1) {
                    float[] fArr4 = new float[i];
                    // fill-array-data instruction
                    fArr4[0] = 0.0f;
                    fArr4[1] = 1.0f;
                    arrayList2.add(ObjectAnimator.ofFloat(PhotoViewer.this.photoCropView, View.ALPHA, fArr4));
                }
                animatorSet.playTogether(arrayList2);
                animatorSet.setDuration(200L);
                animatorSet.addListener(new C66721());
                PhotoViewer.this.containerView.setLayerType(2, null);
                PhotoViewer.this.setCaptionHwLayerEnabled(false);
                PhotoViewer.this.transitionAnimationStartTime = System.currentTimeMillis();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$67$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhotoViewer.ViewTreeObserver$OnPreDrawListenerC667167.this.lambda$onPreDraw$2(animatorSet);
                    }
                });
            }
            BackgroundDrawable backgroundDrawable = PhotoViewer.this.backgroundDrawable;
            final PlaceProviderObject placeProviderObject2 = this.val$object;
            backgroundDrawable.drawRunnable = new Runnable() { // from class: org.telegram.ui.PhotoViewer$67$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.ViewTreeObserver$OnPreDrawListenerC667167.this.lambda$onPreDraw$3(placeProviderObject2);
                }
            };
            if (PhotoViewer.this.parentChatActivity != null && PhotoViewer.this.parentChatActivity.getFragmentView() != null) {
                UndoView undoView = PhotoViewer.this.parentChatActivity.getUndoView();
                if (undoView != null) {
                    undoView.hide(false, 1);
                }
                PhotoViewer.this.parentChatActivity.getFragmentView().invalidate();
            }
            return true;
        }

        public /* synthetic */ void lambda$onPreDraw$0(ClippingImageView[] clippingImageViewArr, ArrayList arrayList, Integer num, PhotoViewerProvider photoViewerProvider) {
            PhotoViewer.this.animationEndRunnable = null;
            if (PhotoViewer.this.containerView == null || PhotoViewer.this.windowView == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 18) {
                PhotoViewer.this.containerView.setLayerType(0, null);
            }
            PhotoViewer.this.animationInProgress = 0;
            PhotoViewer.this.invalidateBlur();
            PhotoViewer.this.transitionAnimationStartTime = 0L;
            PhotoViewer.this.leftCropState = null;
            PhotoViewer.this.leftCropTransform.setViewTransform(false);
            PhotoViewer.this.rightCropState = null;
            PhotoViewer.this.rightCropTransform.setViewTransform(false);
            PhotoViewer.this.setImages();
            PhotoViewer.this.setCropBitmap();
            PhotoViewer.this.containerView.invalidate();
            for (ClippingImageView clippingImageView : clippingImageViewArr) {
                clippingImageView.setVisibility(8);
            }
            if (PhotoViewer.this.showAfterAnimation != null) {
                PhotoViewer.this.showAfterAnimation.imageReceiver.setVisible(true, true);
            }
            if (PhotoViewer.this.hideAfterAnimation != null) {
                PhotoViewer.this.hideAfterAnimation.imageReceiver.setVisible(false, true);
            }
            if (arrayList != null && PhotoViewer.this.sendPhotoType != 3 && PhotoViewer.this.sendPhotoType != 1 && (PhotoViewer.this.placeProvider == null || !PhotoViewer.this.placeProvider.closeKeyboard())) {
                PhotoViewer.this.makeFocusable();
            }
            if (PhotoViewer.this.videoPlayer != null && PhotoViewer.this.videoPlayer.isPlaying() && PhotoViewer.this.isCurrentVideo && !PhotoViewer.this.imagesArrLocals.isEmpty()) {
                PhotoViewer photoViewer = PhotoViewer.this;
                photoViewer.seekAnimatedStickersTo(photoViewer.videoPlayer.getCurrentPosition());
                PhotoViewer.this.playOrStopAnimatedStickers(true);
            }
            if (PhotoViewer.this.isEmbedVideo) {
                PhotoViewer.this.initEmbedVideo(num.intValue());
            }
            if (photoViewerProvider != null) {
                photoViewerProvider.onOpen();
            }
        }

        public /* synthetic */ void lambda$onPreDraw$1(ValueAnimator valueAnimator) {
            PhotoViewer.this.clippingImageProgress = 1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue();
            PhotoViewer.this.invalidateBlur();
        }

        /* renamed from: org.telegram.ui.PhotoViewer$67$1 */
        /* loaded from: classes5.dex */
        public class C66721 extends AnimatorListenerAdapter {
            C66721() {
                ViewTreeObserver$OnPreDrawListenerC667167.this = r1;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$67$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhotoViewer.ViewTreeObserver$OnPreDrawListenerC667167.C66721.this.lambda$onAnimationEnd$0();
                    }
                });
            }

            public /* synthetic */ void lambda$onAnimationEnd$0() {
                PhotoViewer.this.transitionNotificationLocker.unlock();
                if (PhotoViewer.this.animationEndRunnable != null) {
                    PhotoViewer.this.animationEndRunnable.run();
                    PhotoViewer.this.animationEndRunnable = null;
                }
                PhotoViewer.this.setCaptionHwLayerEnabled(true);
            }
        }

        public /* synthetic */ void lambda$onPreDraw$2(AnimatorSet animatorSet) {
            PhotoViewer.this.transitionNotificationLocker.lock();
            animatorSet.start();
        }

        public /* synthetic */ void lambda$onPreDraw$3(PlaceProviderObject placeProviderObject) {
            PhotoViewer.this.disableShowCheck = false;
            placeProviderObject.imageReceiver.setVisible(false, true);
        }
    }

    public void initEmbedVideo(int i) {
        if (this.isEmbedVideo) {
            PhotoViewerWebView photoViewerWebView = new PhotoViewerWebView(this, this.parentActivity, this.pipItem) { // from class: org.telegram.ui.PhotoViewer.69
                Rect rect = new Rect();

                @Override // org.telegram.p042ui.Components.PhotoViewerWebView
                protected void processTouch(MotionEvent motionEvent) {
                }

                {
                    PhotoViewer.this = this;
                }

                @Override // org.telegram.p042ui.Components.PhotoViewerWebView
                protected void drawBlackBackground(Canvas canvas, int i2, int i3) {
                    Bitmap bitmap = PhotoViewer.this.centerImage.getBitmap();
                    if (bitmap != null) {
                        float min = Math.min(i2 / bitmap.getWidth(), i3 / bitmap.getHeight());
                        int width = (int) (bitmap.getWidth() * min);
                        int height = (int) (bitmap.getHeight() * min);
                        int i4 = (i3 - height) / 2;
                        int i5 = (i2 - width) / 2;
                        this.rect.set(i5, i4, width + i5, height + i4);
                        canvas.drawBitmap(bitmap, (Rect) null, this.rect, (Paint) null);
                    }
                }
            };
            this.photoViewerWebView = photoViewerWebView;
            photoViewerWebView.init(i, MessageObject.getMedia(this.currentMessageObject.messageOwner).webpage);
            this.photoViewerWebView.setPlaybackSpeed(this.currentVideoSpeed);
            this.containerView.addView(this.photoViewerWebView, 0, LayoutHelper.createFrame(-1, -1));
            if (this.photoViewerWebView.isControllable()) {
                setVideoPlayerControlVisible(true, true);
            }
            this.videoPlayerSeekbar.clearTimestamps();
            updateVideoPlayerTime();
            this.shouldSavePositionForCurrentVideo = null;
            this.shouldSavePositionForCurrentVideoShortTerm = null;
            this.lastSaveTime = 0L;
            this.seekToProgressPending = this.seekToProgressPending2;
            this.videoPlayerSeekbar.setProgress(BitmapDescriptorFactory.HUE_RED);
            this.videoTimelineView.setProgress(BitmapDescriptorFactory.HUE_RED);
            this.videoPlayerSeekbar.setBufferedProgress(BitmapDescriptorFactory.HUE_RED);
        }
    }

    public void makeFocusable() {
        if (Build.VERSION.SDK_INT >= 21) {
            this.windowLayoutParams.flags = -2147417856;
        } else {
            this.windowLayoutParams.flags = 0;
        }
        this.windowLayoutParams.softInputMode = 272;
        try {
            ((WindowManager) this.parentActivity.getSystemService("window")).updateViewLayout(this.windowView, this.windowLayoutParams);
        } catch (Exception e) {
            FileLog.m97e(e);
        }
        this.windowView.setFocusable(true);
        this.containerView.setFocusable(true);
    }

    private void requestAdjustToNothing() {
        this.windowLayoutParams.softInputMode = 48;
        try {
            ((WindowManager) this.parentActivity.getSystemService("window")).updateViewLayout(this.windowView, this.windowLayoutParams);
        } catch (Exception e) {
            FileLog.m97e(e);
        }
    }

    public void requestAdjust() {
        this.windowLayoutParams.softInputMode = 272;
        try {
            ((WindowManager) this.parentActivity.getSystemService("window")).updateViewLayout(this.windowView, this.windowLayoutParams);
        } catch (Exception e) {
            FileLog.m97e(e);
        }
    }

    public void injectVideoPlayerToMediaController() {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null || !videoPlayer.isPlaying()) {
            return;
        }
        if (this.playerLooping) {
            this.videoPlayer.setLooping(false);
        }
        MediaController.getInstance().injectVideoPlayer(this.videoPlayer, this.currentMessageObject);
        this.videoPlayer = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:401:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:444:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0254  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void closePhoto(boolean r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 1964
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.closePhoto(boolean, boolean):void");
    }

    public /* synthetic */ void lambda$closePhoto$81(ValueAnimator valueAnimator) {
        this.clippingImageProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidateBlur();
    }

    public /* synthetic */ void lambda$closePhoto$82(ValueAnimator valueAnimator) {
        this.clippingImageProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    public /* synthetic */ void lambda$closePhoto$83(PlaceProviderObject placeProviderObject) {
        this.animationEndRunnable = null;
        this.containerView.setLayerType(0, null);
        this.animationInProgress = 0;
        invalidateBlur();
        onPhotoClosed(placeProviderObject);
        MediaController.getInstance().tryResumePausedAudio();
    }

    /* renamed from: org.telegram.ui.PhotoViewer$70 */
    /* loaded from: classes5.dex */
    public class C667770 extends AnimatorListenerAdapter {
        C667770() {
            PhotoViewer.this = r1;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$70$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.C667770.this.lambda$onAnimationEnd$0();
                }
            });
        }

        public /* synthetic */ void lambda$onAnimationEnd$0() {
            if (PhotoViewer.this.animationEndRunnable != null) {
                PhotoViewer.this.animationEndRunnable.run();
                PhotoViewer.this.animationEndRunnable = null;
            }
        }
    }

    public /* synthetic */ void lambda$closePhoto$84(ValueAnimator valueAnimator) {
        this.clippingImageProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    public /* synthetic */ void lambda$closePhoto$85(PlaceProviderObject placeProviderObject) {
        this.animationEndRunnable = null;
        FrameLayoutDrawer frameLayoutDrawer = this.containerView;
        if (frameLayoutDrawer == null) {
            return;
        }
        frameLayoutDrawer.setLayerType(0, null);
        this.animationInProgress = 0;
        onPhotoClosed(placeProviderObject);
        this.containerView.setScaleX(1.0f);
        this.containerView.setScaleY(1.0f);
        MediaController.getInstance().tryResumePausedAudio();
    }

    private ClippingImageView[] getAnimatingImageViews(PlaceProviderObject placeProviderObject) {
        int i = (AndroidUtilities.isTablet() || placeProviderObject == null || placeProviderObject.animatingImageView == null) ? 0 : 1;
        ClippingImageView[] clippingImageViewArr = new ClippingImageView[i + 1];
        clippingImageViewArr[0] = this.animatingImageView;
        if (i != 0) {
            ClippingImageView clippingImageView = placeProviderObject.animatingImageView;
            clippingImageViewArr[1] = clippingImageView;
            clippingImageView.setAdditionalTranslationY(placeProviderObject.animatingImageViewYOffset);
        }
        return clippingImageViewArr;
    }

    private void removeObservers() {
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoadFailed);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoadProgressChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.mediaCountDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.mediaDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.dialogPhotosLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagesDeleted);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.filePreparingFailed);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileNewChunkAvailable);
        ConnectionsManager.getInstance(this.currentAccount).cancelRequestsForGuid(this.classGuid);
    }

    public void destroyPhotoViewer() {
        if (this.parentActivity == null || this.windowView == null) {
            return;
        }
        if (PipVideoOverlay.isVisible()) {
            PipVideoOverlay.dismiss();
        }
        removeObservers();
        releasePlayer(false);
        try {
            if (this.windowView.getParent() != null) {
                ((WindowManager) this.parentActivity.getSystemService("window")).removeViewImmediate(this.windowView);
                onHideView();
            }
            this.windowView = null;
        } catch (Exception e) {
            FileLog.m97e(e);
        }
        ImageReceiver.BitmapHolder bitmapHolder = this.currentThumb;
        if (bitmapHolder != null) {
            bitmapHolder.release();
            this.currentThumb = null;
        }
        this.animatingImageView.setImageBitmap(null);
        if (this == PipInstance) {
            PipInstance = null;
        } else {
            Instance = null;
        }
        onHideView();
    }

    private void onPhotoClosed(final PlaceProviderObject placeProviderObject) {
        if (this.doneButtonPressed) {
            releasePlayer(true);
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && !messageObject.putInDownloadsStore) {
            FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.currentMessageObject.getDocument());
        }
        this.isVisible = false;
        this.isVisibleOrAnimating = false;
        this.cropInitied = false;
        this.disableShowCheck = true;
        this.currentMessageObject = null;
        this.currentBotInlineResult = null;
        this.currentFileLocation = null;
        this.currentFileLocationVideo = null;
        this.currentSecureDocument = null;
        this.currentPageBlock = null;
        this.currentPathObject = null;
        if (this.videoPlayerControlFrameLayout != null) {
            setVideoPlayerControlVisible(false, false);
        }
        CaptionScrollView captionScrollView = this.captionScrollView;
        if (captionScrollView != null) {
            captionScrollView.reset();
        }
        this.sendPhotoType = 0;
        this.isDocumentsPicker = false;
        ImageReceiver.BitmapHolder bitmapHolder = this.currentThumb;
        if (bitmapHolder != null) {
            bitmapHolder.release();
            this.currentThumb = null;
        }
        this.parentAlert = null;
        AnimatedFileDrawable animatedFileDrawable = this.currentAnimation;
        if (animatedFileDrawable != null) {
            animatedFileDrawable.removeSecondParentView(this.containerView);
            this.currentAnimation = null;
        }
        for (int i = 0; i < 3; i++) {
            PhotoProgressView[] photoProgressViewArr = this.photoProgressViews;
            if (photoProgressViewArr[i] != null) {
                photoProgressViewArr[i].setBackgroundState(-1, false, true);
            }
        }
        requestVideoPreview(0);
        VideoTimelinePlayView videoTimelinePlayView = this.videoTimelineView;
        if (videoTimelinePlayView != null) {
            videoTimelinePlayView.destroy();
        }
        this.hintView.hide(false, 0);
        this.centerImage.setImageBitmap((Bitmap) null);
        this.centerBlur.destroy();
        this.leftImage.setImageBitmap((Bitmap) null);
        this.leftBlur.destroy();
        this.rightImage.setImageBitmap((Bitmap) null);
        this.rightBlur.destroy();
        this.containerView.post(new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda78
            @Override // java.lang.Runnable
            public final void run() {
                PhotoViewer.this.lambda$onPhotoClosed$86(placeProviderObject);
            }
        });
        PhotoViewerProvider photoViewerProvider = this.placeProvider;
        if (photoViewerProvider != null) {
            photoViewerProvider.willHidePhotoViewer();
        }
        this.groupedPhotosListView.clear();
        PhotoViewerProvider photoViewerProvider2 = this.placeProvider;
        if (photoViewerProvider2 != null) {
            photoViewerProvider2.onClose();
        }
        this.placeProvider = null;
        this.selectedPhotosAdapter.notifyDataSetChanged();
        this.pageBlocksAdapter = null;
        this.disableShowCheck = false;
        this.shownControlsByEnd = false;
        this.videoCutStart = BitmapDescriptorFactory.HUE_RED;
        this.videoCutEnd = 1.0f;
        if (placeProviderObject != null) {
            placeProviderObject.imageReceiver.setVisible(true, true);
        }
        ChatActivity chatActivity = this.parentChatActivity;
        if (chatActivity != null) {
            chatActivity.getFragmentView().invalidate();
        }
        Bitmap bitmap = this.videoFrameBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.videoFrameBitmap = null;
        }
    }

    public /* synthetic */ void lambda$onPhotoClosed$86(PlaceProviderObject placeProviderObject) {
        ClippingImageView clippingImageView;
        this.animatingImageView.setImageBitmap(null);
        if (placeProviderObject != null && !AndroidUtilities.isTablet() && (clippingImageView = placeProviderObject.animatingImageView) != null) {
            clippingImageView.setImageBitmap(null);
        }
        try {
            if (this.windowView.getParent() != null) {
                ((WindowManager) this.parentActivity.getSystemService("window")).removeView(this.windowView);
                onHideView();
            }
        } catch (Exception e) {
            FileLog.m97e(e);
        }
    }

    private void redraw(final int i) {
        FrameLayoutDrawer frameLayoutDrawer;
        if (i >= 6 || (frameLayoutDrawer = this.containerView) == null) {
            return;
        }
        frameLayoutDrawer.invalidate();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$$ExternalSyntheticLambda74
            @Override // java.lang.Runnable
            public final void run() {
                PhotoViewer.this.lambda$redraw$87(i);
            }
        }, 100L);
    }

    public /* synthetic */ void lambda$redraw$87(int i) {
        redraw(i + 1);
    }

    public void onResume() {
        redraw(0);
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.seekTo(videoPlayer.getCurrentPosition() + 1);
            if (this.playerLooping) {
                this.videoPlayer.setLooping(true);
            }
        }
        LPhotoPaintView lPhotoPaintView = this.photoPaintView;
        if (lPhotoPaintView != null) {
            lPhotoPaintView.onResume();
        }
        updateForwardToMessengersSubItems(this.currentMessageObject);
    }

    public void onPause() {
        if (this.currentAnimation != null) {
            closePhoto(false, false);
            return;
        }
        if (this.lastTitle != null) {
            closeCaptionEnter(true);
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null || !this.playerLooping) {
            return;
        }
        videoPlayer.setLooping(false);
    }

    public boolean isVisible() {
        return this.isVisible && this.placeProvider != null;
    }

    public void updateMinMax(float f) {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null && aspectRatioFrameLayout.getVisibility() == 0 && this.textureUploaded) {
            View view = this.usedSurfaceView ? this.videoSurfaceView : this.videoTextureView;
            f *= Math.min(getContainerViewWidth() / view.getMeasuredWidth(), getContainerViewHeight() / view.getMeasuredHeight());
        }
        float imageWidth = this.centerImage.getImageWidth();
        float imageHeight = this.centerImage.getImageHeight();
        MediaController.CropState cropState = this.editState.cropState;
        if (cropState != null) {
            imageWidth *= cropState.cropPw;
            imageHeight *= cropState.cropPh;
        }
        int containerViewWidth = ((int) ((imageWidth * f) - getContainerViewWidth())) / 2;
        int containerViewHeight = ((int) ((imageHeight * f) - getContainerViewHeight())) / 2;
        if (containerViewWidth > 0) {
            this.minX = -containerViewWidth;
            this.maxX = containerViewWidth;
        } else {
            this.maxX = BitmapDescriptorFactory.HUE_RED;
            this.minX = BitmapDescriptorFactory.HUE_RED;
        }
        if (containerViewHeight > 0) {
            this.minY = -containerViewHeight;
            this.maxY = containerViewHeight;
        } else {
            this.maxY = BitmapDescriptorFactory.HUE_RED;
            this.minY = BitmapDescriptorFactory.HUE_RED;
        }
        LPhotoPaintView lPhotoPaintView = this.photoPaintView;
        if (lPhotoPaintView != null) {
            lPhotoPaintView.updateZoom(f <= 1.1f);
        }
    }

    private int getAdditionX() {
        int i = this.currentEditMode;
        if (i == 1 || (i == 0 && this.sendPhotoType == 1)) {
            return AndroidUtilities.m102dp(16);
        }
        if (i == 0 || i == 3) {
            return 0;
        }
        return AndroidUtilities.m102dp(14);
    }

    private int getAdditionY() {
        int i = this.currentEditMode;
        if (i == 1 || (i == 0 && this.sendPhotoType == 1)) {
            return AndroidUtilities.m102dp(16) + (isStatusBarVisible() ? AndroidUtilities.statusBarHeight : 0);
        } else if (i == 3) {
            return AndroidUtilities.m102dp(8) + (isStatusBarVisible() ? AndroidUtilities.statusBarHeight : 0) + this.photoPaintView.getAdditionalTop();
        } else if (i != 0) {
            return AndroidUtilities.m102dp(14) + (isStatusBarVisible() ? AndroidUtilities.statusBarHeight : 0);
        } else {
            return 0;
        }
    }

    public int getContainerViewWidth() {
        return getContainerViewWidth(this.currentEditMode);
    }

    public int getContainerViewWidth(int i) {
        int m102dp;
        int width = this.containerView.getWidth();
        if (i == 1 || (i == 0 && this.sendPhotoType == 1)) {
            m102dp = AndroidUtilities.m102dp(32);
        } else if (i == 0 || i == 3) {
            return width;
        } else {
            m102dp = AndroidUtilities.m102dp(28);
        }
        return width - m102dp;
    }

    public int getContainerViewHeight() {
        return getContainerViewHeight(this.currentEditMode);
    }

    public int getContainerViewHeight(int i) {
        return getContainerViewHeight(false, i);
    }

    private int getContainerViewHeight(boolean z, int i) {
        int measuredHeight;
        int m102dp;
        if (z || this.inBubbleMode) {
            measuredHeight = this.containerView.getMeasuredHeight();
        } else {
            measuredHeight = AndroidUtilities.displaySize.y;
            if (i == 0 && this.sendPhotoType != 1 && isStatusBarVisible()) {
                measuredHeight += AndroidUtilities.statusBarHeight;
            }
        }
        if ((i == 0 && this.sendPhotoType == 1) || i == 1) {
            m102dp = AndroidUtilities.m102dp(144);
        } else if (i == 2) {
            m102dp = AndroidUtilities.m102dp(214);
        } else if (i != 3) {
            return measuredHeight;
        } else {
            m102dp = AndroidUtilities.m102dp(48) + this.photoPaintView.getAdditionalBottom() + C3702ActionBar.getCurrentActionBarHeight() + this.photoPaintView.getAdditionalTop();
        }
        return measuredHeight - m102dp;
    }

    /* JADX WARN: Code restructure failed: missing block: B:563:0x0431, code lost:
        if (r1 > r4) goto L213;
     */
    /* JADX WARN: Code restructure failed: missing block: B:569:0x0440, code lost:
        if (r2 > r4) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:578:0x0465, code lost:
        if (r3 > r4) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:584:0x0476, code lost:
        if (r3 > r4) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:634:0x0554, code lost:
        if (r3 > r4) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:640:0x0565, code lost:
        if (r3 > r4) goto L282;
     */
    /* JADX WARN: Removed duplicated region for block: B:534:0x036c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r20) {
        /*
            Method dump skipped, instructions count: 1680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0017, code lost:
        if (r2 > r3) goto L3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0028, code lost:
        if (r2 > r3) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkMinMax(boolean r6) {
        /*
            r5 = this;
            float r0 = r5.translationX
            float r1 = r5.translationY
            float r2 = r5.scale
            r5.updateMinMax(r2)
            float r2 = r5.translationX
            float r3 = r5.minX
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 >= 0) goto L13
        L11:
            r0 = r3
            goto L1a
        L13:
            float r3 = r5.maxX
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 <= 0) goto L1a
            goto L11
        L1a:
            float r2 = r5.translationY
            float r3 = r5.minY
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 >= 0) goto L24
        L22:
            r1 = r3
            goto L2b
        L24:
            float r3 = r5.maxY
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 <= 0) goto L2b
            goto L22
        L2b:
            float r2 = r5.scale
            r5.animateTo(r2, r0, r1, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.checkMinMax(boolean):void");
    }

    private void goToNext() {
        float containerViewWidth = this.scale != 1.0f ? ((getContainerViewWidth() - this.centerImage.getImageWidth()) / 2.0f) * this.scale : BitmapDescriptorFactory.HUE_RED;
        this.switchImageAfterAnimation = 1;
        animateTo(this.scale, ((this.minX - getContainerViewWidth()) - containerViewWidth) - (AndroidUtilities.m102dp(30) / 2), this.translationY, false);
    }

    private void goToPrev() {
        float containerViewWidth = this.scale != 1.0f ? ((getContainerViewWidth() - this.centerImage.getImageWidth()) / 2.0f) * this.scale : BitmapDescriptorFactory.HUE_RED;
        this.switchImageAfterAnimation = 2;
        animateTo(this.scale, this.maxX + getContainerViewWidth() + containerViewWidth + (AndroidUtilities.m102dp(30) / 2), this.translationY, false);
    }

    private void cancelMoveZoomAnimation() {
        AnimatorSet animatorSet = this.imageMoveAnimation;
        if (animatorSet == null) {
            return;
        }
        float f = this.scale;
        float f2 = this.animationValue;
        float f3 = f + ((this.animateToScale - f) * f2);
        float f4 = this.translationX;
        float f5 = f4 + ((this.animateToX - f4) * f2);
        float f6 = this.translationY;
        float f7 = f6 + ((this.animateToY - f6) * f2);
        float f8 = this.rotate;
        animatorSet.cancel();
        this.scale = f3;
        this.translationX = f5;
        this.translationY = f7;
        this.animationStartTime = 0L;
        this.rotate = f8 + ((this.animateToRotate - f8) * f2);
        updateMinMax(f3);
        this.zoomAnimation = false;
        this.containerView.invalidate();
    }

    public void zoomOut() {
        animateTo(1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, false);
    }

    private void animateTo(float f, float f2, float f3, boolean z) {
        animateTo(f, f2, f3, z, 250);
    }

    private void animateTo(float f, float f2, float f3, boolean z, int i) {
        if (this.scale == f && this.translationX == f2 && this.translationY == f3) {
            return;
        }
        this.zoomAnimation = z;
        this.animateToScale = f;
        this.animateToX = f2;
        this.animateToY = f3;
        this.animationStartTime = System.currentTimeMillis();
        AnimatorSet animatorSet = new AnimatorSet();
        this.imageMoveAnimation = animatorSet;
        animatorSet.playTogether(ObjectAnimator.ofFloat(this, AnimationProperties.PHOTO_VIEWER_ANIMATION_VALUE, BitmapDescriptorFactory.HUE_RED, 1.0f));
        this.imageMoveAnimation.setInterpolator(this.interpolator);
        this.imageMoveAnimation.setDuration(i);
        this.imageMoveAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.72
            {
                PhotoViewer.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PhotoViewer.this.imageMoveAnimation = null;
                PhotoViewer.this.containerView.invalidate();
            }
        });
        this.imageMoveAnimation.start();
    }

    public int getCurrentIndex() {
        return this.currentIndex;
    }

    public List<Object> getImagesArrLocals() {
        return this.imagesArrLocals;
    }

    @Keep
    public void setAnimationValue(float f) {
        this.animationValue = f;
        this.containerView.invalidate();
        invalidateBlur();
    }

    @Keep
    public float getAnimationValue() {
        return this.animationValue;
    }

    private void switchToNextIndex(int i, boolean z) {
        if (this.currentMessageObject != null) {
            releasePlayer(false);
            FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.currentMessageObject.getDocument());
        } else if (this.currentPageBlock != null) {
            TLObject media = this.pageBlocksAdapter.getMedia(this.currentIndex);
            if (media instanceof TLRPC$Document) {
                releasePlayer(false);
                FileLoader.getInstance(this.currentAccount).cancelLoadFile((TLRPC$Document) media);
            }
        }
        GroupedPhotosListView groupedPhotosListView = this.groupedPhotosListView;
        if (groupedPhotosListView != null) {
            groupedPhotosListView.setAnimateBackground(true);
        }
        this.playerAutoStarted = false;
        setImageIndex(this.currentIndex + i, z, true);
        if (shouldMessageObjectAutoPlayed(this.currentMessageObject) || shouldIndexAutoPlayed(this.currentIndex)) {
            this.playerAutoStarted = true;
            onActionClick(true);
            checkProgress(0, false, true);
        }
        checkFullscreenButton();
    }

    public boolean shouldMessageObjectAutoPlayed(MessageObject messageObject) {
        return messageObject != null && messageObject.isVideo() && (messageObject.mediaExists || messageObject.attachPathExists || (messageObject.canStreamVideo() && SharedConfig.streamMedia)) && SharedConfig.isAutoplayVideo();
    }

    private boolean shouldIndexAutoPlayed(int i) {
        File file;
        PageBlocksAdapter pageBlocksAdapter = this.pageBlocksAdapter;
        if (pageBlocksAdapter != null) {
            return (pageBlocksAdapter.isVideo(i) || this.pageBlocksAdapter.isHardwarePlayer(i)) && SharedConfig.isAutoplayVideo() && (file = this.pageBlocksAdapter.getFile(i)) != null && file.exists();
        }
        return false;
    }

    public float getCropFillScale(boolean z) {
        ImageReceiver imageReceiver = this.centerImage;
        int bitmapHeight = z ? imageReceiver.getBitmapHeight() : imageReceiver.getBitmapWidth();
        int bitmapWidth = z ? this.centerImage.getBitmapWidth() : this.centerImage.getBitmapHeight();
        float min = Math.min(this.photoCropView.getMeasuredWidth(), (this.photoCropView.getMeasuredHeight() - AndroidUtilities.m102dp(64)) - (isStatusBarVisible() ? AndroidUtilities.statusBarHeight : 0)) - (AndroidUtilities.m102dp(16) * 2);
        return Math.max(min / bitmapHeight, min / bitmapWidth);
    }

    public boolean isStatusBarVisible() {
        return Build.VERSION.SDK_INT >= 21 && !this.inBubbleMode;
    }

    /* JADX WARN: Code restructure failed: missing block: B:1100:0x0896, code lost:
        if (r8 == 2) goto L372;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1105:0x089e, code lost:
        if (r9 == (-1)) goto L628;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1111:0x08a7, code lost:
        if (r9 == r0) goto L372;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1003:0x0690  */
    /* JADX WARN: Removed duplicated region for block: B:1013:0x06bb  */
    /* JADX WARN: Removed duplicated region for block: B:1021:0x06d0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1028:0x06fb  */
    /* JADX WARN: Removed duplicated region for block: B:1029:0x06fe  */
    /* JADX WARN: Removed duplicated region for block: B:1032:0x0711  */
    /* JADX WARN: Removed duplicated region for block: B:1036:0x0730  */
    /* JADX WARN: Removed duplicated region for block: B:1037:0x0732  */
    /* JADX WARN: Removed duplicated region for block: B:1041:0x0754 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1077:0x0833  */
    /* JADX WARN: Removed duplicated region for block: B:1089:0x087d  */
    /* JADX WARN: Removed duplicated region for block: B:1115:0x08ae  */
    /* JADX WARN: Removed duplicated region for block: B:1118:0x08b5  */
    /* JADX WARN: Removed duplicated region for block: B:1157:0x0946  */
    /* JADX WARN: Removed duplicated region for block: B:1160:0x0951  */
    /* JADX WARN: Removed duplicated region for block: B:1168:0x0969  */
    /* JADX WARN: Removed duplicated region for block: B:1172:0x0987  */
    /* JADX WARN: Removed duplicated region for block: B:1182:0x09b1  */
    /* JADX WARN: Removed duplicated region for block: B:1203:0x09f6  */
    /* JADX WARN: Removed duplicated region for block: B:1212:0x0a2d  */
    /* JADX WARN: Removed duplicated region for block: B:1215:0x0a36  */
    /* JADX WARN: Removed duplicated region for block: B:1227:0x0a92  */
    /* JADX WARN: Removed duplicated region for block: B:1230:0x0a9a  */
    /* JADX WARN: Removed duplicated region for block: B:1237:0x0ab3  */
    /* JADX WARN: Removed duplicated region for block: B:1240:0x0ac4  */
    /* JADX WARN: Removed duplicated region for block: B:1246:0x0aef  */
    /* JADX WARN: Removed duplicated region for block: B:1252:0x0b07  */
    /* JADX WARN: Removed duplicated region for block: B:1253:0x0b24  */
    /* JADX WARN: Removed duplicated region for block: B:1256:0x0b35  */
    /* JADX WARN: Removed duplicated region for block: B:1260:0x0b42  */
    /* JADX WARN: Removed duplicated region for block: B:1320:0x0c42  */
    /* JADX WARN: Removed duplicated region for block: B:1322:0x0c47  */
    /* JADX WARN: Removed duplicated region for block: B:1329:0x0c62  */
    /* JADX WARN: Removed duplicated region for block: B:1338:0x0c8a  */
    /* JADX WARN: Removed duplicated region for block: B:1342:0x0c96  */
    /* JADX WARN: Removed duplicated region for block: B:1346:0x0ca5  */
    /* JADX WARN: Removed duplicated region for block: B:1373:0x0d64  */
    /* JADX WARN: Removed duplicated region for block: B:1398:0x0dfe  */
    /* JADX WARN: Removed duplicated region for block: B:1399:0x0e06  */
    /* JADX WARN: Removed duplicated region for block: B:1417:0x0ecb  */
    /* JADX WARN: Removed duplicated region for block: B:1422:0x0ede  */
    /* JADX WARN: Removed duplicated region for block: B:1447:0x0f36  */
    /* JADX WARN: Removed duplicated region for block: B:1450:0x0f3d  */
    /* JADX WARN: Removed duplicated region for block: B:1461:0x0d50 A[EDGE_INSN: B:1461:0x0d50->B:1371:0x0d50 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:909:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:922:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:923:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:929:0x0438  */
    /* JADX WARN: Removed duplicated region for block: B:930:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:934:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:946:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:954:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:977:0x0582  */
    /* JADX WARN: Removed duplicated region for block: B:978:0x058a  */
    /* JADX WARN: Removed duplicated region for block: B:993:0x060a  */
    /* JADX WARN: Removed duplicated region for block: B:996:0x0663  */
    /* JADX WARN: Removed duplicated region for block: B:998:0x066e  */
    /* JADX WARN: Type inference failed for: r14v33 */
    /* JADX WARN: Type inference failed for: r14v34 */
    /* JADX WARN: Type inference failed for: r14v35 */
    /* JADX WARN: Type inference failed for: r14v4, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r45) {
        /*
            Method dump skipped, instructions count: 3970
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.onDraw(android.graphics.Canvas):void");
    }

    public /* synthetic */ void lambda$onDraw$88() {
        switchToNextIndex(1, false);
    }

    public /* synthetic */ void lambda$onDraw$89() {
        switchToNextIndex(-1, false);
    }

    public /* synthetic */ void lambda$onDraw$90() {
        checkChangedTextureView(false);
        PipVideoOverlay.dismiss(true, true);
    }

    private void drawFancyShadows(Canvas canvas) {
        float f;
        if (this.fancyShadows) {
            if (SharedConfig.photoViewerBlur) {
                AnimatedFloat animatedFloat = this.blurAlpha;
                int i = this.animationInProgress;
                f = animatedFloat.set(i == 0 || i == 2 || i == 3);
            } else {
                f = 1.0f;
            }
            if (f <= BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            int currentActionBarHeight = ((int) (AndroidUtilities.statusBarHeight * 1.5f)) + C3702ActionBar.getCurrentActionBarHeight();
            int height = AndroidUtilities.navigationBarHeight + this.pickerView.getHeight() + (this.captionEdit.getVisibility() == 0 ? (this.captionEdit.getEditTextHeightClosedKeyboard() / 2) + AndroidUtilities.m102dp(20) : 0);
            if (this.clipFancyShadows == null) {
                this.clipFancyShadows = new Path();
                Paint paint = new Paint(1);
                this.topFancyShadowPaint = paint;
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
                Paint paint2 = new Paint(1);
                this.bottomFancyShadowPaint = paint2;
                paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
                this.topFancyShadow = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 16.0f, new int[]{-16777216, 0}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
                this.bottomFancyShadow = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 16.0f, new int[]{0, -16777216}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
                this.topFancyShadowMatrix = new Matrix();
                this.bottomFancyShadowMatrix = new Matrix();
                this.topFancyShadowPaint.setShader(this.topFancyShadow);
                this.bottomFancyShadowPaint.setShader(this.bottomFancyShadow);
            }
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.containerView.getWidth(), this.containerView.getHeight() + AndroidUtilities.navigationBarHeight, (int) (f * (this.backgroundDrawable.getAlpha() - 127) * 2.007874f), 31);
            this.clipFancyShadows.rewind();
            float f2 = currentActionBarHeight;
            this.clipFancyShadows.addRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.containerView.getWidth(), f2, Path.Direction.CW);
            this.clipFancyShadows.addRect(BitmapDescriptorFactory.HUE_RED, (this.containerView.getHeight() + AndroidUtilities.navigationBarHeight) - height, this.containerView.getWidth(), this.containerView.getHeight() + AndroidUtilities.navigationBarHeight, Path.Direction.CW);
            canvas.clipPath(this.clipFancyShadows);
            canvas.drawColor(-16777216);
            drawCaptionBlur(canvas, this.shadowBlurer, 0, 0, true, true, false);
            canvas.save();
            this.topFancyShadowMatrix.reset();
            this.topFancyShadowMatrix.postScale(1.0f, f2 / 16.0f);
            this.topFancyShadow.setLocalMatrix(this.topFancyShadowMatrix);
            this.topFancyShadowPaint.setAlpha(208);
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.containerView.getWidth(), f2, this.topFancyShadowPaint);
            this.bottomFancyShadowMatrix.reset();
            this.bottomFancyShadowMatrix.postScale(1.0f, height / 16.0f);
            this.bottomFancyShadowMatrix.postTranslate(BitmapDescriptorFactory.HUE_RED, (this.containerView.getHeight() - height) + AndroidUtilities.navigationBarHeight);
            this.bottomFancyShadow.setLocalMatrix(this.bottomFancyShadowMatrix);
            this.bottomFancyShadowPaint.setAlpha(187);
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, (this.containerView.getHeight() + AndroidUtilities.navigationBarHeight) - height, this.containerView.getWidth(), this.containerView.getHeight() + AndroidUtilities.navigationBarHeight, this.bottomFancyShadowPaint);
            canvas.restore();
            canvas.restore();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawCenterImageInternal(android.graphics.Canvas r6, float r7, float r8) {
        /*
            r5 = this;
            java.util.ArrayList<java.lang.Object> r0 = r5.imagesArrLocals
            boolean r0 = r0.isEmpty()
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L26
            int r0 = r5.currentEditMode
            if (r0 == r2) goto L1f
            int r0 = r5.sendPhotoType
            if (r0 != r2) goto L13
            goto L1f
        L13:
            org.telegram.ui.PhotoViewer$EditState r0 = r5.editState
            org.telegram.messenger.MediaController$CropState r0 = r0.cropState
            if (r0 == 0) goto L26
            boolean r0 = r0.mirrored
            if (r0 == 0) goto L26
            r0 = r2
            goto L27
        L1f:
            org.telegram.ui.Components.Crop.CropTransform r0 = r5.cropTransform
            boolean r0 = r0.isMirrored()
            goto L27
        L26:
            r0 = r1
        L27:
            r3 = 1065353216(0x3f800000, float:1.0)
            if (r0 == 0) goto L34
            r6.save()
            r0 = -1082130432(0xffffffffbf800000, float:-1.0)
            r6.scale(r0, r3)
            r1 = r2
        L34:
            r0 = 0
            int r4 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r4 <= 0) goto L54
            if (r1 != 0) goto L3f
            r6.save()
            goto L40
        L3f:
            r2 = r1
        L40:
            r1 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 * r7
            float r1 = r3 - r1
            r6.scale(r1, r3)
            r1 = 1082130432(0x40800000, float:4.0)
            float r1 = r1 * r7
            float r3 = r3 - r7
            float r1 = r1 * r3
            r7 = 1048576000(0x3e800000, float:0.25)
            float r1 = r1 * r7
            r6.skew(r0, r1)
            r1 = r2
        L54:
            org.telegram.ui.Components.PhotoViewerWebView r7 = r5.photoViewerWebView
            if (r7 == 0) goto L5e
            boolean r7 = r7.isLoaded()
            if (r7 != 0) goto L68
        L5e:
            org.telegram.messenger.ImageReceiver r7 = r5.centerImage
            r7.setAlpha(r8)
            org.telegram.messenger.ImageReceiver r7 = r5.centerImage
            r7.draw(r6)
        L68:
            if (r1 == 0) goto L6d
            r6.restore()
        L6d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.drawCenterImageInternal(android.graphics.Canvas, float, float):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawProgress(android.graphics.Canvas r9, float r10, float r11, float r12, float r13) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.drawProgress(android.graphics.Canvas, float, float, float, float):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0162  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int[] applyCrop(android.graphics.Canvas r23, int r24, int r25, int r26, int r27, float r28, org.telegram.p042ui.Components.Crop.CropTransform r29, org.telegram.messenger.MediaController.CropState r30) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.applyCrop(android.graphics.Canvas, int, int, int, int, float, org.telegram.ui.Components.Crop.CropTransform, org.telegram.messenger.MediaController$CropState):int[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:147:0x003e, code lost:
        if (r1.exists() == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0157, code lost:
        if (r1.exists() == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0197, code lost:
        if (r1.exists() == false) goto L90;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActionClick(boolean r11) {
        /*
            Method dump skipped, instructions count: 790
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.onActionClick(boolean):void");
    }

    @Override // org.telegram.p042ui.Components.GestureDetector2.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        if (!this.doubleTap && this.checkImageView.getVisibility() != 0) {
            boolean[] zArr = this.drawPressedDrawable;
            if (!zArr[0] && !zArr[1]) {
                float x = motionEvent.getX();
                int min = Math.min((int) TsExtractor.TS_STREAM_TYPE_E_AC3, this.containerView.getMeasuredWidth() / 8);
                if (x < min) {
                    if (this.leftImage.hasImageSet()) {
                        this.drawPressedDrawable[0] = true;
                        this.containerView.invalidate();
                    }
                } else if (x > this.containerView.getMeasuredWidth() - min && this.rightImage.hasImageSet()) {
                    this.drawPressedDrawable[1] = true;
                    this.containerView.invalidate();
                }
            }
        }
        return false;
    }

    @Override // org.telegram.p042ui.Components.GestureDetector2.OnDoubleTapListener
    public boolean canDoubleTap(MotionEvent motionEvent) {
        MessageObject messageObject;
        PhotoViewerWebView photoViewerWebView;
        if (this.checkImageView.getVisibility() != 0) {
            boolean[] zArr = this.drawPressedDrawable;
            if (zArr[0] || zArr[1]) {
                return true;
            }
            float x = motionEvent.getX();
            int min = Math.min((int) TsExtractor.TS_STREAM_TYPE_E_AC3, this.containerView.getMeasuredWidth() / 8);
            if ((x < min || x > this.containerView.getMeasuredWidth() - min) && (messageObject = this.currentMessageObject) != null) {
                return (messageObject.isVideo() || ((photoViewerWebView = this.photoViewerWebView) != null && photoViewerWebView.isControllable())) && SystemClock.elapsedRealtime() - this.lastPhotoSetTime >= 500 && canDoubleTapSeekVideo(motionEvent);
            }
            return true;
        }
        return true;
    }

    private void hidePressedDrawables() {
        boolean[] zArr = this.drawPressedDrawable;
        zArr[1] = false;
        zArr[0] = false;
        this.containerView.invalidate();
    }

    @Override // org.telegram.p042ui.Components.GestureDetector2.OnGestureListener
    public void onUp(MotionEvent motionEvent) {
        hidePressedDrawables();
    }

    @Override // org.telegram.p042ui.Components.GestureDetector2.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        if (!this.canZoom && !this.doubleTapEnabled) {
            return onSingleTapConfirmed(motionEvent);
        }
        FrameLayoutDrawer frameLayoutDrawer = this.containerView;
        if (frameLayoutDrawer != null && frameLayoutDrawer.getTag() != null && this.photoProgressViews[0] != null) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if ((x < ((float) (getContainerViewWidth() - AndroidUtilities.m102dp(100))) / 2.0f || x > ((float) (getContainerViewWidth() + AndroidUtilities.m102dp(100))) / 2.0f || y < ((float) (getContainerViewHeight() - AndroidUtilities.m102dp(100))) / 2.0f || y > ((float) (getContainerViewHeight() + AndroidUtilities.m102dp(100))) / 2.0f) ? false : onSingleTapConfirmed(motionEvent)) {
                this.discardTap = true;
                return true;
            }
        }
        return false;
    }

    public void onLongPress() {
        boolean z;
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null || !this.videoPlayerControlVisible || this.scale > 1.1f) {
            return;
        }
        long currentPosition = videoPlayer.getCurrentPosition();
        long duration = this.videoPlayer.getDuration();
        if (currentPosition == C0479C.TIME_UNSET || duration < C0479C.DEFAULT_SEEK_FORWARD_INCREMENT_MS) {
            return;
        }
        float f = this.longPressX;
        int containerViewWidth = getContainerViewWidth() / 3;
        if (f >= containerViewWidth * 2) {
            z = true;
        } else if (f >= containerViewWidth) {
            return;
        } else {
            z = false;
        }
        this.videoPlayerRewinder.startRewind(this.videoPlayer, z, this.currentVideoSpeed);
    }

    public VideoPlayerRewinder getVideoPlayerRewinder() {
        return this.videoPlayerRewinder;
    }

    @Override // org.telegram.p042ui.Components.GestureDetector2.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.scale != 1.0f) {
            this.scroller.abortAnimation();
            this.scroller.fling(Math.round(this.translationX), Math.round(this.translationY), Math.round(f), Math.round(f2), (int) this.minX, (int) this.maxX, (int) this.minY, (int) this.maxY);
            this.containerView.postInvalidate();
            return false;
        }
        return false;
    }

    @Override // org.telegram.p042ui.Components.GestureDetector2.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        PhotoViewerWebView photoViewerWebView;
        MessageObject messageObject;
        if (this.discardTap) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (this.checkImageView.getVisibility() != 0 && SharedConfig.nextMediaTap && y > C3702ActionBar.getCurrentActionBarHeight() + AndroidUtilities.statusBarHeight + AndroidUtilities.m102dp(40)) {
            int min = Math.min((int) TsExtractor.TS_STREAM_TYPE_E_AC3, this.containerView.getMeasuredWidth() / 8);
            if (x < min) {
                if (this.leftImage.hasImageSet()) {
                    switchToNextIndex(-1, true);
                    return true;
                }
            } else if (x > this.containerView.getMeasuredWidth() - min && this.rightImage.hasImageSet()) {
                switchToNextIndex(1, true);
                return true;
            }
        }
        PhotoViewerWebView photoViewerWebView2 = this.photoViewerWebView;
        if (photoViewerWebView2 != null && photoViewerWebView2.isControllable() && this.isActionBarVisible) {
            WebView webView = this.photoViewerWebView.getWebView();
            if (x >= webView.getX() && x <= webView.getX() + webView.getWidth() && y >= webView.getY() && y <= webView.getY() + webView.getHeight()) {
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.setAction(0);
                obtain.offsetLocation(-webView.getX(), -webView.getY());
                webView.dispatchTouchEvent(obtain);
                obtain.setAction(1);
                webView.dispatchTouchEvent(obtain);
                obtain.recycle();
                scheduleActionBarHide();
                return true;
            }
        }
        if (this.containerView.getTag() != null) {
            AspectRatioFrameLayout aspectRatioFrameLayout = this.aspectRatioFrameLayout;
            boolean z = (aspectRatioFrameLayout != null && aspectRatioFrameLayout.getVisibility() == 0) || ((photoViewerWebView = this.photoViewerWebView) != null && photoViewerWebView.isControllable());
            if (this.sharedMediaType == 1 && (messageObject = this.currentMessageObject) != null) {
                if (!messageObject.canPreviewDocument()) {
                    float containerViewHeight = (getContainerViewHeight() - AndroidUtilities.m102dp(360)) / 2.0f;
                    if (y >= containerViewHeight && y <= containerViewHeight + AndroidUtilities.m102dp(360)) {
                        onActionClick(true);
                        return true;
                    }
                }
            } else {
                PhotoProgressView[] photoProgressViewArr = this.photoProgressViews;
                if (photoProgressViewArr[0] != null && this.containerView != null) {
                    int i = photoProgressViewArr[0].backgroundState;
                    if (x >= (getContainerViewWidth() - AndroidUtilities.m102dp(100)) / 2.0f && x <= (getContainerViewWidth() + AndroidUtilities.m102dp(100)) / 2.0f && y >= (getContainerViewHeight() - AndroidUtilities.m102dp(100)) / 2.0f && y <= (getContainerViewHeight() + AndroidUtilities.m102dp(100)) / 2.0f) {
                        if (z) {
                            if ((i == 3 || i == 4) && this.photoProgressViews[0].isVisible()) {
                                this.manuallyPaused = true;
                                toggleVideoPlayer();
                                return true;
                            }
                        } else if (i > 0 && i <= 3) {
                            onActionClick(true);
                            checkProgress(0, false, true);
                            return true;
                        }
                    }
                }
            }
            PhotoViewerWebView photoViewerWebView3 = this.photoViewerWebView;
            if (photoViewerWebView3 == null || !photoViewerWebView3.isControllable() || this.photoViewerWebView.isPlaying() || !this.isActionBarVisible) {
                toggleActionBar(!this.isActionBarVisible, true);
            }
        } else {
            int i2 = this.sendPhotoType;
            if (i2 == 0 || i2 == 4) {
                if (this.isCurrentVideo) {
                    VideoPlayer videoPlayer = this.videoPlayer;
                    if (videoPlayer != null && !this.muteVideo && i2 != 1) {
                        videoPlayer.setVolume(1.0f);
                    }
                    this.manuallyPaused = true;
                    toggleVideoPlayer();
                } else {
                    this.checkImageView.performClick();
                }
            } else {
                TLRPC$BotInlineResult tLRPC$BotInlineResult = this.currentBotInlineResult;
                if (tLRPC$BotInlineResult != null && (tLRPC$BotInlineResult.type.equals("video") || MessageObject.isVideoDocument(this.currentBotInlineResult.document))) {
                    int i3 = this.photoProgressViews[0].backgroundState;
                    if (i3 > 0 && i3 <= 3 && x >= (getContainerViewWidth() - AndroidUtilities.m102dp(100)) / 2.0f && x <= (getContainerViewWidth() + AndroidUtilities.m102dp(100)) / 2.0f && y >= (getContainerViewHeight() - AndroidUtilities.m102dp(100)) / 2.0f && y <= (getContainerViewHeight() + AndroidUtilities.m102dp(100)) / 2.0f) {
                        onActionClick(true);
                        checkProgress(0, false, true);
                        return true;
                    }
                } else if (this.sendPhotoType == 2 && this.isCurrentVideo) {
                    this.manuallyPaused = true;
                    toggleVideoPlayer();
                }
            }
        }
        return true;
    }

    private boolean canDoubleTapSeekVideo(MotionEvent motionEvent) {
        PhotoViewerWebView photoViewerWebView;
        if (this.videoPlayer != null || ((photoViewerWebView = this.photoViewerWebView) != null && photoViewerWebView.isControllable())) {
            boolean z = motionEvent.getX() >= ((float) ((getContainerViewWidth() / 3) * 2));
            long currentVideoPosition = getCurrentVideoPosition();
            long videoDuration = getVideoDuration();
            if (currentVideoPosition == C0479C.TIME_UNSET || videoDuration <= C0479C.DEFAULT_SEEK_FORWARD_INCREMENT_MS) {
                return false;
            }
            return !z || videoDuration - currentVideoPosition > 10000;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:145:0x015e, code lost:
        if (r1 > r3) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x016d, code lost:
        if (r2 > r3) goto L36;
     */
    @Override // org.telegram.p042ui.Components.GestureDetector2.OnDoubleTapListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onDoubleTap(android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.onDoubleTap(android.view.MotionEvent):boolean");
    }

    /* renamed from: org.telegram.ui.PhotoViewer$QualityChooseView */
    /* loaded from: classes5.dex */
    public class QualityChooseView extends View {
        private int circleSize;
        private int gapSize;
        private String hightQualityDescription;
        private int lineSize;
        private String lowQualityDescription;
        private Paint paint;
        private int sideSide;
        private int startMovingQuality;
        private TextPaint textPaint;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public QualityChooseView(Context context) {
            super(context);
            PhotoViewer.this = r1;
            this.paint = new Paint(1);
            TextPaint textPaint = new TextPaint(1);
            this.textPaint = textPaint;
            textPaint.setTextSize(AndroidUtilities.m102dp(14));
            this.textPaint.setColor(-3289651);
            this.lowQualityDescription = LocaleController.getString("AccDescrVideoCompressLow", C3630R.string.AccDescrVideoCompressLow);
            this.hightQualityDescription = LocaleController.getString("AccDescrVideoCompressHigh", C3630R.string.AccDescrVideoCompressHigh);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            float x = motionEvent.getX();
            if (motionEvent.getAction() == 0) {
                this.startMovingQuality = PhotoViewer.this.selectedCompression;
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (motionEvent.getAction() == 0 || motionEvent.getAction() == 2) {
                int i = 0;
                while (true) {
                    if (i >= PhotoViewer.this.compressionsCount) {
                        break;
                    }
                    int i2 = this.sideSide;
                    int i3 = this.lineSize;
                    int i4 = this.gapSize;
                    int i5 = this.circleSize;
                    int i6 = i2 + (((i4 * 2) + i3 + i5) * i) + (i5 / 2);
                    int i7 = (i3 / 2) + (i5 / 2) + i4;
                    if (x <= i6 - i7 || x >= i6 + i7) {
                        i++;
                    } else if (PhotoViewer.this.selectedCompression != i) {
                        PhotoViewer.this.selectedCompression = i;
                        PhotoViewer.this.didChangedCompressionLevel(false);
                        invalidate();
                    }
                }
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                if (PhotoViewer.this.selectedCompression != this.startMovingQuality) {
                    PhotoViewer.this.requestVideoPreview(1);
                }
                PhotoViewer.this.moving = false;
            }
            return true;
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            this.circleSize = AndroidUtilities.m102dp(8);
            this.gapSize = AndroidUtilities.m102dp(2);
            this.sideSide = AndroidUtilities.m102dp(18);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (PhotoViewer.this.compressionsCount != 1) {
                this.lineSize = (((getMeasuredWidth() - (this.circleSize * PhotoViewer.this.compressionsCount)) - (this.gapSize * ((PhotoViewer.this.compressionsCount * 2) - 2))) - (this.sideSide * 2)) / (PhotoViewer.this.compressionsCount - 1);
            } else {
                this.lineSize = ((getMeasuredWidth() - (this.circleSize * PhotoViewer.this.compressionsCount)) - (this.gapSize * 2)) - (this.sideSide * 2);
            }
            int measuredHeight = (getMeasuredHeight() / 2) + AndroidUtilities.m102dp(6);
            int i = 0;
            while (i < PhotoViewer.this.compressionsCount) {
                int i2 = this.sideSide;
                int i3 = this.lineSize + (this.gapSize * 2);
                int i4 = this.circleSize;
                int i5 = i2 + ((i3 + i4) * i) + (i4 / 2);
                if (i <= PhotoViewer.this.selectedCompression) {
                    this.paint.setColor(-11292945);
                } else {
                    this.paint.setColor(1728053247);
                }
                canvas.drawCircle(i5, measuredHeight, i == PhotoViewer.this.selectedCompression ? AndroidUtilities.m102dp(6) : this.circleSize / 2, this.paint);
                if (i != 0) {
                    int i6 = ((i5 - (this.circleSize / 2)) - this.gapSize) - this.lineSize;
                    int i7 = PhotoViewer.this.selectedCompression + 1;
                    float f = BitmapDescriptorFactory.HUE_RED;
                    float dpf2 = i == i7 ? AndroidUtilities.dpf2(2.0f) : 0.0f;
                    if (i == PhotoViewer.this.selectedCompression) {
                        f = AndroidUtilities.dpf2(2.0f);
                    }
                    canvas.drawRect(dpf2 + i6, measuredHeight - AndroidUtilities.m102dp(1), (i6 + this.lineSize) - f, AndroidUtilities.m102dp(2) + measuredHeight, this.paint);
                }
                i++;
            }
            canvas.drawText(this.lowQualityDescription, this.sideSide, measuredHeight - AndroidUtilities.m102dp(16), this.textPaint);
            canvas.drawText(this.hightQualityDescription, (getMeasuredWidth() - this.sideSide) - this.textPaint.measureText(this.hightQualityDescription), measuredHeight - AndroidUtilities.m102dp(16), this.textPaint);
        }
    }

    public void updateMuteButton() {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.setMute(this.muteVideo);
        }
        if (!this.videoConvertSupported) {
            this.muteItem.setEnabled(false);
            this.muteItem.setClickable(false);
            this.muteItem.animate().alpha(0.5f).setDuration(180L).start();
            this.videoTimelineView.setMode(0);
            return;
        }
        this.muteItem.setEnabled(true);
        this.muteItem.setClickable(true);
        this.muteItem.animate().alpha(1.0f).setDuration(180L).start();
        if (this.muteVideo) {
            if (this.customTitle == null) {
                this.actionBarContainer.setSubtitle(LocaleController.getString("SoundMuted", C3630R.string.SoundMuted));
            }
            this.muteItem.setImageResource(C3630R.C3632drawable.video_send_mute);
            if (this.compressItem.getTag() != null) {
                this.compressItem.setAlpha(0.5f);
                this.compressItem.setEnabled(false);
            }
            if (this.sendPhotoType == 1) {
                this.videoTimelineView.setMaxProgressDiff(9600.0f / this.videoDuration);
                this.videoTimelineView.setMode(1);
                updateVideoInfo();
            } else {
                this.videoTimelineView.setMaxProgressDiff(1.0f);
                this.videoTimelineView.setMode(0);
            }
            this.muteItem.setContentDescription(LocaleController.getString("NoSound", C3630R.string.NoSound));
            return;
        }
        this.actionBarContainer.setSubtitle(this.currentSubtitle);
        this.muteItem.setImageResource(C3630R.C3632drawable.video_send_unmute);
        this.muteItem.setContentDescription(LocaleController.getString("Sound", C3630R.string.Sound));
        if (this.compressItem.getTag() != null) {
            this.compressItem.setAlpha(1.0f);
            this.compressItem.setEnabled(true);
        }
        this.videoTimelineView.setMaxProgressDiff(1.0f);
        this.videoTimelineView.setMode(0);
    }

    public void didChangedCompressionLevel(boolean z) {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt(String.format("compress_video_%d", Integer.valueOf(this.compressionsCount)), this.selectedCompression);
        edit.commit();
        updateWidthHeightBitrateForCompression();
        updateVideoInfo();
        if (z) {
            requestVideoPreview(1);
        }
    }

    private void calculateEstimatedVideoSize(boolean z, boolean z2) {
        float f;
        if (z) {
            long j = ((float) ((z2 ? 0L : this.audioFramesSize) + this.videoFramesSize)) * (((float) this.estimatedDuration) / this.videoDuration);
            this.estimatedSize = j;
            this.estimatedSize = j + ((j / 32768) * 16);
            return;
        }
        float f2 = (float) this.originalSize;
        long j2 = this.estimatedDuration;
        long j3 = f2 * (((float) j2) / this.videoDuration);
        this.estimatedSize = j3;
        if (z2) {
            this.estimatedSize = j3 - (((float) this.audioFramesSize) * (((float) j2) / f));
        }
    }

    private boolean needEncoding() {
        EditState editState = this.editState;
        ArrayList<VideoEditedInfo.MediaEntity> arrayList = null;
        if (editState.croppedPaintPath != null) {
            ArrayList<VideoEditedInfo.MediaEntity> arrayList2 = editState.croppedMediaEntities;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                arrayList = this.editState.croppedMediaEntities;
            }
        } else {
            ArrayList<VideoEditedInfo.MediaEntity> arrayList3 = editState.mediaEntities;
            if (arrayList3 != null && !arrayList3.isEmpty()) {
                arrayList = this.editState.mediaEntities;
            }
        }
        EditState editState2 = this.editState;
        String str = editState2.croppedPaintPath;
        if (str == null) {
            str = editState2.paintPath;
        }
        if (this.isH264Video && this.videoCutStart == BitmapDescriptorFactory.HUE_RED && this.rotationValue == 0 && this.resultWidth == this.originalWidth && this.resultHeight == this.originalHeight) {
            EditState editState3 = this.editState;
            return (editState3.cropState == null && arrayList == null && str == null && editState3.savedFilterState == null && this.sendPhotoType != 1) ? false : true;
        }
        return true;
    }

    public void updateVideoInfo() {
        float f;
        float f2;
        int i;
        if (this.actionBar == null) {
            return;
        }
        if (this.compressionsCount == 0) {
            this.actionBarContainer.setSubtitle(null);
            return;
        }
        this.compressItem.setState(this.videoConvertSupported && this.compressionsCount > 1, this.muteVideo, Math.min(this.resultWidth, this.resultHeight));
        this.itemsLayout.requestLayout();
        this.estimatedDuration = (long) Math.ceil((this.videoTimelineView.getRightProgress() - this.videoTimelineView.getLeftProgress()) * this.videoDuration);
        this.videoCutStart = this.videoTimelineView.getLeftProgress();
        this.videoCutEnd = this.videoTimelineView.getRightProgress();
        int i2 = this.rotationValue;
        int i3 = (i2 == 90 || i2 == 270) ? this.resultHeight : this.resultWidth;
        int i4 = this.rotationValue;
        int i5 = (i4 == 90 || i4 == 270) ? this.resultWidth : this.resultHeight;
        boolean needEncoding = needEncoding();
        if (this.muteVideo) {
            if (this.sendPhotoType == 1) {
                long j = this.estimatedDuration;
                i = j <= ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS ? 2600000 : j <= 5000 ? 2200000 : 1560000;
            } else {
                i = 921600;
            }
            long j2 = (i / 8) * (((float) this.estimatedDuration) / 1000.0f);
            this.estimatedSize = j2;
            this.estimatedSize = j2 + ((j2 / 32768) * 16);
        } else {
            calculateEstimatedVideoSize(needEncoding, this.sendPhotoType == 1);
        }
        if (this.videoCutStart == BitmapDescriptorFactory.HUE_RED) {
            this.startTime = -1L;
        } else {
            this.startTime = f * this.videoDuration * 1000;
        }
        if (this.videoCutEnd == 1.0f) {
            this.endTime = -1L;
        } else {
            this.endTime = f2 * this.videoDuration * 1000;
        }
        this.currentSubtitle = String.format("%s, %s", String.format("%dx%d", Integer.valueOf(i3), Integer.valueOf(i5)), String.format("%s, ~%s", AndroidUtilities.formatShortDuration((int) (this.estimatedDuration / 1000)), AndroidUtilities.formatFileSize(this.estimatedSize)));
        this.actionBar.beginDelayedTransition();
        if (this.customTitle == null) {
            this.actionBarContainer.setSubtitle(this.muteVideo ? LocaleController.getString("SoundMuted", C3630R.string.SoundMuted) : this.currentSubtitle);
        }
    }

    public void requestVideoPreview(int i) {
        if (this.videoPreviewMessageObject != null) {
            MediaController.getInstance().cancelVideoConvert(this.videoPreviewMessageObject);
        }
        boolean z = this.requestingPreview && !this.tryStartRequestPreviewOnFinish;
        this.requestingPreview = false;
        this.loadInitialVideo = false;
        this.progressView.setVisibility(4);
        if (i == 1) {
            if (this.resultHeight == this.originalHeight && this.resultWidth == this.originalWidth) {
                this.tryStartRequestPreviewOnFinish = false;
                PhotoProgressView[] photoProgressViewArr = this.photoProgressViews;
                photoProgressViewArr[0].setProgress(BitmapDescriptorFactory.HUE_RED, photoProgressViewArr[0].backgroundState == 0 || this.photoProgressViews[0].previousBackgroundState == 0);
                this.photoProgressViews[0].setBackgroundState(3, false, true);
                if (!z) {
                    preparePlayer(this.currentPlayingVideoFile, false, false, this.editState.savedFilterState);
                    this.videoPlayer.seekTo(this.videoTimelineView.getLeftProgress() * this.videoDuration);
                } else {
                    this.loadInitialVideo = true;
                }
            } else {
                releasePlayer(false);
                if (this.videoPreviewMessageObject == null) {
                    TLRPC$TL_message tLRPC$TL_message = new TLRPC$TL_message();
                    tLRPC$TL_message.f1624id = 0;
                    tLRPC$TL_message.message = "";
                    tLRPC$TL_message.media = new TLRPC$TL_messageMediaEmpty();
                    tLRPC$TL_message.action = new TLRPC$TL_messageActionEmpty();
                    tLRPC$TL_message.dialog_id = this.currentDialogId;
                    MessageObject messageObject = new MessageObject(UserConfig.selectedAccount, tLRPC$TL_message, false, false);
                    this.videoPreviewMessageObject = messageObject;
                    messageObject.messageOwner.attachPath = new File(FileLoader.getDirectory(4), "video_preview.mp4").getAbsolutePath();
                    this.videoPreviewMessageObject.videoEditedInfo = new VideoEditedInfo();
                    VideoEditedInfo videoEditedInfo = this.videoPreviewMessageObject.videoEditedInfo;
                    videoEditedInfo.rotationValue = this.rotationValue;
                    videoEditedInfo.originalWidth = this.originalWidth;
                    this.videoPreviewMessageObject.videoEditedInfo.originalHeight = this.originalHeight;
                    VideoEditedInfo videoEditedInfo2 = this.videoPreviewMessageObject.videoEditedInfo;
                    videoEditedInfo2.framerate = this.videoFramerate;
                    videoEditedInfo2.originalPath = this.currentPlayingVideoFile.getPath();
                }
                VideoEditedInfo videoEditedInfo3 = this.videoPreviewMessageObject.videoEditedInfo;
                long j = this.startTime;
                videoEditedInfo3.startTime = j;
                long j2 = this.endTime;
                videoEditedInfo3.endTime = j2;
                if (j == -1) {
                    j = 0;
                }
                if (j2 == -1) {
                    j2 = this.videoDuration * 1000.0f;
                }
                if (j2 - j > 5000000) {
                    videoEditedInfo3.endTime = j + 5000000;
                }
                videoEditedInfo3.bitrate = this.bitrate;
                this.videoPreviewMessageObject.videoEditedInfo.resultWidth = this.resultWidth;
                this.videoPreviewMessageObject.videoEditedInfo.resultHeight = this.resultHeight;
                VideoEditedInfo videoEditedInfo4 = this.videoPreviewMessageObject.videoEditedInfo;
                videoEditedInfo4.needUpdateProgress = true;
                videoEditedInfo4.originalDuration = this.videoDuration * 1000.0f;
                if (!MediaController.getInstance().scheduleVideoConvert(this.videoPreviewMessageObject, true, true)) {
                    this.tryStartRequestPreviewOnFinish = true;
                }
                this.requestingPreview = true;
                PhotoProgressView[] photoProgressViewArr2 = this.photoProgressViews;
                photoProgressViewArr2[0].setProgress(BitmapDescriptorFactory.HUE_RED, photoProgressViewArr2[0].backgroundState == 0 || this.photoProgressViews[0].previousBackgroundState == 0);
                this.photoProgressViews[0].setBackgroundState(0, false, true);
            }
        } else {
            this.tryStartRequestPreviewOnFinish = false;
            this.photoProgressViews[0].setBackgroundState(3, false, true);
            if (i == 2) {
                preparePlayer(this.currentPlayingVideoFile, false, false, this.editState.savedFilterState);
                this.videoPlayer.seekTo(this.videoTimelineView.getLeftProgress() * this.videoDuration);
            }
        }
        this.containerView.invalidate();
    }

    private Size calculateResultVideoSize() {
        int round;
        int i;
        if (this.compressionsCount == 1) {
            return new Size(this.originalWidth, this.originalHeight);
        }
        int i2 = this.selectedCompression;
        float f = (i2 != 0 ? i2 != 1 ? i2 != 2 ? 1920.0f : 1280.0f : 854.0f : 480.0f) / (this.originalWidth > this.originalHeight ? this.originalWidth : this.originalHeight);
        if (this.selectedCompression == this.compressionsCount - 1 && f >= 1.0f) {
            i = this.originalWidth;
            round = this.originalHeight;
        } else {
            int round2 = Math.round((this.originalWidth * f) / 2.0f) * 2;
            round = Math.round((this.originalHeight * f) / 2.0f) * 2;
            i = round2;
        }
        return new Size(i, round);
    }

    public void prepareRealEncoderBitrate() {
        if (this.bitrate == 0 || this.sendPhotoType == 1) {
            return;
        }
        Size calculateResultVideoSize = calculateResultVideoSize();
        if (calculateResultVideoSize.getWidth() == this.originalWidth && calculateResultVideoSize.getHeight() == this.originalHeight) {
            MediaController.extractRealEncoderBitrate(calculateResultVideoSize.getWidth(), calculateResultVideoSize.getHeight(), this.originalBitrate, false);
            return;
        }
        MediaController.extractRealEncoderBitrate(calculateResultVideoSize.getWidth(), calculateResultVideoSize.getHeight(), MediaController.makeVideoBitrate(this.originalHeight, this.originalWidth, this.originalBitrate, calculateResultVideoSize.getHeight(), calculateResultVideoSize.getWidth()), false);
    }

    public void updateWidthHeightBitrateForCompression() {
        int extractRealEncoderBitrate;
        if (this.compressionsCount <= 0) {
            return;
        }
        if (this.selectedCompression >= this.compressionsCount) {
            this.selectedCompression = this.compressionsCount - 1;
        }
        if (this.sendPhotoType == 1) {
            float max = Math.max(800.0f / this.originalWidth, 800.0f / this.originalHeight);
            this.resultWidth = Math.round((this.originalWidth * max) / 2.0f) * 2;
            this.resultHeight = Math.round((this.originalHeight * max) / 2.0f) * 2;
        } else {
            Size calculateResultVideoSize = calculateResultVideoSize();
            this.resultWidth = calculateResultVideoSize.getWidth();
            this.resultHeight = calculateResultVideoSize.getHeight();
        }
        if (this.bitrate != 0) {
            if (this.sendPhotoType == 1) {
                this.bitrate = 1560000;
                extractRealEncoderBitrate = this.bitrate;
            } else if (this.resultWidth == this.originalWidth && this.resultHeight == this.originalHeight) {
                this.bitrate = this.originalBitrate;
                extractRealEncoderBitrate = MediaController.extractRealEncoderBitrate(this.resultWidth, this.resultHeight, this.bitrate, false);
            } else {
                this.bitrate = MediaController.makeVideoBitrate(this.originalHeight, this.originalWidth, this.originalBitrate, this.resultHeight, this.resultWidth);
                extractRealEncoderBitrate = MediaController.extractRealEncoderBitrate(this.resultWidth, this.resultHeight, this.bitrate, false);
            }
            this.videoFramesSize = ((extractRealEncoderBitrate / 8) * this.videoDuration) / 1000.0f;
        }
    }

    private void showQualityView(final boolean z) {
        TextureView textureView;
        if (z && this.textureUploaded && this.videoSizeSet && !this.changingTextureView && (textureView = this.videoTextureView) != null) {
            this.videoFrameBitmap = textureView.getBitmap();
        }
        if (z) {
            this.previousCompression = this.selectedCompression;
        }
        AnimatorSet animatorSet = this.qualityChooseViewAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.qualityChooseViewAnimation = new AnimatorSet();
        if (z) {
            if (this.fancyShadows) {
                this.navigationBar.setVisibility(0);
                this.navigationBar.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.navigationBar.setBackgroundColor(2130706432);
            }
            this.qualityChooseView.setTag(1);
            AnimatorSet animatorSet2 = this.qualityChooseViewAnimation;
            Animator[] animatorArr = new Animator[4];
            FrameLayout frameLayout = this.pickerView;
            Property property = View.TRANSLATION_Y;
            float[] fArr = new float[2];
            fArr[0] = 0.0f;
            fArr[1] = frameLayout.getHeight() + this.captionEdit.getEditTextHeight() + (this.isCurrentVideo ? AndroidUtilities.m102dp(58) : 0);
            animatorArr[0] = ObjectAnimator.ofFloat(frameLayout, property, fArr);
            animatorArr[1] = ObjectAnimator.ofFloat(this.pickerView, View.ALPHA, BitmapDescriptorFactory.HUE_RED);
            animatorArr[2] = ObjectAnimator.ofFloat(this.pickerViewSendButton, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m102dp(158));
            View view = this.navigationBar;
            Property property2 = View.ALPHA;
            float[] fArr2 = new float[2];
            fArr2[0] = this.fancyShadows ? 0.0f : 1.0f;
            fArr2[1] = 1.0f;
            animatorArr[3] = ObjectAnimator.ofFloat(view, property2, fArr2);
            animatorSet2.playTogether(animatorArr);
        } else {
            this.qualityChooseView.setTag(null);
            AnimatorSet animatorSet3 = this.qualityChooseViewAnimation;
            Animator[] animatorArr2 = new Animator[3];
            animatorArr2[0] = ObjectAnimator.ofFloat(this.qualityChooseView, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m102dp(166));
            animatorArr2[1] = ObjectAnimator.ofFloat(this.qualityPicker, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m102dp(166));
            View view2 = this.navigationBar;
            Property property3 = View.ALPHA;
            float[] fArr3 = new float[2];
            fArr3[0] = 1.0f;
            fArr3[1] = this.fancyShadows ? 0.0f : 1.0f;
            animatorArr2[2] = ObjectAnimator.ofFloat(view2, property3, fArr3);
            animatorSet3.playTogether(animatorArr2);
        }
        this.qualityChooseViewAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.75
            {
                PhotoViewer.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (animator.equals(PhotoViewer.this.qualityChooseViewAnimation)) {
                    PhotoViewer.this.qualityChooseViewAnimation = new AnimatorSet();
                    if (z) {
                        PhotoViewer.this.qualityChooseView.setVisibility(0);
                        PhotoViewer.this.qualityPicker.setVisibility(0);
                        PhotoViewer.this.qualityChooseViewAnimation.playTogether(ObjectAnimator.ofFloat(PhotoViewer.this.qualityChooseView, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(PhotoViewer.this.qualityPicker, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED));
                    } else {
                        if (PhotoViewer.this.fancyShadows) {
                            PhotoViewer.this.navigationBar.setVisibility(8);
                            PhotoViewer.this.navigationBar.setAlpha(BitmapDescriptorFactory.HUE_RED);
                            PhotoViewer.this.navigationBar.setBackgroundColor(2130706432);
                        }
                        PhotoViewer.this.qualityChooseView.setVisibility(4);
                        PhotoViewer.this.qualityPicker.setVisibility(4);
                        PhotoViewer.this.qualityChooseViewAnimation.playTogether(ObjectAnimator.ofFloat(PhotoViewer.this.pickerView, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(PhotoViewer.this.pickerView, View.ALPHA, 1.0f), ObjectAnimator.ofFloat(PhotoViewer.this.pickerViewSendButton, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED));
                    }
                    PhotoViewer.this.qualityChooseViewAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.PhotoViewer.75.1
                        {
                            C668275.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator2) {
                            if (animator2.equals(PhotoViewer.this.qualityChooseViewAnimation)) {
                                PhotoViewer.this.qualityChooseViewAnimation = null;
                            }
                        }
                    });
                    PhotoViewer.this.qualityChooseViewAnimation.setDuration(200L);
                    PhotoViewer.this.qualityChooseViewAnimation.setInterpolator(AndroidUtilities.decelerateInterpolator);
                    PhotoViewer.this.qualityChooseViewAnimation.start();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                PhotoViewer.this.qualityChooseViewAnimation = null;
            }
        });
        this.qualityChooseViewAnimation.setDuration(200L);
        this.qualityChooseViewAnimation.setInterpolator(AndroidUtilities.accelerateInterpolator);
        this.qualityChooseViewAnimation.start();
        if (this.muteItem.getVisibility() == 0) {
            this.muteItem.animate().scaleX(z ? 0.25f : 1.0f).scaleY(z ? 0.25f : 1.0f).alpha(z ? 0.0f : 1.0f).setDuration(200L);
        }
    }

    private void processOpenVideo(String str, boolean z, float f, float f2, int i) {
        if (this.currentLoadingVideoRunnable != null) {
            Utilities.globalQueue.cancelRunnable(this.currentLoadingVideoRunnable);
            this.currentLoadingVideoRunnable = null;
        }
        this.videoTimelineView.setVideoPath(str, f, f2);
        this.videoPreviewMessageObject = null;
        boolean z2 = true;
        if (!z && this.sendPhotoType != 1) {
            z2 = false;
        }
        this.muteVideo = z2;
        this.compressionsCount = -1;
        this.rotationValue = 0;
        this.videoFramerate = 25;
        this.originalSize = new File(str).length();
        DispatchQueue dispatchQueue = Utilities.globalQueue;
        RunnableC668476 runnableC668476 = new RunnableC668476(str, i);
        this.currentLoadingVideoRunnable = runnableC668476;
        dispatchQueue.postRunnable(runnableC668476);
    }

    /* renamed from: org.telegram.ui.PhotoViewer$76 */
    /* loaded from: classes5.dex */
    public class RunnableC668476 implements Runnable {
        final /* synthetic */ int val$compressQuality;
        final /* synthetic */ String val$videoPath;

        RunnableC668476(String str, int i) {
            PhotoViewer.this = r1;
            this.val$videoPath = str;
            this.val$compressQuality = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (PhotoViewer.this.currentLoadingVideoRunnable != this) {
                return;
            }
            int videoBitrate = MediaController.getVideoBitrate(this.val$videoPath);
            final int[] iArr = new int[11];
            AnimatedFileDrawable.getVideoInfo(this.val$videoPath, iArr);
            boolean z = false;
            boolean z2 = iArr[10] != 0;
            PhotoViewer photoViewer = PhotoViewer.this;
            if (iArr[0] != 0 && (!z2 || iArr[9] != 0)) {
                z = true;
            }
            photoViewer.videoConvertSupported = z;
            PhotoViewer photoViewer2 = PhotoViewer.this;
            if (videoBitrate == -1) {
                videoBitrate = iArr[3];
            }
            photoViewer2.originalBitrate = photoViewer2.bitrate = videoBitrate;
            if (PhotoViewer.this.videoConvertSupported) {
                PhotoViewer photoViewer3 = PhotoViewer.this;
                photoViewer3.resultWidth = photoViewer3.originalWidth = iArr[1];
                PhotoViewer photoViewer4 = PhotoViewer.this;
                photoViewer4.resultHeight = photoViewer4.originalHeight = iArr[2];
                PhotoViewer photoViewer5 = PhotoViewer.this;
                photoViewer5.updateCompressionsCount(photoViewer5.originalWidth, PhotoViewer.this.originalHeight);
                PhotoViewer photoViewer6 = PhotoViewer.this;
                int i = this.val$compressQuality;
                if (i == -1) {
                    i = photoViewer6.selectCompression();
                }
                photoViewer6.selectedCompression = i;
                PhotoViewer.this.prepareRealEncoderBitrate();
                PhotoViewer.this.isH264Video = MediaController.isH264Video(this.val$videoPath);
            }
            if (PhotoViewer.this.currentLoadingVideoRunnable != this) {
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$76$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoViewer.RunnableC668476.this.lambda$run$0(this, iArr);
                }
            });
        }

        public /* synthetic */ void lambda$run$0(Runnable runnable, int[] iArr) {
            if (PhotoViewer.this.parentActivity == null || runnable != PhotoViewer.this.currentLoadingVideoRunnable) {
                return;
            }
            PhotoViewer.this.currentLoadingVideoRunnable = null;
            PhotoViewer.this.audioFramesSize = iArr[5];
            PhotoViewer.this.videoDuration = iArr[4];
            PhotoViewer.this.videoFramerate = iArr[7];
            PhotoViewer photoViewer = PhotoViewer.this;
            photoViewer.videoFramesSize = ((photoViewer.bitrate / 8) * PhotoViewer.this.videoDuration) / 1000.0f;
            if (PhotoViewer.this.videoConvertSupported) {
                PhotoViewer.this.rotationValue = iArr[8];
                PhotoViewer.this.updateWidthHeightBitrateForCompression();
                if (PhotoViewer.this.selectedCompression > PhotoViewer.this.compressionsCount - 1) {
                    PhotoViewer photoViewer2 = PhotoViewer.this;
                    photoViewer2.selectedCompression = photoViewer2.compressionsCount - 1;
                }
                PhotoViewer.this.compressItem.setState(PhotoViewer.this.compressionsCount > 1, PhotoViewer.this.muteVideo, Math.min(PhotoViewer.this.resultWidth, PhotoViewer.this.resultHeight));
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m100d("compressionsCount = " + PhotoViewer.this.compressionsCount + " w = " + PhotoViewer.this.originalWidth + " h = " + PhotoViewer.this.originalHeight + " r = " + PhotoViewer.this.rotationValue);
                }
                PhotoViewer.this.qualityChooseView.invalidate();
            } else {
                PhotoViewer.this.compressItem.setState(false, PhotoViewer.this.muteVideo, Math.min(PhotoViewer.this.resultWidth, PhotoViewer.this.resultHeight));
                PhotoViewer.this.compressionsCount = 0;
            }
            PhotoViewer.this.updateVideoInfo();
            PhotoViewer.this.updateMuteButton();
        }
    }

    public int selectCompression() {
        if (this.originalSize > 1048576000) {
            return this.compressionsCount - 1;
        }
        SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
        int i = this.compressionsCount;
        while (i < 5) {
            int i2 = globalMainSettings.getInt(String.format(Locale.US, "compress_video_%d", Integer.valueOf(i)), -1);
            if (i2 >= 0) {
                return Math.min(i2, 2);
            }
            i++;
        }
        return Math.min(2, Math.round(DownloadController.getInstance(this.currentAccount).getMaxVideoBitrate() / (100.0f / i)) - 1);
    }

    public void updateCompressionsCount(int i, int i2) {
        int max = Math.max(i, i2);
        if (max > 1280) {
            this.compressionsCount = 4;
        } else if (max > 854) {
            this.compressionsCount = 3;
        } else if (max > 640) {
            this.compressionsCount = 2;
        } else {
            this.compressionsCount = 1;
        }
    }

    public void updateAccessibilityOverlayVisibility() {
        if (this.playButtonAccessibilityOverlay != null) {
            int i = this.photoProgressViews[0].backgroundState;
            if (this.photoProgressViews[0].isVisible() && (i == 3 || i == 4 || i == 2 || i == 1)) {
                if (i == 3) {
                    this.playButtonAccessibilityOverlay.setContentDescription(LocaleController.getString("AccActionPlay", C3630R.string.AccActionPlay));
                } else if (i == 2) {
                    this.playButtonAccessibilityOverlay.setContentDescription(LocaleController.getString("AccActionDownload", C3630R.string.AccActionDownload));
                } else if (i == 1) {
                    this.playButtonAccessibilityOverlay.setContentDescription(LocaleController.getString("AccActionCancelDownload", C3630R.string.AccActionCancelDownload));
                } else {
                    this.playButtonAccessibilityOverlay.setContentDescription(LocaleController.getString("AccActionPause", C3630R.string.AccActionPause));
                }
                this.playButtonAccessibilityOverlay.setVisibility(0);
                return;
            }
            this.playButtonAccessibilityOverlay.setVisibility(4);
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // org.telegram.p042ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        public ListAdapter(Context context) {
            PhotoViewer.this = r1;
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (PhotoViewer.this.placeProvider == null || PhotoViewer.this.placeProvider.getSelectedPhotosOrder() == null) {
                return 0;
            }
            return PhotoViewer.this.placeProvider.getSelectedPhotosOrder().size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            PhotoPickerPhotoCell photoPickerPhotoCell = new PhotoPickerPhotoCell(this.mContext);
            photoPickerPhotoCell.checkFrame.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PhotoViewer$ListAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PhotoViewer.ListAdapter.this.lambda$onCreateViewHolder$0(view);
                }
            });
            return new RecyclerListView.Holder(photoPickerPhotoCell);
        }

        public /* synthetic */ void lambda$onCreateViewHolder$0(View view) {
            Object tag = ((View) view.getParent()).getTag();
            int indexOf = PhotoViewer.this.imagesArrLocals.indexOf(tag);
            if (indexOf >= 0) {
                int photoChecked = PhotoViewer.this.placeProvider.setPhotoChecked(indexOf, PhotoViewer.this.getCurrentVideoEditedInfo());
                boolean isPhotoChecked = PhotoViewer.this.placeProvider.isPhotoChecked(indexOf);
                if (indexOf == PhotoViewer.this.currentIndex) {
                    PhotoViewer.this.checkImageView.setChecked(-1, isPhotoChecked, true);
                }
                if (photoChecked >= 0) {
                    PhotoViewer.this.selectedPhotosAdapter.notifyItemRemoved(photoChecked);
                    if (photoChecked == 0) {
                        PhotoViewer.this.selectedPhotosAdapter.notifyItemChanged(0);
                    }
                }
                PhotoViewer.this.updateSelectedCount();
                return;
            }
            int photoUnchecked = PhotoViewer.this.placeProvider.setPhotoUnchecked(tag);
            if (photoUnchecked >= 0) {
                PhotoViewer.this.selectedPhotosAdapter.notifyItemRemoved(photoUnchecked);
                if (photoUnchecked == 0) {
                    PhotoViewer.this.selectedPhotosAdapter.notifyItemChanged(0);
                }
                PhotoViewer.this.updateSelectedCount();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            PhotoPickerPhotoCell photoPickerPhotoCell = (PhotoPickerPhotoCell) viewHolder.itemView;
            photoPickerPhotoCell.setItemWidth(AndroidUtilities.m102dp(85), i != 0 ? AndroidUtilities.m102dp(6) : 0);
            BackupImageView backupImageView = photoPickerPhotoCell.imageView;
            backupImageView.setOrientation(0, true);
            Object obj = PhotoViewer.this.placeProvider.getSelectedPhotos().get(PhotoViewer.this.placeProvider.getSelectedPhotosOrder().get(i));
            if (obj instanceof MediaController.PhotoEntry) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                photoPickerPhotoCell.setTag(photoEntry);
                photoPickerPhotoCell.videoInfoContainer.setVisibility(4);
                String str = photoEntry.thumbPath;
                if (str != null) {
                    backupImageView.setImage(str, null, this.mContext.getResources().getDrawable(C3630R.C3632drawable.nophotos));
                } else if (photoEntry.path != null) {
                    backupImageView.setOrientation(photoEntry.orientation, photoEntry.invert, true);
                    if (photoEntry.isVideo) {
                        photoPickerPhotoCell.videoInfoContainer.setVisibility(0);
                        photoPickerPhotoCell.videoTextView.setText(AndroidUtilities.formatShortDuration(photoEntry.duration));
                        backupImageView.setImage("vthumb://" + photoEntry.imageId + ":" + photoEntry.path, null, this.mContext.getResources().getDrawable(C3630R.C3632drawable.nophotos));
                    } else {
                        backupImageView.setImage("thumb://" + photoEntry.imageId + ":" + photoEntry.path, null, this.mContext.getResources().getDrawable(C3630R.C3632drawable.nophotos));
                    }
                } else {
                    backupImageView.setImageResource(C3630R.C3632drawable.nophotos);
                }
                photoPickerPhotoCell.setChecked(-1, true, false);
                photoPickerPhotoCell.checkBox.setVisibility(0);
            } else if (obj instanceof MediaController.SearchImage) {
                MediaController.SearchImage searchImage = (MediaController.SearchImage) obj;
                photoPickerPhotoCell.setTag(searchImage);
                photoPickerPhotoCell.setImage(searchImage);
                photoPickerPhotoCell.videoInfoContainer.setVisibility(4);
                photoPickerPhotoCell.setChecked(-1, true, false);
                photoPickerPhotoCell.checkBox.setVisibility(0);
            }
        }
    }

    /* renamed from: org.telegram.ui.PhotoViewer$FirstFrameView */
    /* loaded from: classes5.dex */
    public class FirstFrameView extends ImageView {
        private VideoPlayer currentVideoPlayer;
        private ValueAnimator fadeAnimator;
        private final TimeInterpolator fadeInterpolator;
        private boolean gettingFrame;
        private int gettingFrameIndex;
        private boolean gotError;
        private boolean hasFrame;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FirstFrameView(Context context) {
            super(context);
            PhotoViewer.this = r1;
            this.gettingFrameIndex = 0;
            this.gettingFrame = false;
            this.hasFrame = false;
            this.gotError = false;
            this.fadeInterpolator = CubicBezierInterpolator.EASE_IN;
            setAlpha(BitmapDescriptorFactory.HUE_RED);
        }

        public void clear() {
            this.hasFrame = false;
            this.gotError = false;
            if (this.gettingFrame) {
                this.gettingFrameIndex++;
                this.gettingFrame = false;
            }
            setImageResource(17170445);
        }

        public void checkFromPlayer(VideoPlayer videoPlayer) {
            if (this.currentVideoPlayer != videoPlayer) {
                this.gotError = false;
                clear();
            }
            if (videoPlayer != null && !videoPlayer.isHDR()) {
                long duration = videoPlayer.getDuration() - videoPlayer.getCurrentPosition();
                if (!this.hasFrame && !this.gotError && !this.gettingFrame && ((float) duration) < 5250.0f) {
                    final Uri currentUri = videoPlayer.getCurrentUri();
                    final int i = this.gettingFrameIndex + 1;
                    this.gettingFrameIndex = i;
                    Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.PhotoViewer$FirstFrameView$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            PhotoViewer.FirstFrameView.this.lambda$checkFromPlayer$2(currentUri, i);
                        }
                    });
                    this.gettingFrame = true;
                }
            }
            this.currentVideoPlayer = videoPlayer;
        }

        public /* synthetic */ void lambda$checkFromPlayer$2(Uri uri, final int i) {
            try {
                File file = new File(uri.getPath());
                int i2 = UserConfig.selectedAccount;
                Point point = AndroidUtilities.displaySize;
                AnimatedFileDrawable animatedFileDrawable = new AnimatedFileDrawable(file, true, 0L, 0, null, null, null, 0L, i2, false, point.x, point.y, null);
                final Bitmap frameAtTime = animatedFileDrawable.getFrameAtTime(0L);
                animatedFileDrawable.recycle();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$FirstFrameView$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhotoViewer.FirstFrameView.this.lambda$checkFromPlayer$0(i, frameAtTime);
                    }
                });
            } catch (Throwable th) {
                FileLog.m97e(th);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PhotoViewer$FirstFrameView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhotoViewer.FirstFrameView.this.lambda$checkFromPlayer$1();
                    }
                });
            }
        }

        public /* synthetic */ void lambda$checkFromPlayer$0(int i, Bitmap bitmap) {
            if (i == this.gettingFrameIndex) {
                setImageBitmap(bitmap);
                this.hasFrame = true;
                this.gettingFrame = false;
            }
        }

        public /* synthetic */ void lambda$checkFromPlayer$1() {
            this.gotError = true;
        }

        public void updateAlpha() {
            if (PhotoViewer.this.videoPlayer != null && PhotoViewer.this.videoPlayer.getDuration() != C0479C.TIME_UNSET) {
                long max = Math.max(0L, PhotoViewer.this.videoPlayer.getDuration() - PhotoViewer.this.videoPlayer.getCurrentPosition());
                float max2 = 1.0f - Math.max(Math.min(((float) max) / 250.0f, 1.0f), (float) BitmapDescriptorFactory.HUE_RED);
                if (max2 > BitmapDescriptorFactory.HUE_RED) {
                    if (PhotoViewer.this.videoPlayer.isPlaying()) {
                        if (this.fadeAnimator == null) {
                            ValueAnimator ofFloat = ValueAnimator.ofFloat(max2, 1.0f);
                            this.fadeAnimator = ofFloat;
                            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.PhotoViewer$FirstFrameView$$ExternalSyntheticLambda0
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    PhotoViewer.FirstFrameView.this.lambda$updateAlpha$3(valueAnimator);
                                }
                            });
                            this.fadeAnimator.setDuration(max);
                            this.fadeAnimator.setInterpolator(this.fadeInterpolator);
                            this.fadeAnimator.start();
                            setAlpha(max2);
                            return;
                        }
                        return;
                    }
                    ValueAnimator valueAnimator = this.fadeAnimator;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                        this.fadeAnimator = null;
                    }
                    setAlpha(max2);
                    return;
                }
                ValueAnimator valueAnimator2 = this.fadeAnimator;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                    this.fadeAnimator = null;
                }
                setAlpha(BitmapDescriptorFactory.HUE_RED);
                return;
            }
            ValueAnimator valueAnimator3 = this.fadeAnimator;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
                this.fadeAnimator = null;
            }
            setAlpha(BitmapDescriptorFactory.HUE_RED);
        }

        public /* synthetic */ void lambda$updateAlpha$3(ValueAnimator valueAnimator) {
            setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public int getThemedColor(int i) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider != null) {
            return resourcesProvider.getColor(i);
        }
        return Theme.getColor(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:559:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:570:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:593:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:596:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:600:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:605:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:615:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:623:0x0390 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:630:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:631:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:634:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:641:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:645:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:646:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:649:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:651:0x0455  */
    /* JADX WARN: Removed duplicated region for block: B:663:0x04a3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:687:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:708:0x06b5  */
    /* JADX WARN: Removed duplicated region for block: B:713:0x06d9  */
    /* JADX WARN: Removed duplicated region for block: B:735:0x0702  */
    /* JADX WARN: Removed duplicated region for block: B:773:0x0785  */
    /* JADX WARN: Removed duplicated region for block: B:776:0x0790  */
    /* JADX WARN: Removed duplicated region for block: B:784:0x07a8  */
    /* JADX WARN: Removed duplicated region for block: B:788:0x07ca  */
    /* JADX WARN: Removed duplicated region for block: B:792:0x07d6  */
    /* JADX WARN: Removed duplicated region for block: B:813:0x081d  */
    /* JADX WARN: Removed duplicated region for block: B:822:0x0854  */
    /* JADX WARN: Removed duplicated region for block: B:825:0x085e  */
    /* JADX WARN: Removed duplicated region for block: B:836:0x08ab  */
    /* JADX WARN: Removed duplicated region for block: B:839:0x08ea  */
    /* JADX WARN: Removed duplicated region for block: B:842:0x08f2  */
    /* JADX WARN: Removed duplicated region for block: B:851:0x090c  */
    /* JADX WARN: Removed duplicated region for block: B:852:0x0912  */
    /* JADX WARN: Removed duplicated region for block: B:854:0x0918  */
    /* JADX WARN: Removed duplicated region for block: B:869:0x0941  */
    /* JADX WARN: Removed duplicated region for block: B:870:0x094e  */
    /* JADX WARN: Removed duplicated region for block: B:873:0x0956  */
    /* JADX WARN: Removed duplicated region for block: B:884:0x0987  */
    /* JADX WARN: Removed duplicated region for block: B:885:0x0a2b  */
    /* JADX WARN: Removed duplicated region for block: B:888:0x0a35  */
    /* JADX WARN: Removed duplicated region for block: B:890:0x0a3f  */
    /* JADX WARN: Removed duplicated region for block: B:895:0x0aa3  */
    /* JADX WARN: Removed duplicated region for block: B:897:0x0aa8  */
    /* JADX WARN: Removed duplicated region for block: B:900:0x0aaf  */
    /* JADX WARN: Removed duplicated region for block: B:904:0x0abe  */
    /* JADX WARN: Removed duplicated region for block: B:907:0x0b07  */
    /* JADX WARN: Removed duplicated region for block: B:914:0x0b86  */
    /* JADX WARN: Removed duplicated region for block: B:943:0x0c3c  */
    /* JADX WARN: Removed duplicated region for block: B:946:0x0c4b  */
    /* JADX WARN: Removed duplicated region for block: B:954:0x0cbc  */
    /* JADX WARN: Removed duplicated region for block: B:964:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawCaptionBlur(android.graphics.Canvas r45, org.telegram.p042ui.Components.BlurringShader.StoryBlurDrawer r46, int r47, int r48, boolean r49, boolean r50, boolean r51) {
        /*
            Method dump skipped, instructions count: 3340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.PhotoViewer.drawCaptionBlur(android.graphics.Canvas, org.telegram.ui.Components.BlurringShader$StoryBlurDrawer, int, int, boolean, boolean, boolean):void");
    }

    public void invalidateBlur() {
        if (this.animationInProgress != 0) {
            return;
        }
        CaptionPhotoViewer captionPhotoViewer = this.captionEdit;
        if (captionPhotoViewer != null) {
            captionPhotoViewer.invalidateBlur();
        }
        VideoTimelinePlayView videoTimelinePlayView = this.videoTimelineView;
        if (videoTimelinePlayView != null) {
            videoTimelinePlayView.invalidateBlur();
        }
        FrameLayoutDrawer frameLayoutDrawer = this.containerView;
        if (frameLayoutDrawer != null) {
            frameLayoutDrawer.invalidate();
        }
    }
}
